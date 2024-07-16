#!/bin/bash
 
# MySQL credentials
user="vendure"
password="Mahadeva@5394"
db="vendure_2024"
 
# Create a variable with the command to list all tables
tables=$(mysql -u $user -p$password -Nse 'SHOW TABLES' $db)
 
# Loop through the tables and drop each one
for table in $tables; do
    echo "Dropping $table from $db..."
    mysql -u $user -p$password -e "DROP TABLE $table" $db
done
 
echo "All tables dropped from $db."