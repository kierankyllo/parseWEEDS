CREATE USER 'agent'@'localhost' IDENTIFIED BY 'YOUR_PASSWORD_HERE';

CREATE DATABASE cweeds;

USE cweeds;

GRANT ALL PRIVILEGES ON cweeds TO 'agent'@'localhost';

CREATE TABLE station (
/*meta data*/
 	station_id VARCHAR(80) NOT NULL, 
 	modified TIMESTAMP DEFAULT now() ON UPDATE now(),

/*data*/
 	horz_version VARCHAR(80) NOT NULL,
 	Location_name VARCHAR(80) NOT NULL,
 	province VARCHAR(80) NOT NULL,
 	country VARCHAR(80) NOT NULL,
 	lat VARCHAR(80) NOT NULL,
 	lng VARCHAR(80) NOT NULL,
    elev VARCHAR(80) NOT NULL,
    utc_offset VARCHAR(80) NOT NULL,

/*keys*/
PRIMARY KEY (station_id)
);

GRANT ALL PRIVILEGES ON cweeds.station TO 'agent'@'localhost';

CREATE TABLE reading (
/*meta data*/
 	reading_id BIGINT NOT NULL AUTO_INCREMENT, 
 	modified TIMESTAMP DEFAULT now() ON UPDATE now(),
/*data*/
 	`001` VARCHAR(80) NOT NULL,
 	`003` DATETIME NOT NULL,
 	`101` INT NOT NULL,
 	`102` INT NOT NULL,
 	`103` INT NOT NULL,
 	`104` INT NOT NULL,
    `105` INT NOT NULL, 
    `106` INT NOT NULL,
    `107` INT NOT NULL,
    `108` INT NOT NULL,
    `110` INT NOT NULL,
    `201` INT NOT NULL,
    `202` INT NOT NULL,
    `203` INT NOT NULL,
    `204` INT NOT NULL,
    `205` INT NOT NULL,
    `206` INT NOT NULL,
    `207` INT NOT NULL,
    `208` INT NOT NULL,
    `209` INT NOT NULL,
    `210` INT NOT NULL,
    `211` INT NOT NULL,
    `212` INT NOT NULL,
/*keys*/
 
FOREIGN KEY (`001`) REFERENCES station (station_id) ON UPDATE CASCADE ON DELETE RESTRICT, 
PRIMARY KEY (reading_id)
);

GRANT ALL PRIVILEGES ON cweeds.reading TO 'agent'@'localhost';
