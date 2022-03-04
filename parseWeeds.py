#import libs
import mariadb
import sys
import os
import pandas as pd
import json

#parse config settings from config.json
with open('config.json', 'r') as f:
    config = json.load(f)

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user=config["user"],
        password=config["password"],
        host=config["host"],
        port=config["port"],
        database=config["database"]
    )
    print("Success: connected to MariaDB Platform")
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

#get cursor object 
curse = conn.cursor()
conn.autocommit = False

#setup directory pointer
directory_str = config["directory_str"]
directory = os.fsencode(directory_str)

#iterate over all files in directory ending in .WY3 to insert header into cweeds.station table
for file in os.listdir(directory):
    filename = os.fsdecode(file)
    if filename.endswith(".WY3"): 
        with open(directory_str+"/"+filename) as f:
            #header into a string
            meta = f.readline()
        #clean up the string
        meta = meta.strip('\n')
        meta = meta.strip()
        print("Inserting: "+ meta +" into cweeds.station")
        meta = meta.split(',')
        #push into the station table
        try:
            curse.execute("INSERT INTO station (horz_version, Location_name, province, country, station_id, lat, lng, utc_offset, elev) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", (meta))
        except mariadb.Error as e:
            print(f"Error: {e}")
        continue
    else:
        continue

#commit the inserts
conn.commit()

#setup column slices for .WY3 fwf
col_slices = [(0, 7), (8, 18), (18, 22), (22, 26), (28, 32), (34, 38), (40, 44), (45, 49), (50, 54), (55, 59), (60, 62), (63, 67), (68, 72), (73, 77), (78, 86), (87, 92), (93, 97), (98, 102), (103, 106), (107, 111), 
  (112, 114), (115, 117), (118, 119)]

#iterate over all files in directory ending in .WY3 to insert their data into cweeds.reading table
for file in os.listdir(directory):
    filename = os.fsdecode(file)
    if filename.endswith(".WY3"): 
        with open(directory_str+"/"+filename) as currentfile:
            #status console
            print("Processing : "+filename)
            #load into dataframe
            data = pd.read_fwf(currentfile, skiprows=0, colspecs=col_slices)

            #name data columns
            data.columns = ['001','003','101','102','103','104','105','106','107','108','110','201','202','203','204','205','206','207','208','209','210','211','212']
            
            #convert date column into string
            data['003'] = data['003'].astype(str)

            #correct date format using regex (corrects midnight from 24 to 00)
            data['003'] = data['003'].replace(to_replace=r'24$', value='00', regex=True)
 
            #coerce into ISO datetime format
            data['003'] = pd.to_datetime(data['003'], format='%Y%m%d%H', errors='coerce')

            #convert back into string
            data['003'] = data['003'].astype(str)

            #status console
            print("Creating CSV : "+filename)
            data.to_csv('temp.csv', mode='w', index=False, header=False)
            
            #status console
            print("Inserting into "+config["database"]+".reading: "+filename)
            #push csv to database
            try:
                curse.execute("LOAD DATA LOCAL INFILE 'temp.csv' INTO TABLE reading FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (`001`,`003`,`101`,`102`,`103`,`104`,`105`,`106`,`107`,`108`,`110`,`201`,`202`,`203`,`204`,`205`,`206`,`207`,`208`,`209`,`210`,`211`,`212`)")
                conn.commit()
                
            except mariadb.Error as e:
                print(f"Error: {e}")
                        
            #cleanup temp csv file and dataframe
            os.remove('temp.csv')
            del data
        continue    
                
    else:
        continue

try:
    conn.close()
    print("Connection to MariaDB Platform Closed")
except mariadb.Error as err:
    print(f"Error closing connection to MariaDB Platform: {err}")
    sys.exit(1)