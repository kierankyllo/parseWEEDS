# parseWEEDS
CWEEDS Environmental Engineering Dataset Parsing Utility

This utility will parse the contents of the Canadian Weather Energy and Engineering Dataset .WY3 files into two mariadb tables, 'station' and 'reading'. 

WY3 files are available here from the government of Canada https://drive.google.com/drive/folders/1sJmww8PBoFmnrUQUJXb1Vc5vv3kxG-ac

All WY3 files must be located in the same folder to be correctly parsed. One folder for all .WY3 files adjacent to the repository files is ideal.

### VM Requirements:
Ubuntu Linux 20.04.4 LTS, 4GB RAM

libmariadb3

libmariadb-dev

mariadb-server

git

wget

unzip

python3

### Python 3 Packages:
pandas

mariadb

## Installation:

### Install required packages:
sudo apt install libmariadb3 libmariadb-dev git python3-pip python3 mariadb-server wget

### If using WSL locally
sudo /etc/init.d/mysql start

### Run mysql secure installation
sudo mysql_secure_installation

### Copy repository files
git clone https://github.com/kierankyllo/parseWEEDS.git

### Edit following line in the cweeds.sql file to add your custom password for the database
CREATE USER 'agent'@'localhost' IDENTIFIED BY 'YOUR_PASSWORD_HERE';

### Login to the database and run the setup query file
sudo mysql
source cweeds.sql;
exit;

### Edit config.json file to add your custom password for the database 

    "user": "agent",
    "password": "YOUR_PASSWORD_HERE",
    "host": "localhost",
    "port": 3306,
    "database": "cweeds",
    "directory_str": "/path/to/WY3/files"

## Operation
python3 parseWeeds.py

## Files
getWeeds.sh - bash script to pull down the WY3 data to local

parseWeeds.py - parses WY3 files into station and reading tables

cweeds.sql - creates database user and empty tables

config.json - configuration file for database connection

test.sql - carries out a test query selecting the weather stations within 100Km of Ottawa and ordering by distance ascending
