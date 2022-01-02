USE noruc_1;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`(
	`ur_id` INT NOT NULL,
    `fname` VARCHAR(60) NOT NULL,
    `lname` VARCHAR(60) NOT NULL,
    PRIMARY KEY(`ur_id`)
);

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`(
	`dept_id` INT NOT NULL,
    `name` VARCHAR(60) NOT NULL,
    PRIMARY KEY(`dept_id`)
);

DROP TABLE IF EXISTS `affiliations`;
CREATE TABLE `affiliations`(
	`ur_id` INT NOT NULL,
    `dept_id` INT NOT NULL,
    `position` VARCHAR(60) DEFAULT NULL,
    PRIMARY KEY(`ur_id`,`dept_id`),
    CONSTRAINT `affl_fk_users` FOREIGN KEY (`ur_id`) REFERENCES `users` (`ur_id`),
    CONSTRAINT `affl_fk_depts` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`)
);

DROP TABLE IF EXISTS `models`;
CREATE TABLE `models`(
	`model_id` INT NOT NULL,
    `name` VARCHAR(60) NOT NULL,
    `training` BOOLEAN NOT NULL,
    PRIMARY KEY(`model_id`)
);

DROP TABLE IF EXISTS `auth_users`;
CREATE TABLE `auth_users`(
	`ur_id` INT NOT NULL,
    `model_id` INT NOT NULL,
    PRIMARY KEY(`ur_id`,`model_id`),
    CONSTRAINT `authusers_fk_users` FOREIGN KEY (`ur_id`) REFERENCES `users` (`ur_id`),
    CONSTRAINT `authusers_fk_models` FOREIGN KEY (`model_id`) REFERENCES `models` (`model_id`)
);

DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices`(
	`device_id` INT NOT NULL,
    `model_id` INT NOT NULL,
    PRIMARY KEY(`device_id`),
    CONSTRAINT `devices_fk_models` FOREIGN KEY (`model_id`) REFERENCES `models` (`model_id`)
);

DROP TABLE IF EXISTS `lending_rec`;
CREATE TABLE `lending_rec`(
	`loan_id` INT NOT NULL,
    `device_id` INT NOT NULL,
    `ur_id` INT NOT NULL,
    `from` DATE NOT NULL,
    `until` DATE NOT NULL,
    PRIMARY KEY(`loan_id`),
    CONSTRAINT `lending_fk_users` FOREIGN KEY (`ur_id`) REFERENCES `users` (`ur_id`),
    CONSTRAINT `lending_fk_devices` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`)
);



    
    
