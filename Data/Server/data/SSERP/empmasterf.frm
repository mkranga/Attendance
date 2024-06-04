TYPE=VIEW
query=select `m`.`ID` AS `ID`,`m`.`full_name` AS `full_name`,`m`.`gender` AS `gender`,`m`.`nic_no` AS `nic_no`,`m`.`birth_date` AS `birth_date`,`m`.`nationality` AS `nationality`,`m`.`religion` AS `religion`,`m`.`contact` AS `contact`,`m`.`AddressId` AS `AddressId`,`m`.`enterd_date` AS `enterd_date`,`m`.`Name_with_Initial` AS `Name_with_Initial`,`m`.`Department` AS `Department`,`m`.`Catagary` AS `Catagary`,`m`.`EmGroup` AS `EmGroup`,`m`.`EMPNo` AS `EMPNo`,`m`.`Join_Date` AS `Join_Date`,`m`.`Employee_type` AS `Employee_type`,`m`.`Form_A_Number` AS `Form_A_Number`,`m`.`Active` AS `Active`,`m`.`mail` AS `mail`,`m`.`Shift` AS `Shift`,`m`.`MachineNo` AS `MachineNo`,`m`.`ImageID` AS `ImageID`,`a`.`home_no` AS `home_no`,`a`.`line_1` AS `line_1`,`a`.`line_2` AS `line_2` from (`sshrdata`.`empmaster` `m` left join `sshrdata`.`address` `a` on((`m`.`AddressId` = `a`.`home_no`)))
md5=2600188c53529c6dd81c10b9428a25b2
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2020-09-08 05:20:48
create-version=1
source=select m.*,a.home_no,a.line_1,a.line_2 from empmaster m left join address a on m.AddressId=a.home_no;
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `m`.`ID` AS `ID`,`m`.`full_name` AS `full_name`,`m`.`gender` AS `gender`,`m`.`nic_no` AS `nic_no`,`m`.`birth_date` AS `birth_date`,`m`.`nationality` AS `nationality`,`m`.`religion` AS `religion`,`m`.`contact` AS `contact`,`m`.`AddressId` AS `AddressId`,`m`.`enterd_date` AS `enterd_date`,`m`.`Name_with_Initial` AS `Name_with_Initial`,`m`.`Department` AS `Department`,`m`.`Catagary` AS `Catagary`,`m`.`EmGroup` AS `EmGroup`,`m`.`EMPNo` AS `EMPNo`,`m`.`Join_Date` AS `Join_Date`,`m`.`Employee_type` AS `Employee_type`,`m`.`Form_A_Number` AS `Form_A_Number`,`m`.`Active` AS `Active`,`m`.`mail` AS `mail`,`m`.`Shift` AS `Shift`,`m`.`MachineNo` AS `MachineNo`,`m`.`ImageID` AS `ImageID`,`a`.`home_no` AS `home_no`,`a`.`line_1` AS `line_1`,`a`.`line_2` AS `line_2` from (`sshrdata`.`empmaster` `m` left join `sshrdata`.`address` `a` on((`m`.`AddressId` = `a`.`home_no`)))
