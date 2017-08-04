CREATE DATABASE IF NOT EXISTS `curriculum` DEFAULT CHARACTER SET latin1;

USE `curriculum`;

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `posts`;
DROP TABLE IF EXISTS `comments`;


CREATE TABLE `users` (
	`user_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_first_name` VARCHAR(50) NOT NULL,
    `user_last_name` VARCHAR(50) NOT NULL,
    `user_gender` VARCHAR(50) NOT NULL
    /* email and password should go in this too :D */
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `users`
ADD `user_screen_name` VARCHAR(50) NOT NULL AFTER `user_last_name`;   
    
INSERT  INTO `users`(`user_first_name`, `user_last_name`, `user_screen_name`, `user_gender`) values 
	('Clara', 'Winesce','saucerg123','F'),
	('Troy', 'Winesce','barbogg','M'),
	('Keter', 'Sicip','too_dangerousX','M'),
    ('Sinna', 'Winsler','swinswins','F'),
    ('Caleb', 'Smith','1applesforfree2','M'),
    ('Sarah', 'Baker','BEEtrue','F'),
    ('Mark', 'Aurelius','sableyeman.pkmn','M');
   
	
CREATE TABLE `posts` (
	`post_name` VARCHAR(50) NOT NULL,
    `post_datetime` DATETIME NOT NULL,
    `user_id` INT NOT NULL,
    `post_content` VARCHAR(2000) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT  INTO `posts`(`post_name`, `post_datetime`, `user_id`, `post_content`) values 
	('sauce1', '2017-7-28 3:40:00','2', ''),
    ('sauce1', '2017-7-28 3:40:00','5', ''),
    ('sauce1', '2017-7-28 3:40:00','7', ''),
    ('sauce1', '2017-7-28 3:40:00','1', ''),
    ('sauce1', '2017-7-28 3:40:00','3', ''),
    ('sauce1', '2017-7-28 3:40:00','4', ''),
    ('sauce1', '2017-7-28 3:40:00','2', ''),
    ('sauce1', '2017-7-28 3:40:00','5', ''),
    ('sauce1', '2017-7-28 3:40:00','6', ''),
    ('sauce1', '2017-7-28 3:40:00','6', ''),
    ('sauce1', '2017-7-28 3:40:00','1', ''),
    ('sauce1', '2017-7-28 3:40:00','2', ''),
    ('sauce1', '2017-7-28 3:40:00','7', ''),
    ('sauce1', '2017-7-28 3:40:00','2', ''),
    ('sauce1', '2017-7-28 3:40:00','7', ''),
    ('sauce1', '2017-7-28 3:40:00','5', ''),
    ('sauce1', '2017-7-28 3:40:00','5', ''),
    ('sauce1', '2017-7-28 3:40:00','4', ''),
    ('sauce1', '2017-7-28 3:40:00','2', ''),
    ('sauce1', '2017-7-28 3:40:00','3', ''),
    ('sauce1', '2017-7-28 3:40:00','4', ''),
    ('sauce1', '2017-7-28 3:40:00','6', ''),
    ('sauce1', '2017-7-28 3:40:00','3', ''),
    ('sauce1', '2017-7-28 3:40:00','2', '');


CREATE TABLE `comments` (
	`user_id` INT NOT NULL,
	`post_name` VARCHAR(50) NOT NULL,
    `comment_content` VARCHAR(400) NOT NULL,
    `comment_score` INT NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

