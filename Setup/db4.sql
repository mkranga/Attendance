-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.13 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for SSERP
CREATE DATABASE IF NOT EXISTS `sserp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `SSERP`;

-- Dumping structure for view SSERP.attsalhisview
DROP VIEW IF EXISTS `attsalhisview`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `attsalhisview` (
	`ID` INT(11) NOT NULL,
	`EMPNo` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`EmpName` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`absent` DOUBLE NULL,
	`late_time` DOUBLE NULL,
	`Extra` DOUBLE NULL,
	`OT2` DOUBLE(18,2) NULL,
	`Basic_salary` DOUBLE NULL,
	`No_pay_days` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`no_pay` DOUBLE NULL,
	`total_for_EPF` DOUBLE NULL,
	`Addition` DOUBLE NULL,
	`Addition2` DOUBLE NULL,
	`Gross_Salary` DOUBLE NULL,
	`Deduction` DOUBLE NULL,
	`EPF_8` DOUBLE NULL,
	`PAYE` DOUBLE NULL,
	`total_decution` DOUBLE NULL,
	`Net_Salary` DOUBLE NULL,
	`c_month` INT(11) NULL,
	`c_year` INT(11) NULL,
	`EPF_12` DOUBLE NULL,
	`total_EPF_20` DOUBLE NULL,
	`ETF_3` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view SSERP.empmasterf
DROP VIEW IF EXISTS `empmasterf`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `empmasterf` (
	`ID` INT(11) NOT NULL,
	`full_name` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`gender` VARCHAR(10) NULL COLLATE 'ascii_bin',
	`nic_no` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`birth_date` DATETIME NULL,
	`nationality` VARCHAR(10) NULL COLLATE 'ascii_bin',
	`religion` VARCHAR(10) NULL COLLATE 'ascii_bin',
	`contact` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`AddressId` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`enterd_date` TIMESTAMP NULL,
	`Name_with_Initial` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`Department` VARCHAR(10) NULL COLLATE 'ascii_bin',
	`Catagary` VARCHAR(10) NULL COLLATE 'ascii_bin',
	`EmGroup` VARCHAR(10) NULL COLLATE 'ascii_bin',
	`EMPNo` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`Join_Date` DATETIME NULL,
	`Employee_type` VARCHAR(5) NULL COLLATE 'ascii_bin',
	`Form_A_Number` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`Active` TINYINT(4) NULL,
	`mail` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`Shift` VARCHAR(50) NULL COLLATE 'ascii_bin',
	`MachineNo` INT(11) NULL,
	`ImageID` INT(11) NULL,
	`home_no` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`line_1` VARCHAR(255) NULL COLLATE 'ascii_bin',
	`line_2` VARCHAR(255) NULL COLLATE 'ascii_bin'
) ENGINE=MyISAM;

-- Dumping structure for view SSERP.attsalhisview
DROP VIEW IF EXISTS `attsalhisview`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `attsalhisview`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `attsalhisview` AS select * from salary union all select * from salaryhistory ;

-- Dumping structure for view SSERP.empmasterf
DROP VIEW IF EXISTS `empmasterf`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `empmasterf`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `empmasterf` AS select m.*,a.home_no,a.line_1,a.line_2 from empmaster m left join address a on m.AddressId=a.home_no; 

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
