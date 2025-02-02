-- MySQL Script generated by MySQL Workbench
-- Fri Jun 28 12:44:58 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema education
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema education
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `education` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `education` ;

-- -----------------------------------------------------
-- Table `education`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `education`.`student` (
  `Id` INT NOT NULL,
  `FirstName` VARCHAR(50) NULL DEFAULT NULL,
  `LastName` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `education`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `education`.`address` (
  `Id` INT NOT NULL,
  `StreetNumber` INT NULL DEFAULT NULL,
  `Street` VARCHAR(100) NULL DEFAULT NULL,
  `City` VARCHAR(100) NULL DEFAULT NULL,
  `StudentId` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `StudentId` (`StudentId` ASC) VISIBLE,
  CONSTRAINT `address_ibfk_1`
    FOREIGN KEY (`StudentId`)
    REFERENCES `education`.`student` (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `education`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `education`.`course` (
  `Id` INT NOT NULL,
  `Subject` VARCHAR(100) NULL DEFAULT NULL,
  `Credits` INT NULL DEFAULT NULL,
  `Code` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `education`.`studentcourse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `education`.`studentcourse` (
  `StudentId` INT NOT NULL,
  `CourseId` INT NOT NULL,
  PRIMARY KEY (`StudentId`, `CourseId`),
  INDEX `CourseId` (`CourseId` ASC) VISIBLE,
  CONSTRAINT `studentcourse_ibfk_1`
    FOREIGN KEY (`StudentId`)
    REFERENCES `education`.`student` (`Id`),
  CONSTRAINT `studentcourse_ibfk_2`
    FOREIGN KEY (`CourseId`)
    REFERENCES `education`.`course` (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
