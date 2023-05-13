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
INSERT INTO `climb` (`id`, `zone`, `date`, `type`, `protection`, `rating`, `location`, `first_ascentionist`, `notes`, `image`, `grade`, `name`) VALUES (1, 'Seal Rock', '2018-05-15', 'sport', 'bolts', 3, '	39.9683, -105.288', 'Matt Sammet', 'incredible technical climb, would be harder if it were not for multiple no hands rests', NULL, '5.13c', 'Choose Life');

COMMIT;

