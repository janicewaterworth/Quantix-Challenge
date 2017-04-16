USE sql3168694;

DROP TABLE IF EXISTS task1;

# Make the table in SQL server
CREATE TABLE task1 (
name VARCHAR(10) NOT NULL,
day INT(2) NOT NULL,
temp DECIMAL(6,1),
PRIMARY KEY (name)
) ;

# Load data from local CSV file, use LOCAL to avoid grant permissions
LOAD DATA LOCAL INFILE 'C:\\Development\\tabledata.csv'
	INTO TABLE task1
	FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;

