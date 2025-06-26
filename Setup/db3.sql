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

-- Dumping structure for function SSERP.Time2Str
DROP FUNCTION IF EXISTS `Time2Str`;
DELIMITER //
CREATE FUNCTION `Time2Str`(
	`t` TIME
) RETURNS varchar(255) CHARSET latin1
    DETERMINISTIC
BEGIN
 /*   DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remainingSeconds INT;
    DECLARE result VARCHAR(255);

    -- Calculate days, hours, and minutes
    SET days = FLOOR(seconds / (24 * 3600));
    SET remainingSeconds = seconds MOD (24 * 3600);
    SET hours = FLOOR(remainingSeconds / 3600);
    SET remainingSeconds = remainingSeconds MOD 3600;
    SET minutes = FLOOR(remainingSeconds / 60);

    -- Format the result as a string
    IF days > 0 THEN
        SET result = CONCAT(days, 'd ', LPAD(hours, 2, '0'), ':', LPAD(minutes, 2, '0'));
    ELSE
        SET result = CONCAT(LPAD(hours, 2, '0'), ':', LPAD(minutes, 2, '0'));
    END IF;*/

    RETURN CAST(t AS CHAR);
END//
DELIMITER ;

-- Dumping structure for trigger SSERP.before_update_attdtl
DROP TRIGGER IF EXISTS `before_update_attdtl`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_update_attdtl` BEFORE UPDATE ON `attdtl` FOR EACH ROW BEGIN
	IF @disable_trigger IS NULL OR @disable_trigger = FALSE THEN
    INSERT INTO `attdtledit` (empno, `WrdIn`, `WrdOut`, `mdate`)
    VALUES (OLD.empno, OLD.`WrdIn`, OLD.`WrdOut`, NOW());
   END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
