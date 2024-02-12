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


-- Dumping database structure for sserp
DROP DATABASE IF EXISTS `sserp`;
CREATE DATABASE IF NOT EXISTS `sserp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sserp`;

-- Dumping structure for table sserp.addded
DROP TABLE IF EXISTS `addded`;
CREATE TABLE IF NOT EXISTS `addded` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `AorDType` varchar(2) COLLATE ascii_bin DEFAULT NULL,
  `CategoryCode` varchar(4) COLLATE ascii_bin DEFAULT NULL,
  `Value` double(18,2) DEFAULT NULL,
  `ApplyDate` date DEFAULT NULL,
  `Installment` int(10) DEFAULT '0',
  `ActiveStatus` tinyint(1) DEFAULT NULL,
  `RCDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserID` int(10) DEFAULT NULL,
  `Descripton` varchar(500) COLLATE ascii_bin DEFAULT NULL,
  `BankID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.addded_bk
DROP TABLE IF EXISTS `addded_bk`;
CREATE TABLE IF NOT EXISTS `addded_bk` (
  `ID` int(10) NOT NULL,
  `EMPNo` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `AorDType` varchar(2) COLLATE ascii_bin DEFAULT NULL,
  `CategoryCode` varchar(4) COLLATE ascii_bin DEFAULT NULL,
  `Value` double(18,2) DEFAULT NULL,
  `ApplyDate` date DEFAULT NULL,
  `Installment` int(10) DEFAULT '0',
  `ActiveStatus` tinyint(1) DEFAULT NULL,
  `RCDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserID` int(10) DEFAULT NULL,
  `Descripton` varchar(500) COLLATE ascii_bin DEFAULT NULL,
  `BankID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=ascii COLLATE=ascii_bin ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table sserp.addotnlate
DROP TABLE IF EXISTS `addotnlate`;
CREATE TABLE IF NOT EXISTS `addotnlate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `OtMint` int(11) NOT NULL DEFAULT '0',
  `LateMint` int(11) NOT NULL DEFAULT '0',
  `YearNMonth` date DEFAULT NULL,
  `Absent` double(18,1) DEFAULT '0.0',
  `OT2` double(18,1) DEFAULT '0.0',
  `OT3` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `home_no` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `line_1` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `line_2` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `EmpNo` varchar(20) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.alert
DROP TABLE IF EXISTS `alert`;
CREATE TABLE IF NOT EXISTS `alert` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `alname` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.attdtl
DROP TABLE IF EXISTS `attdtl`;
CREATE TABLE IF NOT EXISTS `attdtl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MachineNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `WorkingDate` date DEFAULT NULL,
  `WrdIn` datetime DEFAULT NULL,
  `WrdOut` datetime DEFAULT NULL,
  `ShiftDate` date DEFAULT NULL,
  `ShiftIn` datetime DEFAULT NULL,
  `ShiftOut` datetime DEFAULT NULL,
  `Late` time DEFAULT NULL,
  `OT` time DEFAULT NULL,
  `OTR` time DEFAULT NULL,
  `EarlyOT` time DEFAULT NULL,
  `ShortLV` time DEFAULT NULL,
  `TotalHrs` time DEFAULT NULL,
  `TOL` time DEFAULT NULL,
  `HType` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=49470 DEFAULT CHARSET=ascii COLLATE=ascii_bin ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table sserp.attdtledit
DROP TABLE IF EXISTS `attdtledit`;
CREATE TABLE IF NOT EXISTS `attdtledit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(6) CHARACTER SET ascii COLLATE ascii_bin DEFAULT NULL,
  `ShiftDate` date DEFAULT NULL,
  `WorkingDate` date DEFAULT NULL,
  `WrdIn` datetime DEFAULT NULL,
  `WrdOut` datetime DEFAULT NULL,
  `HType` varchar(5) CHARACTER SET ascii COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EMPNo` (`EMPNo`)
) ENGINE=MyISAM AUTO_INCREMENT=22021 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sserp.attdtl_tmp
DROP TABLE IF EXISTS `attdtl_tmp`;
CREATE TABLE IF NOT EXISTS `attdtl_tmp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MachineNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `WorkingDate` date DEFAULT NULL,
  `WrdIn` datetime DEFAULT NULL,
  `WrdOut` datetime DEFAULT NULL,
  `ShiftDate` date DEFAULT NULL,
  `ShiftIn` datetime DEFAULT NULL,
  `ShiftOut` datetime DEFAULT NULL,
  `Late` time DEFAULT NULL,
  `OT` time DEFAULT NULL,
  `OTR` time DEFAULT NULL,
  `EarlyOT` time DEFAULT NULL,
  `ShortLV` time DEFAULT NULL,
  `TotalHrs` time DEFAULT NULL,
  `TOL` time DEFAULT NULL,
  `HType` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.attlog
DROP TABLE IF EXISTS `attlog`;
CREATE TABLE IF NOT EXISTS `attlog` (
  `DID` int(11) unsigned NOT NULL,
  `DTime` datetime NOT NULL,
  `VMod` tinyint(4) DEFAULT NULL,
  `InoutMod` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_bin COMMENT='raw attendance log record downloaded from fingerprint device';

-- Data exporting was unselected.

-- Dumping structure for table sserp.bankacc
DROP TABLE IF EXISTS `bankacc`;
CREATE TABLE IF NOT EXISTS `bankacc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(50) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `MasterDetEmpID` varchar(50) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `AccountNum` varchar(50) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `AccountBank` varchar(100) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `AccountBranch` varchar(100) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `DefultAccont` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1= deactive',
  `Precentage` tinyint(4) DEFAULT NULL,
  `Share` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `clid` varchar(10) NOT NULL,
  `email` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sserp.devices
DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `ID` tinyint(3) unsigned NOT NULL COMMENT 'Device id',
  `Config` varchar(500) COLLATE ascii_bin NOT NULL COMMENT 'comtipe(1=rs323,2=tcp,3=usb),then Tstringlist'
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_bin COMMENT='fingerprint devices settings';

-- Data exporting was unselected.

-- Dumping structure for table sserp.empmaster
DROP TABLE IF EXISTS `empmaster`;
CREATE TABLE IF NOT EXISTS `empmaster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `gender` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `nic_no` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `nationality` varchar(10) COLLATE ascii_bin DEFAULT 'NS',
  `religion` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `contact` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `AddressId` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `enterd_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Name_with_Initial` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `Department` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `Catagary` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `EmGroup` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `Join_Date` datetime DEFAULT NULL,
  `Employee_type` varchar(5) COLLATE ascii_bin DEFAULT 'PMT',
  `Form_A_Number` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `Active` tinyint(4) DEFAULT '1',
  `mail` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `Shift` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `MachineNo` int(11) DEFAULT NULL,
  `ImageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.empmasterbk
DROP TABLE IF EXISTS `empmasterbk`;
CREATE TABLE IF NOT EXISTS `empmasterbk` (
  `ID` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `gender` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `nic_no` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `nationality` varchar(10) COLLATE ascii_bin DEFAULT 'NS',
  `religion` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `contact` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `AddressId` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `enterd_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Name_with_Initial` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `Department` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `Catagary` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `EmGroup` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `Join_Date` datetime DEFAULT NULL,
  `Employee_type` varchar(5) COLLATE ascii_bin DEFAULT 'PMT',
  `Form_A_Number` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `Active` tinyint(4) DEFAULT '1',
  `mail` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `Shift` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `MachineNo` int(11) DEFAULT NULL,
  `ImageID` int(11) DEFAULT NULL,
  `id1` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id1`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.empnote
DROP TABLE IF EXISTS `empnote`;
CREATE TABLE IF NOT EXISTS `empnote` (
  `IDNote` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) DEFAULT NULL,
  `Note1` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `StatusT` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `Enter_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`IDNote`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.filedb
DROP TABLE IF EXISTS `filedb`;
CREATE TABLE IF NOT EXISTS `filedb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Doc` mediumblob,
  `FName` varchar(250) COLLATE ascii_bin DEFAULT NULL,
  `linkid` int(11) NOT NULL,
  `DocType` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ascii COLLATE=ascii_bin COMMENT='file storage';

-- Data exporting was unselected.

-- Dumping structure for table sserp.holidays
DROP TABLE IF EXISTS `holidays`;
CREATE TABLE IF NOT EXISTS `holidays` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HDate` date DEFAULT NULL,
  `TypeA` varchar(5) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `Des` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.leavealc
DROP TABLE IF EXISTS `leavealc`;
CREATE TABLE IF NOT EXISTS `leavealc` (
  `LeaveID` int(11) NOT NULL AUTO_INCREMENT,
  `EPFNo` varchar(20) COLLATE ascii_bin DEFAULT NULL,
  `LeaveTypeID` int(11) DEFAULT NULL,
  `NoOfAvailableLeave` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`LeaveID`)
) ENGINE=MyISAM AUTO_INCREMENT=531 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.leaverec
DROP TABLE IF EXISTS `leaverec`;
CREATE TABLE IF NOT EXISTS `leaverec` (
  `LeaveAllocationID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `LeaveTypeID` int(11) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Reason` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `NumberOfDay` float DEFAULT NULL,
  PRIMARY KEY (`LeaveAllocationID`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.leavetype
DROP TABLE IF EXISTS `leavetype`;
CREATE TABLE IF NOT EXISTS `leavetype` (
  `LeaveTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveTypes` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `AllocatedNoLeaves` int(11) DEFAULT NULL,
  `Common` bit(1) DEFAULT NULL,
  PRIMARY KEY (`LeaveTypeID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.logintry
DROP TABLE IF EXISTS `logintry`;
CREATE TABLE IF NOT EXISTS `logintry` (
  `LoginTryID` int(11) NOT NULL AUTO_INCREMENT,
  `TryUsername` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `TryPassword` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `TryTime` datetime DEFAULT NULL,
  PRIMARY KEY (`LoginTryID`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.property
DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `PName` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `PType` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.propertyreg
DROP TABLE IF EXISTS `propertyreg`;
CREATE TABLE IF NOT EXISTS `propertyreg` (
  `PValueID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) DEFAULT NULL,
  `PValue` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `AddDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PValueID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.roster
DROP TABLE IF EXISTS `roster`;
CREATE TABLE IF NOT EXISTS `roster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RName` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `YM` date DEFAULT NULL,
  `D1` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D2` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D3` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D4` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D5` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D6` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D7` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D8` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D9` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D10` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D11` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D12` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D13` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D14` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D15` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D16` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D17` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D18` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D19` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D20` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D21` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D22` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D23` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D24` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D25` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D26` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D27` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D28` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D29` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D30` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `D31` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.rstlink
DROP TABLE IF EXISTS `rstlink`;
CREATE TABLE IF NOT EXISTS `rstlink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(20) COLLATE ascii_bin DEFAULT NULL,
  `YM` date DEFAULT NULL,
  `RSTID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.salary
DROP TABLE IF EXISTS `salary`;
CREATE TABLE IF NOT EXISTS `salary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `EmpName` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `absent` double(18,2) DEFAULT '0.00',
  `late_time` double(18,2) DEFAULT '0.00',
  `Extra` double(18,2) DEFAULT '0.00',
  `OT2` double(18,2) DEFAULT '0.00',
  `Basic_salary` double(18,2) DEFAULT '0.00',
  `No_pay_days` varchar(255) COLLATE ascii_bin DEFAULT '0',
  `no_pay` double(18,2) DEFAULT '0.00',
  `total_for_EPF` double(18,2) DEFAULT '0.00',
  `Addition` double(18,2) DEFAULT '0.00',
  `Addition2` double(18,2) DEFAULT '0.00',
  `Gross_Salary` double(18,2) DEFAULT '0.00',
  `Deduction` double(18,2) DEFAULT '0.00',
  `EPF_8` double(18,2) DEFAULT '0.00',
  `PAYE` double(18,2) DEFAULT '0.00',
  `total_decution` double(18,2) DEFAULT '0.00',
  `Net_Salary` double(18,2) DEFAULT '0.00',
  `c_month` int(11) DEFAULT '0',
  `c_year` int(11) DEFAULT '0',
  `EPF_12` double(18,2) DEFAULT '0.00',
  `total_EPF_20` double(18,2) DEFAULT '0.00',
  `ETF_3` double(18,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4292 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.salarydetails
DROP TABLE IF EXISTS `salarydetails`;
CREATE TABLE IF NOT EXISTS `salarydetails` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `InDTableID` int(11) DEFAULT NULL,
  `Value` double(18,2) DEFAULT '0.00',
  `UserID` int(11) DEFAULT NULL,
  `SMonth` int(11) DEFAULT NULL,
  `SYear` int(11) DEFAULT NULL,
  `ADCode` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5556 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.salaryhistory
DROP TABLE IF EXISTS `salaryhistory`;
CREATE TABLE IF NOT EXISTS `salaryhistory` (
  `ID` int(11) NOT NULL,
  `EMPNo` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `Employee_name` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `absent` double DEFAULT NULL,
  `late_time` double DEFAULT NULL,
  `Extra` double DEFAULT NULL,
  `OT2` double(18,2) DEFAULT '0.00',
  `Basic_salary` double DEFAULT NULL,
  `No_pay_days` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `no_pay` double DEFAULT NULL,
  `total_for_EPF` double DEFAULT NULL,
  `Addition` double DEFAULT NULL,
  `Addition2` double DEFAULT NULL,
  `Gross_Salary` double DEFAULT NULL,
  `Deduction` double DEFAULT NULL,
  `EPF_8` double DEFAULT NULL,
  `PAYE` double DEFAULT NULL,
  `total_decution` double DEFAULT NULL,
  `Net_Salary` double DEFAULT NULL,
  `c_month` int(11) DEFAULT NULL,
  `c_year` int(11) DEFAULT NULL,
  `EPF_12` double DEFAULT NULL,
  `total_EPF_20` double DEFAULT NULL,
  `ETF_3` double DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1431 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.searchhistrory
DROP TABLE IF EXISTS `searchhistrory`;
CREATE TABLE IF NOT EXISTS `searchhistrory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) DEFAULT NULL,
  `SearchTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=432 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KeyN` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `ValS` varchar(500) COLLATE ascii_bin DEFAULT NULL,
  `Des` varchar(250) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.shift
DROP TABLE IF EXISTS `shift`;
CREATE TABLE IF NOT EXISTS `shift` (
  `Sid` int(11) NOT NULL AUTO_INCREMENT,
  `Sname` varchar(50) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `SDay` varchar(50) COLLATE ascii_bin NOT NULL DEFAULT '0',
  `InTime` time DEFAULT NULL,
  `OutTime` time DEFAULT NULL,
  PRIMARY KEY (`Sid`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for table sserp.tlog
DROP TABLE IF EXISTS `tlog`;
CREATE TABLE IF NOT EXISTS `tlog` (
  `DID` int(11) NOT NULL,
  `DTime` datetime NOT NULL,
  `VMod` tinyint(4) NOT NULL,
  `InoutMod` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_bin COMMENT='raw attendance log record downloaded from fingerprint device';

-- Data exporting was unselected.

-- Dumping structure for table sserp.tpl
DROP TABLE IF EXISTS `tpl`;
CREATE TABLE IF NOT EXISTS `tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MD` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `key` varchar(15) DEFAULT NULL,
  `val` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table sserp.typedef
DROP TABLE IF EXISTS `typedef`;
CREATE TABLE IF NOT EXISTS `typedef` (
  `Code` varchar(5) COLLATE ascii_bin NOT NULL,
  `Des` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `TypeA` varchar(2) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_bin ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table sserp.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `user_password` varchar(255) COLLATE ascii_bin DEFAULT NULL,
  `EMPNo` varchar(15) COLLATE ascii_bin DEFAULT NULL,
  `ULvl` int(11) DEFAULT '255',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- Data exporting was unselected.

-- Dumping structure for view sserp.attsalhisview
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

-- Dumping structure for view sserp.empmasterf
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

-- Dumping structure for procedure sserp.AddEMPAttDtl
DROP PROCEDURE IF EXISTS `AddEMPAttDtl`;
DELIMITER //
CREATE PROCEDURE `AddEMPAttDtl`(
	IN `empno` VARCHAR(50),
	IN `did` INT,
	IN `shift` VARCHAR(50),
	IN `st` DATE,
	IN `ed` DATE
)
    COMMENT 'add emloyee attendance details for full month'
begin

DECLARE  cnt,wd,i INTEGER;
DECLARE tdt date;

IF ((select Count(id) from empmaster e where e.EMPNo=empno)<1) THEN
insert into empmaster  (Empno,Active,Shift,machineno ) values(empno,1,shift,did); 
END IF;

set cnt= DATEDIFF(ed,st) +1;
set wd= DAYOFWEEK(st);
set tdt=st;
#del old daa
#shiftin and shiftout set to 12:00 will calc anytime in anytime out,12hours woork time shift
delete from attdtl where  EMPNo=empno and shiftdate between st and ed;

#guild date range info
drop TABLE if EXISTS rst;
CREATE TEMPORARY TABLE rst select tdt as dateA,DAY(st) as mnd,DAYOFWEEK(st) as wkd;
if st<>ed then
	REPEAT
	set tdt= DATE_ADD(tdt,INTERVAL 1 day);
	INSERT into rst VALUES(tdt, DAY(tdt),DAYOFWEEK(tdt)); 	
	UNTIL tdt>=ed END REPEAT;
end if;
#select * from rst;

#buld per emp date range0
drop TABLE if EXISTS t2;
CREATE TEMPORARY TABLE t2 
select e.MachineNo, e.EMPNo,e.Shift as sft, ifnull( e.Shift,'NoShift') as 'shift' ,rst.* from  empmaster e , rst where e.EMPNo=empno order by e.EMPNo, rst.dateA ;
#select * from t2;

#fill real shift
update t2   left join rstlink rl on t2.empno=rl.EMPNo  left join roster r  on rl.RSTID=r.ID  
set t2.shift=(case t2.mnd when	1	then r.d1 when	2	then r.d2 when	3	then r.d3 when	4	then r.d4 when	5	then r.d5 when	6	then r.d6
when	7	then r.d7  when	8	then r.d8 when	9	then r.d9 when	10	then r.d10 when	11	then r.d11 when	12	then r.d12
when	13	then r.d13 when	14	then r.d14 when	15	then r.d15 when	16	then r.d16 when	17	then r.d17 when	18	then r.d18
when	19	then r.d19 when	20	then r.d20 when	21	then r.d21 when	22	then r.d22 when	23	then r.d23 when	24	then r.d24
when	25	then r.d25 when	26	then r.d26 when	27	then r.d27 when	28	then r.d28 when	29	then r.d29 when	30	then r.d30
when	31	then r.d31 end )
 where t2.shift='RST' and  t2.dateA between rl.YM and DATE_SUB( DATE_ADD(rl.ym,INTERVAL 1 month),INTERVAL 1 day);
select * from t2;

# shift time assi;
insert into attdtl ( MachineNo,EMPNo,ShiftDate,ShiftIn,ShiftOut) 
select t2.MachineNo,t2.empno,t2.datea,ADDTIME(t2.dateA,s.InTime),if( s.OutTime>s.InTime,ADDTIME(t2.dateA,s.outTime),
ADDTIME(ADDDATE(t2.dateA,INTERVAL 1 day) ,s.outTime) )   
from  t2 left join shift s on t2.shift=s.Sname and 
 MOD(t2.mnd +DAYOFWEEK( DATE_SUB(t2.datea,INTERVAL mnd-1 day))-2,(select count(s2.Sid) from shift s2 where s2.Sname=t2.Shift)) +1 =s.SDay;
#select * from attdtl a where a.shiftdate between st and ed order by a.empno,a.shiftdate;

# in out log proccess //if time(a.ShiftIn)=time('12:00') and time(a.ShiftOut)=time('12:00')  then#12hours anytime work
UPDATE attdtl a
SET WorkingDate=( select date(l.DTime) from attlog l where l.DID=a.MachineNo and a.ShiftDate= date (l.DTime ) limit 1)
	,WrdIn=(select l.DTime from attlog l where l.DID=a.MachineNo and   l.DTime between DATE_SUB( a.ShiftIn,INTERVAL 3 hour) and DATE_ADD(a.Shiftin,INTERVAL 5 hour) order by l.DTime limit 1) 
	,WrdOut=(select l.DTime from attlog l where l.DID=a.MachineNo and   l.DTime between DATE_SUB( a.ShiftIn,INTERVAL 3 hour) and DATE_ADD(a.Shiftin,INTERVAL 22 hour)  order by l.DTime desc limit 1)
	where a.EMPNo=@empno and (a.ShiftDate between st and ed);
Select * from attdtl a where a.EMPNo=empno and a.ShiftDate between st and ed;
END//
DELIMITER ;

-- Dumping structure for procedure sserp.AttlogFull
DROP PROCEDURE IF EXISTS `AttlogFull`;
DELIMITER //
CREATE PROCEDURE `AttlogFull`(
	IN `dtst` DATE,
	IN `dted` DATE,
	IN `empnos` VARCHAR(500)
)
begin
drop TABLE if EXISTS t;
CREATE TEMPORARY TABLE t SELECT @prev_val := did AS did,@row_no := IF(@prev_val = did AND @prev_dt=DATE(dtime), @row_no + 1, 1) AS id,
@prev_dt:=date(dtime) AS ddt ,TIME(dtime) as dtt  
FROM attlog  , (SELECT @row_no := 0) x,  (SELECT @prev_val := '') y WHERE dtime BETWEEN dtst AND dted 
  ORDER BY did ASC,dtime asc;
drop TABLE if EXISTS t2;
CREATE TEMPORARY TABLE t2 SELECT *, if(id=1,dtt,null) as l1 ,if(id=2,dtt,null) as l2 ,if(id=3,dtt,null) as l3,if(id=4,dtt,null) as l4,if(id=5,dtt,null) as l5,if(id=6,dtt,null) as l6 from t ;
drop TABLE if EXISTS t3;
CREATE TEMPORARY TABLE t3 select did,ddt,cast(sum(l1) as time) ll1 ,cast(sum(l2) as time) ll2,cast(sum(l3) as time) ll3,cast(sum(l4) as time) ll4,cast(sum(l5) as time) ll5,cast(sum(l6) as time) ll6 from t2 group by did,ddt;
if empnos='*' then
	select e.empno,e.Name_with_Initial, t3.* from t3 left join empmaster e on t3.did=e.MachineNo;
else
	select e.empno,e.Name_with_Initial, t3.* from t3 left join empmaster e on t3.did=e.MachineNo where FIND_IN_SET( e.EMPNo,empnos) ;
end if;
 
end//
DELIMITER ;

-- Dumping structure for procedure sserp.AttSummary
DROP PROCEDURE IF EXISTS `AttSummary`;
DELIMITER //
CREATE PROCEDURE `AttSummary`(
	IN `st` DATE,
	IN `ed` DATE
)
    COMMENT 'attendance summery, this willcreate temp table TTAttSum, query that able to get data'
BEGIN
DROP TEMPORARY TABLE IF EXISTS TTAttSum;
create TEMPORARY table TTAttSum (
select ad.MachineNo,ad.EMPNo ,ab.abcnt,
(select   e.full_name from empmaster e where e.MachineNo=ad.MachineNo ) as EmpName,
SEC_TO_TIME( SUM( TIME_TO_SEC( `EarlyOT` ) ) ) AS EarlyOT ,
SEC_TO_TIME( SUM( TIME_TO_SEC( `Late` ) ) ) AS Late ,
SEC_TO_TIME( SUM( TIME_TO_SEC( `ShortLV` ) ) ) AS ShortLV ,
SEC_TO_TIME( SUM( TIME_TO_SEC( `otr` ) ) ) AS ot ,
SEC_TO_TIME( SUM( TIME_TO_SEC( `TotalHrs` ) ) ) AS TotalHrs ,
SEC_TO_TIME( SUM( TIME_TO_SEC( `TOL` ) ) ) AS TOL
from  attdtl ad left join
(select a.MachineNo,count(a.MachineNo ) as AbCnt  from attdtl a 
where (shiftdate between st and ed) and (time(a.ShiftIn) <>'00:00:00') and (ifnull(a.WrdIn,0) =0  or ifnull(a.WrdOut,0) =0 ) 
 and (a.shiftdate between st and ed)
group by a.MachineNo) ab on ad.MachineNo=ab.MachineNo
where shiftdate between st and ed 
group by MachineNo
 order by EMPNo);
END//
DELIMITER ;

-- Dumping structure for procedure sserp.AttToPayroll
DROP PROCEDURE IF EXISTS `AttToPayroll`;
DELIMITER //
CREATE PROCEDURE `AttToPayroll`(
	IN `st` DATE,
	IN `ed` DATE
)
BEGIN
call AttSummary(st,ed);
delete from addotnlate where YearNMonth between st and ed;
 insert into addotnlate (EMPNo, OtMint, LateMint, YearNMonth, Absent) select t.EMPNo,
ifnull( TIME_TO_SEC(ot) DIV 60,0),ifnull( TIME_TO_SEC(late) DIV 60,0),st,ifnull(abcnt,0)  from ttattsum t;
#select * from addotnlate where YearNMonth between st and ed;
if (select s.vals from setting s where s.KeyName='CLID')='WFCG' then 
 update addotnlate a set a.OT2=if ((a.Absent-4)<0,abs(a.Absent-4)*60,0), a.Absent=if ((a.Absent-4)<0,0,a.Absent-4);
end if;
END//
DELIMITER ;

-- Dumping structure for procedure sserp.BuildRstLink
DROP PROCEDURE IF EXISTS `BuildRstLink`;
DELIMITER //
CREATE PROCEDURE `BuildRstLink`(
	IN `YMn` DATE,
	IN `EMPNos` VARCHAR(5000),
	IN `RSTID` INT
)
BEGIN
delete from rstlink  where YM=YMn and   FIND_IN_SET(EMPNo,empnos);
insert into rstlink (YM,RSTID,EMPNo)  
select ymn,rstid,e.EMPNo from empmaster e where e.Shift='RST' and  FIND_IN_SET(e.EMPNo,empnos); 
END//
DELIMITER ;

-- Dumping structure for procedure sserp.CalcLvAlc
DROP PROCEDURE IF EXISTS `CalcLvAlc`;
DELIMITER //
CREATE PROCEDURE `CalcLvAlc`()
    COMMENT 'calculate leave allocation '
BEGIN
DECLARE dt date; #current yer jan 1 
DECLARE dt2 date; #previous yer jan 1


set @dt= MAKEDATE( year(now()),1);
set @dt2= MAKEDATE( year(now())-1,1);

delete from leavealc where year=year(NOW());

# anual lv calc less than 1 yer
INSERT into leavealc(EPFNo,LeaveTypeID,NoOfAvailableLeave,Year) 
select  e.EMPNo,1,Round((12-MONTH( DATE_ADD( e.Join_Date,INTERVAL 3 month)))*(14/12)),DATE_FORMAT(@dt, '%Y') from empmaster e 
where DATE_ADD( e.Join_Date,INTERVAL 3 month)>@dt2 and DATE_ADD( e.Join_Date,INTERVAL 3 month)<@dt;

# anual lv calc more than 1 yer
INSERT into leavealc(EPFNo,LeaveTypeID,NoOfAvailableLeave,Year)
select e.EMPNo,1,14,DATE_FORMAT(@dt, '%Y')  from empmaster e where DATE_ADD( e.Join_Date,INTERVAL 3 month) < @dt2; 

# casual lv calc less than 1 yer
INSERT into leavealc(EPFNo,LeaveTypeID,NoOfAvailableLeave,Year)
select  e.EMPNo,2,Round((12-MONTH( DATE_ADD( e.Join_Date,INTERVAL 3 month)))*(7/12)),DATE_FORMAT(@dt, '%Y') from empmaster e 
where DATE_ADD( e.Join_Date,INTERVAL 3 month)>@dt2 and DATE_ADD( e.Join_Date,INTERVAL 3 month)<@dt;

# casual lv calc more than 1 yer
INSERT into leavealc(EPFNo,LeaveTypeID,NoOfAvailableLeave,Year)
select e.EMPNo,2,7,DATE_FORMAT(@dt, '%Y')  from empmaster e where DATE_ADD( e.Join_Date,INTERVAL 3 month) < @dt2; 

select  * from leavealc where year=year(NOW());
END//
DELIMITER ;

-- Dumping structure for procedure sserp.NewSalary
DROP PROCEDURE IF EXISTS `NewSalary`;
DELIMITER //
CREATE PROCEDURE `NewSalary`(
	IN `mn` TINYINT,
	IN `yr` SMALLINT
)
    COMMENT 'create new salary'
BEGIN DECLARE ssd,shiftM INT; DECLARE x2,CLID CHAR(10); DECLARE dtf,dtt DATE;
#set y=2017;
#set m=9;
SET shiftM=600;
SELECT vals INTO CLID FROM setting s WHERE s.KeyName='CLID';#Client ID ; custom code exist based on this id
SELECT vals INTO ssd FROM setting s WHERE s.KeyName='SalaryStartDay';
SET dtf = STR_TO_DATE(CONCAT(CAST(yr AS CHAR(4)), ',', CAST(mn AS CHAR(2)), ',', CAST(ssd AS CHAR(2))),'%Y,%m,%d'); SET dtt = DATE_ADD(DATE_ADD(dtf, INTERVAL 1 MONTH), INTERVAL -1 DAY);
#select yr,mn,ssd,dtf,dtt;
#clear att;
DELETE FROM salary;
DELETE FROM salarydetails WHERE SYear=yr AND SMonth=mn;
# insert to att
INSERT INTO salary(EMPNo,EmpName,Basic_salary,c_month,c_year)
SELECT e.EMPNo, e.Name_with_Initial, 0, mn,yr
FROM empmaster e
WHERE e.Active=1;
#--upd basic
UPDATE salary att SET att.Basic_salary= IFNULL(att.Basic_salary,0)+ IFNULL((
SELECT SUM(ad.Value) FROM addded ad WHERE ad.CategoryCode='IBI' AND ad.ActiveStatus=1 AND ad.ApplyDate< dtt AND ad.EMPNo=att.EMPNo GROUP BY ad.EMPNo),0);
# calc absants
UPDATE salary att
JOIN (
SELECT ol.EMPNo, SUM(ol.Absent) AS ab, SUM(ol.LateMint) AS l, SUM(ol.OtMint) AS o,SUM(ol.ot2) AS o2
FROM addotnlate ol
WHERE ol.YearNMonth BETWEEN dtf AND dtt
GROUP BY ol.EMPNo
) ol2 ON att.EMPNo=ol2.EMPNo 
SET att.absent= IFNULL(ol2.ab,0),att.late_time= IFNULL(ol2.l,0), att.Extra= IFNULL(ol2.o,0),att.ot2= IFNULL(ol2.o2,0);
#cal leaveRec  and noPayDays
UPDATE salary att
LEFT JOIN (
SELECT l.EMPNo, SUM(l.NumberOfDay) AS ld
FROM leaverec l
WHERE l.StartDate BETWEEN dtf AND dtt AND l.LeaveTypeID IN (1,2)
GROUP BY l.EMPNo 
) l2 ON att.EMPNo=l2.EMPNo SET att.No_pay_days= CAST(((att.absent*ShiftM)+att.late_time-(IFNULL(l2.ld,0)*shiftM))/shiftM AS CHAR(5));
#nopayVal
UPDATE salary SET no_pay= CAST(No_pay_days AS DECIMAL(20,2))*(Basic_salary/30);
#OT, OT2  #if emp group egot then calc or, else 0
UPDATE salary a left join empmaster e on  a.EMPNo=e.EMPNo SET a.Extra=IF(e.EmGroup='EGOT', a.Extra *(a.Basic_salary/26)*1.5,0),a.OT2=if(e.EmGroup='EGOT', a.ot2 *(a.Basic_salary/26)*2,0);
#total for EPF
UPDATE salary SET total_for_EPF=Basic_salary-no_pay;
#--effective other inc/ded tbl    active and (inst=-1 or (inst>0 and (val-paysum)>0)
DROP TABLE IF EXISTS adA;
CREATE TEMPORARY TABLE IF NOT EXISTS adA 
(
SELECT att.EmpName,ad.*,sd.*, IF(ad.Installment<1,-1, (ad.Installment- IFNULL(sd.payCount,0))) AS PPay,0 as ThisMPay 
FROM addded ad
LEFT JOIN 
(
SELECT sh.InDTableID AS shid, COUNT(*)  AS payCount,sum(value) as PaySum
FROM salarydetails sh
GROUP BY sh.InDTableID) sd ON ad.ID=sd.shid
JOIN salary att ON ad.EMPNo=att.EMPNo
WHERE ad.ActiveStatus=1 AND ad.ApplyDate< dtt   AND 
(ad.CategoryCode <>'IAA' OR att.No_pay_days='0') AND ad.CategoryCode <>'IBI' 
 AND (ad.Installment<1 or (ad.Installment>0 and  ((ad.Value-ifnull(sd.paySum,0))>0)))
); 
update ada set value=(ada.value-ifnull(ada.paysum,0))/ada.ppay where ppay>0;# cal this month pay for installments>0
#select * from ada;#test ^ tmp tbl 
#insert to sal dtl
INSERT INTO salarydetails(EMPNo, InDTableID, Value, UserID, SMonth, SYear,ADCode)
SELECT EMPNo,ID,Value,0,mn,yr,CategoryCode FROM ada ;
#add1= payee add,add2=non payee add
UPDATE salary att SET att.Addition= IFNULL((
SELECT SUM(ada.Value)
FROM ada
WHERE ada.CategoryCode NOT IN ('IAA','IFA') AND ada.AorDType='I' AND ada.EMPNo=att.EMPNo
GROUP BY ada.EMPNo),0);
UPDATE salary att SET att.Addition2= IFNULL((
SELECT SUM(ada.Value)
FROM ada
WHERE ada.CategoryCode IN ('IAA','IFA') AND ada.AorDType='I' AND ada.EMPNo=att.EMPNo
GROUP BY ada.EMPNo),0);
#--calc dedution
UPDATE salary att SET att.Deduction= IFNULL((
SELECT SUM(ada.Value)
FROM ada
WHERE ada.AorDType='D' AND ada.CategoryCode<>'PYE' AND ada.EMPNo=att.EMPNo
GROUP BY ada.EMPNo),0);
#--final calc
UPDATE salary att
LEFT JOIN empmaster em ON att.EMPNo=em.EMPNo SET total_for_EPF=(att.Basic_salary-no_pay),Gross_Salary=(att.Basic_salary+Addition+extra+ot2 -no_pay),EPF_8= IF(em.Employee_type='PMT',(att.Basic_salary-no_pay)*0.08,0)
,PAYE= IFNULL((
SELECT ada.value FROM ada WHERE ada.EMPNo=att.EMPNo AND ada.categorycode='PYE'),0);
#--final calc2
UPDATE salary att
LEFT JOIN empmaster em ON att.EMPNo=em.EMPNo SET total_decution=Deduction+PAYE+EPF_8,Net_Salary=(Gross_Salary+Addition2)-(Deduction+PAYE+EPF_8)
,EPF_12= IF(em.Employee_type='PMT',total_for_EPF*.12,0),ETF_3= IF(em.Employee_type='PMT',total_for_EPF*.03,0),total_EPF_20= IF(em.Employee_type='PMT',total_for_EPF*.2,0);
#-SELECT * FROM salary ORDER BY EMPNo; 
END//
DELIMITER ;

-- Dumping structure for procedure sserp.ProcAttDtl
DROP PROCEDURE IF EXISTS `ProcAttDtl`;
DELIMITER //
CREATE PROCEDURE `ProcAttDtl`(
	IN `St` DATE,
	IN `Ed` DATE
)
BEGIN
DECLARE  cnt,wd,i INTEGER;
DECLARE tdt date;
set cnt= DATEDIFF(ed,st) +1;
set wd= DAYOFWEEK(st);
set tdt=st;
#create temp tbl
CREATE TABLE IF NOT EXISTS tlog like attlog;
TRUNCATE tlog;
insert into tlog select * from  attlog a where a.DTime between ADDDATE(st,INTERVAL -1 day) and  ADDDATE(ed,INTERVAL 1 day);

#del old daa
#shiftin and shiftout set to 12:00 will calc anytime in anytime out,12hours woork time shift
set @noBackup:=1; #avoid backup to attdtledit
delete from attdtl where shiftdate between st and ed;
#guild date range info
drop TABLE if EXISTS rst;
CREATE TEMPORARY TABLE rst select tdt as dateA,DAY(st) as mnd,DAYOFWEEK(st) as wkd;
if st<>ed then
	REPEAT
	set tdt= DATE_ADD(tdt,INTERVAL 1 day);
	INSERT into rst VALUES(tdt, DAY(tdt),DAYOFWEEK(tdt)); 	
	UNTIL tdt>=ed END REPEAT;
end if;
#select * from rst;

#buld per emp date range0
drop TABLE if EXISTS t2;
CREATE TEMPORARY TABLE t2 
select e.MachineNo, e.EMPNo,e.Shift as sft, ifnull( e.Shift,'NoShift') as 'shift' ,rst.* from  empmaster e , rst where IFNULL(e.MachineNo,'')<>'' and e.Active=1 order by e.EMPNo, rst.dateA ;
#select * from t2;

#fill real shift
update t2   left join rstlink rl on t2.empno=rl.EMPNo  left join roster r  on rl.RSTID=r.ID  
set t2.shift=(case t2.mnd when	1	then r.d1 when	2	then r.d2 when	3	then r.d3 when	4	then r.d4 when	5	then r.d5 when	6	then r.d6
when	7	then r.d7  when	8	then r.d8 when	9	then r.d9 when	10	then r.d10 when	11	then r.d11 when	12	then r.d12
when	13	then r.d13 when	14	then r.d14 when	15	then r.d15 when	16	then r.d16 when	17	then r.d17 when	18	then r.d18
when	19	then r.d19 when	20	then r.d20 when	21	then r.d21 when	22	then r.d22 when	23	then r.d23 when	24	then r.d24
when	25	then r.d25 when	26	then r.d26 when	27	then r.d27 when	28	then r.d28 when	29	then r.d29 when	30	then r.d30
when	31	then r.d31 end )
 where t2.shift='RST' and  t2.dateA between rl.YM and DATE_SUB( DATE_ADD(rl.ym,INTERVAL 1 month),INTERVAL 1 day);
#select * from t2;

CREATE TABLE IF NOT EXISTS attdtl_tmp like attdtl;
truncate attdtl_tmp;
#SELECT * FROM attdtl_tmp;

# shift time assi;
insert into attdtl_tmp ( MachineNo,EMPNo,ShiftDate,ShiftIn,ShiftOut) 
select t2.MachineNo,t2.empno,t2.datea,ADDTIME(t2.dateA,s.InTime),if( s.OutTime>=s.InTime,ADDTIME(t2.dateA,s.outTime),
ADDTIME(ADDDATE(t2.dateA,INTERVAL 1 day) ,s.outTime) )   
from  t2 left join shift s on t2.shift=s.Sname and 
 MOD(t2.mnd +DAYOFWEEK( DATE_SUB(t2.datea,INTERVAL mnd-1 day))-2,(select count(s2.Sid) from shift s2 where s2.Sname=t2.Shift)) +1 =s.SDay;
 
#select * from attdtl a where a.shiftdate between st and ed order by a.empno,a.shiftdate;

# in out log proccess //if a.ShiftIn=shiftout anytime work
UPDATE attdtl_tmp a
SET WorkingDate=( select date(l.DTime) from tlog l where l.DID=a.MachineNo and a.ShiftDate= date (l.DTime ) limit 1)
	,WrdIn=(select l.DTime from tlog l where l.DID=a.MachineNo AND  l.DTime between TIMESTAMP( a.ShiftDate,'3:30') and   TIMESTAMP( a.ShiftDate,'27:30')  order by l.DTime limit 1) 
	,Wrdout=(select l.DTime from tlog l where l.DID=a.MachineNo AND l.DTime between TIMESTAMP( a.ShiftDate,'3:30') and   TIMESTAMP( a.ShiftDate,'27:30')  order by l.DTime desc limit 1) 
	where ( a.ShiftIn=a.ShiftOut ) ; #12hours anytime work
UPDATE attdtl_tmp a
SET WorkingDate=( select date(l.DTime) from tlog l where l.DID=a.MachineNo and a.ShiftDate= date (l.DTime ) limit 1)
	,WrdIn=(select l.DTime from tlog l where l.DID=a.MachineNo and   l.DTime between DATE_SUB( a.ShiftIn,INTERVAL 3 hour) and DATE_ADD(a.Shiftin,INTERVAL 5 hour) order by l.DTime limit 1) 
	,WrdOut=(select l.DTime from tlog l where l.DID=a.MachineNo and   l.DTime between DATE_SUB( a.ShiftIn,INTERVAL 3 hour) and DATE_ADD(a.Shiftin,INTERVAL 22 hour)  order by l.DTime desc limit 1)
	where  ( a.ShiftIn<>a.ShiftOut );
# restore edits
 INSERT INTO attdtl	(MachineNo, EMPNo, WorkingDate, WrdIn, WrdOut, ShiftDate, ShiftIn, ShiftOut, Late, OT, OTR, EarlyOT, ShortLV, TotalHrs, TOL, HType) 
select 	MachineNo, EMPNo, WorkingDate, WrdIn, WrdOut, ShiftDate, ShiftIn, ShiftOut, Late, OT, OTR, EarlyOT, ShortLV, TotalHrs, TOL, HType from  attdtl_tmp;
CALL `AttDtlEditRestore`(st,ed);	
# send report 
select e.empno,e.Name_with_Initial as Name,'No Shift' from empmaster e where ifnull(e.Shift,'')='' 
union all
select e.empno,e.Name_with_Initial as Name,'No Att.No' as '####' from empmaster e where ifnull(e.MachineNo,0)=0  
union all
select e.empno,e.Name_with_Initial as Name,'No Roster Assign' as '####' from empmaster e left join (select * from rstlink rl1 where now() between rl1.YM and DATE_SUB(DATE_ADD(rl1.ym,INTERVAL 1 month),INTERVAL 1 day)) rl on e.empno=rl.EMPNo  
where e.shift='RST' and rl.id is null 
order by empno;
set @noBackup:=0;
#select * from attdtl where shiftdate between st and ed;
END//
DELIMITER ;

-- Dumping structure for procedure sserp.SalaryDtlGet
DROP PROCEDURE IF EXISTS `SalaryDtlGet`;
DELIMITER //
CREATE PROCEDURE `SalaryDtlGet`(
	IN `mnt` INT,
	IN `yr` INT,
	IN `eno` INT
)
BEGIN

select a1.ID, a1.EMPNo, a1.empname, a1.absent, a1.late_time, a1.Extra, a1.Basic_salary,a1.No_pay_days, a1.no_pay, 
a1.total_for_EPF, a1.addition,a1.Gross_Salary, a1.Deduction, a1.PAYE, a1.EPF_8, a1.total_decution, a1.Net_Salary, a1.c_month,
a1.c_year, a1.EPF_12,a1.total_EPF_20, a1.ETF_3, a1.Designation,a2.AttendenceAllowance, a3.StaffLoan, a4.Advanced,a5.Bonus,
a6.Incentive, a7.OverTime from 
(select attsalhisview.*,GetTypeDef(empmaster.Catagary)  as 'Designation' from 
empmaster
left join attsalhisview on empmaster.EMPNo= attsalhisview.EMPNo where empmaster.Active = 'Yes' 
and attsalhisview.c_month = mnt and empmaster.EMPNo = Eno) 
a1
left join  
(select IFNULL(sum(salarydetails.Value),0) as 'AttendenceAllowance',salarydetails.EMPNo  from salarydetails inner join
addDed on salarydetails.InDTableID=addDed.ID
where salarydetails.SMonth= mnt and 
salarydetails.SYear=yr and AddDed.CategoryCode = 'IAA') a2
on a1.EMPNo =  a2.EMPNo

left join 
(select IFNULL(sum(salarydetails.Value),0) as 'StaffLoan',salarydetails.EMPNo from salarydetails inner join
addDed on salarydetails.InDTableID=addDed.ID
where salarydetails.SMonth=mnt and 
salarydetails.SYear=yr and AddDed.CategoryCode = 'DSL') a3
on a1.EMPNo =  a3.EMPNo

left join 
(select IFNULL(sum(salarydetails.Value),0) as 'Advanced',salarydetails.EMPNo from salarydetails inner join
addDed on salarydetails.InDTableID=addDed.ID
where salarydetails.SMonth=mnt and 
salarydetails.SYear=yr and AddDed.CategoryCode = 'DA') a4
on a1.EMPNo =  a4.EMPNo

left join 
(select IFNULL(sum(salarydetails.Value),0) as 'Bonus',salarydetails.EMPNo from salarydetails inner join
addDed on salarydetails.InDTableID=addDed.ID
where salarydetails.SMonth=mnt and 
salarydetails.SYear=yr and AddDed.CategoryCode = 'IBO') a5
on a1.EMPNo =  a5.EMPNo

left join 
(select IFNULL(sum(salarydetails.Value),0) as 'Incentive',salarydetails.EMPNo from salarydetails inner join
addDed on salarydetails.InDTableID=addDed.ID
where salarydetails.SMonth=mnt and 
salarydetails.SYear=yr and AddDed.CategoryCode = 'IIC') a6
on a1.EMPNo =  a6.EMPNo

left join 
(select IFNULL(sum(salarydetails.Value),0) as 'OverTime',salarydetails.EMPNo from salarydetails inner join
addDed on salarydetails.InDTableID=addDed.ID
where salarydetails.SMonth=mnt and 
salarydetails.SYear=yr and AddDed.CategoryCode = 'IOT') a7
on a1.EMPNo =  a7.EMPNo;
END//
DELIMITER ;

-- Dumping structure for procedure sserp.SalaryGet
DROP PROCEDURE IF EXISTS `SalaryGet`;
DELIMITER //
CREATE PROCEDURE `SalaryGet`(
	IN `mnt` INT,
	IN `yr` INT,
	IN `Eno` VARCHAR(50)
)
    READS SQL DATA
    COMMENT 'Employee ETF_number equal to * then display details about all employees for particular month and then ETF_number equal to any number then display details about paricular employee in particular month'''
Begin
#insert into _debuglog values(1,concat(mnt,yr,eno));
select a1.ID, a1.EMPNo, a1.EmpName, a1.absent, a1.late_time, a1.Extra, a1.Basic_salary,a1.No_pay_days, a1.no_pay, 
a1.total_for_EPF, a1.Addition,a1.Gross_Salary, a1.Deduction, a1.PAYE, a1.EPF_8, a1.total_decution,a1.Addition2, a1.Net_Salary, a1.c_month,
a1.c_year, a1.EPF_12,a1.total_EPF_20, a1.ETF_3, a1.Designation,ifnull(a2.AttendenceAllowance,0) as 'AttendenceAllowance',ifnull(a6.Incentive,0) as 'Incentive', ifnull(a7.OverTime,0) as 'OverTime',ifnull( a3.StaffLoan,0) as 'StaffLoan',ifnull( a4.Advanced,0) as 'Advanced',ifnull(a5.Bonus,0) as 'Bonus'
 from 
(select attsalhisview.*,GetTypeDef(e.Catagary) as 'Designation' from 
empmaster e
left join attsalhisview on attsalhisview.EMPNo = e.EMPNo  where 
 attsalhisview.c_month = mnt and attsalhisview.c_year = yr and /*e.active=1 and --old sal not work */
 if ( FIND_IN_SET(Eno,'*,,000000'),e.EMPNo in (select e2.EMPNo from empmaster e2),FIND_IN_SET(e.empno,eno))) 
a1
left join 
(select IFNULL(sum(Value),0) as 'AttendenceAllowance',EMPNo  from salarydetails 
where SMonth= mnt and 
SYear=yr and ADCode = 'IAA' 
GROUP BY EMPNo) a2
on a1.EMPNo =  a2.EMPNo

left join 
(select IFNULL(sum(Value),0) as 'StaffLoan', EMPNo from salarydetails  
where SMonth=mnt and 
SYear=yr and ADCode = 'DSL' group by EMPNo) a3
on a1.EMPNo =  a3.EMPNo

left join 
(select IFNULL(sum(Value),0) as 'Advanced', EMPNo from salarydetails
where SMonth=mnt and 
SYear=yr and ADCode = 'DA' group by EMPNo) a4
on a1.EMPNo =  a4.EMPNo

left join 
(select IFNULL(sum(Value),0) as 'Bonus',EMPNo from salarydetails 
where SMonth=mnt and 
SYear=yr and ADCode = 'IBO' group by EMPNo) a5
on a1.EMPNo =  a5.EMPNo

left join 
(select IFNULL(sum(Value),0) as 'Incentive',EMPNo from salarydetails 
where salarydetails.SMonth=mnt and 
SYear=yr and ADCode = 'IIC' group by EMPNo) a6
on a1.EMPNo =  a6.EMPNo

left join 
(select IFNULL(sum(Value),0) as 'OverTime',EMPNo from salarydetails 
where SMonth=mnt and 
SYear=yr and ADCode = 'IOT' group by EMPNo) a7
on a1.EMPNo =  a7.EMPNo
order by a1.EMPNo;
END//
DELIMITER ;

-- Dumping structure for procedure sserp.UpdateEMPNo
DROP PROCEDURE IF EXISTS `UpdateEMPNo`;
DELIMITER //
CREATE PROCEDURE `UpdateEMPNo`(
	IN `OldETF_num` VARCHAR(50),
	IN `NewETF_Num` VARCHAR(50)
)
BEGIN
update addded set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update addded_bk set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update attdtl set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update attdtledit set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update addotnlate set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update empmaster set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update empmasterbk set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update leavealc set EPFNo=NewETF_Num where EPFNo=OldETF_num;
update leaverec set EMPNo=NewETF_Num where EMPNo=OldETF_num; 
update salary set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update salaryhistory set EMPNo=NewETF_Num where EMPNo=OldETF_num;
update salarydetails set EMPNo=NewETF_Num where EMPNo=OldETF_num;

END//
DELIMITER ;

-- Dumping structure for view sserp.attsalhisview
DROP VIEW IF EXISTS `attsalhisview`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `attsalhisview`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `attsalhisview` AS select * from salary union all select * from salaryhistory ;

-- Dumping structure for view sserp.empmasterf
DROP VIEW IF EXISTS `empmasterf`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `empmasterf`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `empmasterf` AS select m.*,a.home_no,a.line_1,a.line_2 from empmaster m left join address a on m.AddressId=a.home_no; ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
