-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Banking
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Banking` ;

-- -----------------------------------------------------
-- Schema Banking
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Banking` DEFAULT CHARACTER SET utf8 ;
USE `Banking` ;

-- -----------------------------------------------------
-- Table `Banking`.`tran_detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Banking`.`tran_detail` ;

CREATE TABLE IF NOT EXISTS `Banking`.`tran_detail` (
  `tnumber` VARCHAR(6) NULL,
  `acnumber` VARCHAR(6) NULL,
  `dot` DATE NULL,
  `medium_of_transaction` VARCHAR(20) NULL,
  `transaction_type` VARCHAR(20) NULL,
  `transaction_amount` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Banking`.`branch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Banking`.`branch` ;

CREATE TABLE IF NOT EXISTS `Banking`.`branch` (
  `bid` VARCHAR(6) NULL,
  `bname` VARCHAR(30) NULL,
  `bcity` VARCHAR(30) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Banking`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Banking`.`customer` ;

CREATE TABLE IF NOT EXISTS `Banking`.`customer` (
  `custid` VARCHAR(6) NULL,
  `fname` VARCHAR(30) NULL,
  `m name` VARCHAR(30) NULL,
  `l tname` VARCHAR(30) NULL,
  `city` VARCHAR(15) NULL,
  `mobileno` VARCHAR(10) NULL,
  `occupation` VARCHAR(10) NULL,
  `dob` DATE NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Banking`.`loan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Banking`.`loan` ;

CREATE TABLE IF NOT EXISTS `Banking`.`loan` (
  `custid` VARCHAR(6) NULL,
  `bid` VARCHAR(6) NULL,
  `loan_amount` VARCHAR(10) NULL,
  `loan_type` VARCHAR(10) NULL,
  `loan_status` VARCHAR(20) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Banking`.`account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Banking`.`account` ;

CREATE TABLE IF NOT EXISTS `Banking`.`account` (
  `acnumber` VARCHAR(6) NULL,
  `custid` VARCHAR(6) NULL,
  `bid` VARCHAR(6) NULL,
  `opening_balance` INT NULL,
  `aod` DATE NULL,
  `atype` VARCHAR(10) NULL,
  `astatus` VARCHAR(10) NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
