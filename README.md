# parseWEEDS
CWEEDS Environmental Engineering Dataset Parsing Utility

This utility will parse the contents of the Canadian Weather Energy and Engineering Dataset .WY3 files into two mariadb tables.

WY3 files are available here from the government of Canada https://drive.google.com/drive/folders/1sJmww8PBoFmnrUQUJXb1Vc5vv3kxG-ac

All WY3 files must be located in the same folder to be correctly parsed. One folder for all .WY3 files adjacent to the repository files is ideal.

### VM Requirements:
Ubuntu Linux 20.04.4 LTS, 4GB RAM

libmariadb3

libmariadb-dev

mariadb-server

### Python 3 Packages:
pandas

mariadb

## Installation and Operation:

### Install required packages:
sudo apt install libmariadb3 libmariadb-dev

sudo apt install mariadb-server

### If using WSL locally
sudo /etc/init.d/mysql start

### Install mariadb server
sudo mysql_secure_installation

### Copy repository files

### Edit cweeds.sql to add your custom password for the database

CREATE USER 'agent'@'localhost' IDENTIFIED BY 'YOUR_PASSWORD_HERE';

### Login to the database and run the setup query file
mysql
source cweeds.sql;

### Edit config.json file to add your custom password for the database 

    "user": "agent",
    "password": "PASS",
    "host": "localhost",
    "port": 3306,
    "database": "cweeds",
    "directory_str": "/path/to/WY3/files"

## Execute the python Script
python3 parseWeeds.py
