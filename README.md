# NYPD-Motor-Vehicle-Collisions
The objective of the NYPD Motor Vehicle Collisions project is to identify the root cause of vehicle collisions 

# How to Use
The Data file has been compressed as NYPD.tar.bz2. 
First untar the file using the command 
```bash
tar xvjf file.tar.bz2
```
Update the path of NYPD2.csv in nypd.sql file.

I have used PyMySQL for this project.
You can install PyMySQL using the following command
```bash
conda install PyMySQL
```
Create a database named Project or update the project name in the code. Than create a table named ACCIDENT_DATA and populate the data with the csv data using the following command.
```bash
mysqlimport --local --fields-terminated-by=, --fields-enclosed-by='\"' --ignore-lines=1 –u <username> -p <dbname> <filename>
```
