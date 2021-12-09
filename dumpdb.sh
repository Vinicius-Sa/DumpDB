#!/bin/bash
#scrip to dump db
  
if [ $# -eq 0 ]:then
    echo "Usage $0 <database_name>"
    exit 255
    fi
DBNAME=$1
mysqldump -u root -p $1 > /var/log/script_database.log
