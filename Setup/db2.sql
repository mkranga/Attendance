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

-- Dumping structure for procedure SSERP.AddEMPAttDtl
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

-- Dumping structure for procedure SSERP.AttlogFull
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

-- Dumping structure for procedure SSERP.AttSummary
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
select ad.MachineNo,ad.EMPNo ,count(ad.WorkingDate) AS wrKD ,count(ad.ShiftIn) AS sftD ,
Time2Str(SEC_TO_TIME( SUM( TIME_TO_SEC( ad.EarlyOT) ) )) AS EarlyOT ,
Time2Str(SEC_TO_TIME( SUM( TIME_TO_SEC( ad.Late ) ) ) ) AS Late ,
Time2Str(SEC_TO_TIME( SUM( TIME_TO_SEC( ad.ShortLV ) ) )) AS ShortLV ,
Time2Str(SEC_TO_TIME( SUM( TIME_TO_SEC( ad.otr ) ) )) AS ot ,
Time2Str(SEC_TO_TIME( SUM( TIME_TO_SEC( ad.TotalHrs ) ) )  ) AS TotalHrs ,
Time2Str(SEC_TO_TIME( SUM( TIME_TO_SEC( ad.TOL ) ) )) AS TOL
from  attdtl ad 
#where (shiftdate between st and ed) 
#and (time(a.ShiftIn) <>'00:00:00') and (ifnull(a.WrdIn,0) =0  or ifnull(a.WrdOut,0) =0 )  and (a.shiftdate between st and ed)  a.MachineNo) ab on ad.MachineNo=ab.MachineNo
where ad.shiftdate between st and ed 
group by ad.MachineNo 
 order by ad.MachineNo);
 
 SELECT s.*,e.Name_with_Initial,e.empno,e.Catagary,e.EmGroup from TTAttSum s LEFT JOIN empmaster e ON s.empno=e.empno ;
 -- name, car, group, work days, off days, holiday1,holiday2,
END//
DELIMITER ;

-- Dumping structure for procedure SSERP.AttToPayroll
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

-- Dumping structure for procedure SSERP.BuildRosters
DROP PROCEDURE IF EXISTS `BuildRosters`;
DELIMITER //
CREATE PROCEDURE `BuildRosters`(
	IN `dt` DATE
)
BEGIN
-- Step 1: Check if empmaster.shift matches 'roster'
-- Step 2: Ensure the roster table contains a record for the specified month
-- Step 3: Clone the last record if it exists, otherwise add a blank record

INSERT INTO roster (empid, RName, YM, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, 
                    D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, D21, D22, 
                    D23, D24, D25, D26, D27, D28, D29, D30, D31)
SELECT 
    e.ID AS empid, 
    'RST' AS RName, 
    dt AS YM, 
    r.D1, r.D2, r.D3, r.D4, r.D5, r.D6, r.D7, r.D8, r.D9, r.D10, 
    r.D11, r.D12, r.D13, r.D14, r.D15, r.D16, r.D17, r.D18, r.D19, r.D20, 
    r.D21, r.D22, r.D23, r.D24, r.D25, r.D26, r.D27, r.D28, r.D29, r.D30, r.D31
FROM 
    empmaster e
LEFT JOIN 
    roster r ON e.ID = r.empid
WHERE 
    e.Shift = 'RST' -- Condition for matching shift
    AND NOT EXISTS (SELECT 1 FROM roster WHERE empid = e.ID AND YM = dt) -- not in roster already
	 AND (r.YM = (SELECT MAX(YM) FROM roster WHERE empid = e.ID)) -- Clone the last record if available
    AND e.active=1;
-- Step 4: Add a blank record if cloning fails
INSERT INTO roster (empid, RName, YM)
SELECT 
    e.ID AS empid, 
    'RST' AS RName, 
    dt AS YM
FROM 
    empmaster e
WHERE 
    e.Shift = 'RST'
    AND NOT EXISTS (SELECT 1 FROM roster WHERE empid = e.ID AND YM = dt)
    AND e.active=1;
END//
DELIMITER ;

-- Dumping structure for procedure SSERP.CalcLvAlc
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

-- Dumping structure for procedure SSERP.CalcOTLate
DROP PROCEDURE IF EXISTS `CalcOTLate`;
DELIMITER //
CREATE PROCEDURE `CalcOTLate`(
	IN `st` DATE,
	IN `ed` DATE
)
BEGIN
    -- Update Late
    UPDATE attdtl
    SET Late = 
        CASE 
            WHEN TIMEDIFF(WrdIn, ShiftIn) > '00:00:00' 
            THEN TIMEDIFF(WrdIn, ShiftIn)
            ELSE NULL
        END
    WHERE ShiftDate BETWEEN st AND ed;

    -- Update OT
    UPDATE attdtl
    SET OT = 
        CASE 
            WHEN TIMEDIFF(WrdOut, ShiftOut) > '00:00:00' 
            THEN TIMEDIFF(WrdOut, ShiftOut)
            ELSE NULL
        END
    WHERE ShiftDate BETWEEN st AND ed;

    -- Update OTR
    UPDATE attdtl
    SET OTR = 
        CASE 
            WHEN OT IS NOT NULL 
            THEN SEC_TO_TIME(ROUND(TIME_TO_SEC(OT) / 1800) * 1800)
            ELSE NULL
        END
    WHERE ShiftDate BETWEEN st AND ed;

    -- Update EarlyOT
    UPDATE attdtl
    SET EarlyOT = 
        CASE 
            WHEN TIMEDIFF(ShiftIn, WrdIn) > '00:00:00' 
            THEN TIMEDIFF(ShiftIn, WrdIn)
            ELSE NULL
        END
    WHERE ShiftDate BETWEEN st AND ed;

    -- Update TotalHrs
    UPDATE attdtl
    SET TotalHrs = 
        CASE 
            WHEN WrdOut > WrdIn 
            THEN TIMEDIFF(WrdOut, WrdIn)
            ELSE NULL
        END
    WHERE ShiftDate BETWEEN st AND ed;
    
UPDATE attdtl
SET ShortLV = 
    CASE 
        WHEN TIMEDIFF(ShiftOut, WrdOut) > '00:00:00' 
        THEN TIMEDIFF(ShiftOut, WrdOut)
        ELSE NULL
    END     WHERE ShiftDate BETWEEN st AND ed;

UPDATE attdtl
SET TOL = 
    CASE 
        WHEN TIMEDIFF(ShiftOut, ShiftIn) > '00:00:00' AND TotalHrs IS NOT NULL
             AND TIMEDIFF(TIMEDIFF(ShiftOut, ShiftIn), TotalHrs) > '00:00:00'
        THEN TIMEDIFF(TIMEDIFF(ShiftOut, ShiftIn), TotalHrs)
        ELSE NULL
    END
   WHERE ShiftDate BETWEEN st AND ed;
    -- Select filtered rows
--    SELECT *   FROM attdtl a     WHERE a.ShiftDate BETWEEN st AND ed;
END//
DELIMITER ;

-- Dumping structure for procedure SSERP.cloneInv
DROP PROCEDURE IF EXISTS `cloneInv`;
DELIMITER //
CREATE PROCEDURE `cloneInv`(
	IN `id1` INT
)
BEGIN
INSERT INTO invoice SELECT null, cname, tel, addr1, addr2, NOW(), total, payment, paytype, cancel, `status`, warrenty, guid FROM invoice  WHERE id=id1 LIMIT 1;
SELECT @newid:=MAX(id) as newid FROM invoice;
INSERT INTO invitems SELECT NULL, `name`, qty, price, discount, totalval, @newid FROM invitems  WHERE invid=id1 ORDER BY id;
END//
DELIMITER ;

-- Dumping structure for procedure SSERP.NewSalary
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

-- Dumping structure for procedure SSERP.ProcAttDtl
DROP PROCEDURE IF EXISTS `ProcAttDtl`;
DELIMITER //
CREATE PROCEDURE `ProcAttDtl`(
	IN `St` DATE,
	IN `Ed` DATE
)
sp: BEGIN
DECLARE  cnt,wd,i,sst INTEGER;
DECLARE tdt date;
set cnt= DATEDIFF(ed,st) +1;
set wd= DAYOFWEEK(st);
set tdt=st;
SELECT valS INTO sst FROM setting s WHERE s.KeyN='SalaryStartDay' ; 
#create temp tbl
CREATE TABLE IF NOT EXISTS tlog like attlog;
TRUNCATE tlog;
insert into tlog select * from  attlog a where a.DTime between ADDDATE(st,INTERVAL -1 day) and  ADDDATE(ed,INTERVAL 1 day);

#del old daa
#shiftin and shiftout set to 12:00 will calc anytime in anytime out,12hours woork time shift
set @disable_trigger:=TRUE; #avoid backup to attdtledit
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
select e.id, e.MachineNo, e.EMPNo,e.Shift as sft, ifnull( e.Shift,'NoShift') as 'shift' ,rst.* from  empmaster e , rst where IFNULL(e.MachineNo,'')<>'' and e.Active=1 order by e.EMPNo, rst.dateA ;
#select * from t2;
#fill real shift from roster
update t2   left join roster r  ON t2.id=r.empid
set t2.shift=(case DATEDIFF(t2.dateA,r.YM)+1  when	1	then r.d1 when	2	then r.d2 when	3	then r.d3 when	4	then r.d4 when	5	then r.d5 when	6	then r.d6
when	7	then r.d7  when	8	then r.d8 when	9	then r.d9 when	10	then r.d10 when	11	then r.d11 when	12	then r.d12
when	13	then r.d13 when	14	then r.d14 when	15	then r.d15 when	16	then r.d16 when	17	then r.d17 when	18	then r.d18
when	19	then r.d19 when	20	then r.d20 when	21	then r.d21 when	22	then r.d22 when	23	then r.d23 when	24	then r.d24
when	25	then r.d25 when	26	then r.d26 when	27	then r.d27 when	28	then r.d28 when	29	then r.d29 when	30	then r.d30
when	31	then r.d31 end )
 where t2.sft='RST' and  t2.dateA between r.YM and DATE_SUB( DATE_ADD(r.ym,INTERVAL 1 month),INTERVAL 1 DAY);

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
	,WrdOut=(select l.DTime from tlog l where l.DID=a.MachineNo and   l.DTime between DATE_SUB( a.ShiftIn,INTERVAL 3 hour) and DATE_ADD(a.Shiftin,INTERVAL 16 hour)  order by l.DTime desc limit 1)
	where  ( a.ShiftIn<>a.ShiftOut );
# restore edits

 INSERT INTO attdtl	(MachineNo, EMPNo, WorkingDate, WrdIn, WrdOut, ShiftDate, ShiftIn, ShiftOut, Late, OT, OTR, EarlyOT, ShortLV, TotalHrs, TOL, HType) 
select 	MachineNo, EMPNo, WorkingDate, WrdIn, WrdOut, ShiftDate, ShiftIn, ShiftOut, Late, OT, OTR, EarlyOT, ShortLV, TotalHrs, TOL, HType from  attdtl_tmp;
#CALL `AttDtlEditRestore`(st,ed);	
#LEAVE sp;
-- cal late/ot
CALL `CalcOTLate`(st, ed);

UPDATE attdtl ad LEFT JOIN holidays h ON ad.ShiftDate = h.HDate  
SET ad.HType = CONCAT(    CASE         WHEN DAYOFWEEK(ad.ShiftDate) = 1 THEN 'S'         WHEN DAYOFWEEK(ad.ShiftDate) = 7 THEN 'T'         ELSE ''      END,
    IFNULL(h.TypeA, ''))  WHERE ad.ShiftDate BETWEEN @st AND @ed;


# send report 
select e.empno,e.Name_with_Initial as Name,'No Shift' AS Note from empmaster e WHERE (e.Active=1) and ifnull(e.Shift,'')='' 
union all
select e.empno,e.Name_with_Initial as Name,'No MachineNo' as Note from empmaster e where (e.Active=1) and ifnull(e.MachineNo,0)=0  
union all
select e.empno,e.Name_with_Initial as Name,'No Roster' as Note from empmaster e left join (select * from roster rl1 where st between rl1.YM 
and DATE_SUB(DATE_ADD(rl1.ym,INTERVAL 1 month),INTERVAL 1 day)) rl on e.id=rl.EMPid  where (e.Active=1) and e.shift='RST' and rl.id is null order by empno;

set @disable_trigger:=FALSE;
#select * from attdtl where shiftdate between st and ed;
END//
DELIMITER ;

-- Dumping structure for procedure SSERP.ProcBreakes
DROP PROCEDURE IF EXISTS `ProcBreakes`;
DELIMITER //
CREATE PROCEDURE `ProcBreakes`(
	IN `st` DATE,
	IN `ed` DATE
)
BEGIN
#SET @st='2025-04-11';
#SET @ed='2025-04-17';
SET @row_number = 0;
SET @prev_did = NULL;
SET @prev_date = NULL;
DROP TEMPORARY TABLE if EXISTS b1;
CREATE TEMPORARY TABLE b1 
SELECT DID, DATE(DTime) AS LogDate,
    MAX(CASE WHEN rn = 1 THEN DTime END) AS t1,
    MAX(CASE WHEN rn = 2 THEN DTime END) AS t2,
    MAX(CASE WHEN rn = 3 THEN DTime END) AS t3,
    MAX(CASE WHEN rn = 4 THEN DTime END) AS t4,
    MAX(CASE WHEN rn = 5 THEN DTime END) AS t5,
    MAX(CASE WHEN rn = 6 THEN DTime END) AS t6,
    MAX(CASE WHEN rn = 7 THEN DTime END) AS t7,
    MAX(CASE WHEN rn = 8 THEN DTime END) AS t8,
    MAX(CASE WHEN rn = 9 THEN DTime END) AS t9,
    MAX(CASE WHEN rn = 10 THEN DTime END) AS t10,
   MAX(CASE WHEN rn = 11 THEN DTime END) AS t11,
    MAX(CASE WHEN rn = 12 THEN DTime END) AS t12
FROM (
    SELECT DID, DTime, DATE(DTime) AS LogDate,
        IF(@prev_did = DID AND @prev_date = DATE(DTime), @row_number := @row_number + 1, @row_number := 1) AS rn,
        @prev_did := DID,
        @prev_date := DATE(DTime)
    FROM attlog WHERE date(dtime) BETWEEN st AND ed
    ORDER BY DID, DTime
) AS subquery
GROUP BY DID, LogDate;
DELETE from brakes  WHERE DateA BETWEEN st AND ed;

INSERT INTO brakes 
	(PID, DID, DateA, BrakesA, Total, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10)
SELECT e.ID,e.MachineNo,b1.LogDate, 0,0, b1.T2, b1.T3, b1.T4, b1.T5, b1.T6, b1.T7, b1.T8, b1.T9, b1.T10,b1.t11 
FROM empmaster e left JOIN b1 ON e.MachineNo=b1.did  WHERE e.Active=1 AND e.MachineNo>0 ORDER BY e.MachineNo,b1.LogDate;
END//
DELIMITER ;

-- Dumping structure for procedure SSERP.SalaryDtlGet
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

-- Dumping structure for procedure SSERP.SalaryGet
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

-- Dumping structure for procedure SSERP.UpdateEMPNo
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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
