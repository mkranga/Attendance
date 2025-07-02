params
/s silance
/F load from <file>. def 'config.ini'
/C dbcon base64
/r auto start download (/s )
/u auto start cloud upload after dl (/s)
/debug debug mode. will download all data from fp regurdless its already downloaded
/CLS  clear log data from fp
 if non db mode then config will be loaded in config.ini
 log willbe saved to
    AppPath + 'FPLog\Log' + FormatDateTime('yyyymmdd', now) + '.csv' file

if connectiong to db then below table shuld be there
CREATE TABLE `devices` (
	`ID` TINYINT(3) NOT NULL AUTO_INCREMENT COMMENT 'Device id',
	`Config` VARCHAR(500) NOT NULL COMMENT 'comtipe(1=rs323,2=tcp,3=usb),then Tstringlist' COLLATE 'ascii_bin',
	PRIMARY KEY (`ID`) USING BTREE
)
COMMENT='fingerprint devices settings'

Config :(slinebrake seperated)
//Protocall=0                <-
//MachineNo=1                <- fpm no
//IpAddress=192.168.1.224
//NetPort=5005
//TimeOut=5000
//ProtocolType=0     <- some fp need this
//NetPassword=0
//License=1253      <- some fpm need this
//DeviceType=3    <- 0=dtFKAttend/1=dtUSeries/2=dtCMSeries/3=dtSBXP
//Active=1
//DeviceUID=00000000-0000-0000-0000-000000000000    <- device uniqid for cloud sync

//todo
// clear old data
