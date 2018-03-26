
CREATE TABLE IF NOT EXISTS ACCIDENT_DATAS(
	DATES varchar(50),
    TIME time,
    BOROUGH varchar(64),
    ZIP_CODE INT,
	LATITUDE FLOAT,
    LONGITUDE FLOAT,
    ON_STREET_NAME varchar(100),
    CROSS_STREET_NAME varchar(100),
    OFF_STREET_NAME varchar(100),
    NUMBER_OF_PERSONS_INJURED INT, 
    NUMBER_OF_PERSONS_KILLED INT,
	NUMBER_OF_PEDESTRIANS_INJURED INT,
    NUMBER_OF_PEDESTRIANS_KILLED INT,
	NUMBER_OF_CYCLIST_INJURED INT,
    NUMBER_OF_CYCLIST_KILLED INT,
	NUMBER_OF_MOTORIST_INJURED INT, 
    NUMBER_OF_MOTORIST_KILLED INT,
	CONTRIBUTING_FACTOR_VEHICLE_1 varchar(100), 
    CONTRIBUTING_FACTOR_VEHICLE_2 varchar(100),
	CONTRIBUTING_FACTOR_VEHICLE_3 varchar(100),
    CONTRIBUTING_FACTOR_VEHICLE_4 varchar(100),
	CONTRIBUTING_FACTOR_VEHICLE_5 varchar(100),
    UNIQUE_KEY INT, 
    VEHICLE_TYPE_CODE_1 varchar(100),
	VEHICLE_TYPE_CODE_2 varchar(100),
    VEHICLE_TYPE_CODE_3 varchar(100),
    VEHICLE_TYPE_CODE_4 varchar(100),
    VEHICLE_TYPE_CODE_5 varchar(100),
  PRIMARY KEY(UNIQUE_KEY)
  );
LOAD DATA LOCAL INFILE '/home/karan/Downloads/EAS503/Project/NYPD2.csv' 

INTO TABLE  ACCIDENT_DATAS FIELDS TERMINATED
 BY ',' ESCAPED
 BY '"' 
 IGNORE 1 LINES;
 
UPDATE ACCIDENT_DATAS SET DATES = STR_TO_DATE(DATES, '%c/%e/%Y %H:%i');
ALTER TABLE ACCIDENT_DATAS MODIFY DATES date;

SET SQL_SAFE_UPDATES = 0;
