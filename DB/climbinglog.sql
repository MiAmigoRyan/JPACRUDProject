-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema climbinglogdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `climbinglogdb` ;

-- -----------------------------------------------------
-- Schema climbinglogdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `climbinglogdb` DEFAULT CHARACTER SET utf8 ;
USE `climbinglogdb` ;

-- -----------------------------------------------------
-- Table `climb`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `climb` ;

CREATE TABLE IF NOT EXISTS `climb` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `zone` VARCHAR(100) NULL,
  `date` DATE NULL,
  `type` VARCHAR(45) NULL,
  `protection` VARCHAR(45) NULL,
  `rating` INT NULL,
  `location` VARCHAR(45) NULL,
  `first_ascentionist` VARCHAR(45) NULL,
  `notes` VARCHAR(2000) NULL,
  `image` VARCHAR(2000) NULL,
  `grade` VARCHAR(5) NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS climbuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'climbuser'@'localhost' IDENTIFIED BY 'climbuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'climbuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `climb`
-- -----------------------------------------------------
START TRANSACTION;
USE `climbinglogdb`;
INSERT INTO `climb` (`id`, `zone`, `date`, `type`, `protection`, `rating`, `location`, `first_ascentionist`, `notes`, `image`, `grade`, `name`) VALUES (1, 'Seal Rock', '2018-05-15', 'sport', 'bolts', 3, '	39.9683, -105.288', 'Matt Sammet', 'incredible technical climb, would be harder if it were not for multiple no hands rests', 'https://mountainproject.com/assets/photos/climb/108538003_large_1494287975.jpg?cache=1667484266', '5.13c', 'Choose Life');
INSERT INTO `climb` (`id`, `zone`, `date`, `type`, `protection`, `rating`, `location`, `first_ascentionist`, `notes`, `image`, `grade`, `name`) VALUES (2, 'Lower Chaos', '2006-06-19', 'boulder', 'pads', 3, '	40.30479, -105.66069', 'Unknown', 'Too tall to fall, easier than the grade suggests, a serious outing none the less', 'https://mountainproject.com/assets/photos/climb/106388915_large_1494104144.jpg?cache=1251135245', 'v5', 'Skyscraper');
INSERT INTO `climb` (`id`, `zone`, `date`, `type`, `protection`, `rating`, `location`, `first_ascentionist`, `notes`, `image`, `grade`, `name`) VALUES (3, 'Hueco Tanks', '2018-11-22', 'boulder', 'pads', 3, '31.9108, -106.0372', 'Unknown', 'beuatiful holds fun finish', 'https://www.8a.nu/crags/bouldering/united-states/hueco-tanks/gallery?imageId=93941', 'v9', 'The Egg');
INSERT INTO `climb` (`id`, `zone`, `date`, `type`, `protection`, `rating`, `location`, `first_ascentionist`, `notes`, `image`, `grade`, `name`) VALUES (4, 'Red Rocks', '2019-04-15', 'traditional', 'traditional', 3, '36.11139, -115.49615\n', 'Joe Herbst & Larry Hamilton', 'one of north americas best of the grade!!! a must do for any capable party', 'https://mountainproject.com/assets/photos/climb/111731112_large_1494301921.jpg?cache=1680064931', '5.12', 'The Original Route');
INSERT INTO `climb` (`id`, `zone`, `date`, `type`, `protection`, `rating`, `location`, `first_ascentionist`, `notes`, `image`, `grade`, `name`) VALUES (5, 'Gorges Du Verdon', '2017-07-22', 'sport', 'bolts', 3, '	43.7463, 6.3724', 'unknown', 'hard, technical, comitting, and scary what\'s not to love!', 'https://en.wikipedia.org/wiki/Free_solo_climbing#/media/File:Alain-robert-wikipedia.jpg', '5.13', 'Polpot');

COMMIT;

