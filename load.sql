SET GLOBAL local_infile = true;
SET SQL_SAFE_UPDATES = 0; 
#SHOW GLOBAL VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE '~noruc/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE '~noruc/departments.csv'
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE '~noruc/affiliations.csv'
INTO TABLE affiliations
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE '~noruc/models.csv'
INTO TABLE models
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE '~noruc/auth-users.csv'
INTO TABLE auth_users
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE '~noruc/devices.csv'
INTO TABLE devices
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 


LOAD DATA LOCAL INFILE '~noruc/lending-recs.csv'
INTO TABLE lending_rec
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS; 







