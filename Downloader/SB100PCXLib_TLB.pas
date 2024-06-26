unit SB100PCXLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 18/02/2024 11:39:35 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\MIS Attendance System\Equ\SB100PCX.ocx (1)
// LIBID: {2E1E0632-E043-4840-9B6C-8145F98F8A70}
// LCID: 0
// Helpfile: C:\Program Files (x86)\MIS Attendance System\Equ\SB100PCX.hlp 
// HelpString: SB100PCX ActiveX Control module
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SB100PCXLibMajorVersion = 1;
  SB100PCXLibMinorVersion = 0;

  LIBID_SB100PCXLib: TGUID = '{2E1E0632-E043-4840-9B6C-8145F98F8A70}';

  DIID__DSB100PCX: TGUID = '{981F48F8-8342-4B4D-AA36-4FE2ED2CBDB0}';
  DIID__DSB100PCXEvents: TGUID = '{CB0539AC-1701-40E3-9144-BFB41B105C9F}';
  CLASS_SB100PCX: TGUID = '{2C8068E4-7FF1-4932-8B06-2D684DEE7146}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DSB100PCX = dispinterface;
  _DSB100PCXEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SB100PCX = _DSB100PCX;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}
  POleVariant1 = ^OleVariant; {*}
  PWideString1 = ^WideString; {*}


// *********************************************************************//
// DispIntf:  _DSB100PCX
// Flags:     (4112) Hidden Dispatchable
// GUID:      {981F48F8-8342-4B4D-AA36-4FE2ED2CBDB0}
// *********************************************************************//
  _DSB100PCX = dispinterface
    ['{981F48F8-8342-4B4D-AA36-4FE2ED2CBDB0}']
    property CommPort: Integer dispid 1;
    property ReadMark: WordBool dispid 2;
    property Baudrate: Integer dispid 3;
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           var dwPassWord: Integer): WordBool; dispid 4;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           dwPassWord: Integer): WordBool; dispid 5;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool; dispid 6;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool; dispid 7;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                             var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                             var dwManipulation: Integer; var dwBackupNumber: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer): WordBool; dispid 8;
    function ReadGeneralLogData(dwMachineNumber: Integer): WordBool; dispid 9;
    function GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwYear: Integer; 
                               var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                               var dwMinute: Integer; var dwSecond: Integer): WordBool; dispid 10;
    function ReadAllSLogData(dwMachineNumber: Integer): WordBool; dispid 11;
    function GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                            var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                            var dwManipulation: Integer; var dwBackupNumber: Integer; 
                            var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                            var dwHour: Integer; var dwMinute: Integer): WordBool; dispid 12;
    function ReadAllGLogData(dwMachineNumber: Integer): WordBool; dispid 13;
    function GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                            var dwVerifyMode: Integer; var dwYear: Integer; var dwMonth: Integer; 
                            var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                            var dwSecond: Integer): WordBool; dispid 14;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 15;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 16;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 17;
    function EnableDevice(dwMachineNumber: Integer; bFlag: Integer): WordBool; dispid 18;
    function EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                        dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: Integer): WordBool; dispid 19;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool; dispid 20;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwDayOfWeek: Integer): WordBool; dispid 21;
    function PowerOnAllDevice: WordBool; dispid 22;
    function PowerOffDevice(dwMachineNumber: Integer): WordBool; dispid 23;
    function ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer): WordBool; dispid 24;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool; dispid 25;
    function GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                          var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                          var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool; dispid 26;
    function GetSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool; dispid 27;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool; dispid 28;
    function GetLastError(var dwErrorCode: Integer): WordBool; dispid 29;
    function GetBackupNumber(dwMachineNumber: Integer): Integer; dispid 30;
    function GetProductCode(dwMachineNumber: Integer; var lpszProductCode: WideString): WordBool; dispid 31;
    function EmptyEnrollData(dwMachineNumber: Integer): WordBool; dispid 32;
    function EmptyGeneralLogData(dwMachineNumber: Integer): WordBool; dispid 33;
    function EmptySuperLogData(dwMachineNumber: Integer): WordBool; dispid 34;
    function GetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool; dispid 35;
    function SetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool; dispid 36;
    function SetUserBirthday(dwMachineNumber: Integer; dwDIN: Integer; dwYear: Integer; 
                             dwMonth: Integer; dwDay: Integer; dwFlag: Integer): WordBool; dispid 37;
    function GetCompanyName(dwMachineNumber: Integer; const dwCompanyName: OleVariant): WordBool; dispid 38;
    function SetCompanyName(dwMachineNumber: Integer; vKind: Integer; 
                            const dwCompanyName: OleVariant): WordBool; dispid 39;
    function GetDoorStatus(dwMachineNumber: Integer; var dwValue: Integer): WordBool; dispid 40;
    function SetDoorStatus(dwMachineNumber: Integer; dwValue: Integer): WordBool; dispid 41;
    function GetBellTime(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool; dispid 42;
    function SetBellTime(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool; dispid 43;
    function SetIPAddress(var lpszIPAddress: WideString; dwPortNumber: Integer; dwPassWord: Integer): WordBool; dispid 44;
    function OpenCommPort(dwMachineNumber: Integer): WordBool; dispid 45;
    procedure CloseCommPort; dispid 46;
    procedure ConvertPassword(dwSrcPSW: Integer; dwDestPSW: Integer; dwLength: Integer); dispid 47;
    function IsAllow(dwPrivilege: Integer; dwWhich: Integer): WordBool; dispid 48;
    function GetModel(dwMachineNumber: Integer; var dwdeviceKind: Integer; var dwDeviceVer: Integer): WordBool; dispid 49;
    function GetBackUpSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool; dispid 50;
    function SetGBK(dwMachineNumber: Integer; dwGBK: Integer): WordBool; dispid 51;
    function SetValidPeriod(dwMachineNumber: Integer; dwStYear: Integer; dwStMonth: Integer; 
                            dwStDate: Integer; dwEndYear: Integer; dwEndMonth: Integer; 
                            dwEndDate: Integer): WordBool; dispid 52;
    function SetHoliday(dwMachineNumber: Integer; dwHolidayNum: Integer; var dwHolidayInfo: Integer): WordBool; dispid 53;
    function SetPeriod(dwMachineNumber: Integer; dwPeriodNum: Integer; var dwPeriodInfo: Integer): WordBool; dispid 54;
    function SetUserPeriod(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwPeriod0: Integer; 
                           dwPeriod1: Integer; dwPeriod2: Integer; dwPeriod3: Integer): WordBool; dispid 55;
    function GetValidPeriod(dwMachineNumber: Integer; var dwStYear: Integer; 
                            var dwStMonth: Integer; var dwStDate: Integer; var dwEndYear: Integer; 
                            var dwEndMonth: Integer; var dwEndDate: Integer): WordBool; dispid 56;
    function GetUserPeriod(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           var dwPeriod0: Integer; var dwPeriod1: Integer; var dwPeriod2: Integer; 
                           var dwPeriod3: Integer): WordBool; dispid 57;
    function UserPeriodDelete(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool; dispid 58;
    function SetDoorDelay(dwMachineNumber: Integer; dwDelay: Integer): WordBool; dispid 59;
    function SetLockType(dwMachineNumber: Integer; dwLockType: Integer): WordBool; dispid 60;
    function SetOpenDoorOverTime(dwMachineNumber: Integer; dwOverTime: Integer): WordBool; dispid 61;
    function SetIllegalTime(dwMachineNumber: Integer; dwIllegalTime: Integer): WordBool; dispid 62;
    function GetPeriod(dwMachineNumber: Integer; var dwPeriodInfo: Integer): WordBool; dispid 63;
    function GetHoliday(dwMachineNumber: Integer; var dwHolidayInfo: Integer): WordBool; dispid 64;
    function ReadGeneralLogCount(dwMachineNumber: Integer; var dwCount: Integer): WordBool; dispid 65;
    function ReadDoorStatus(dwMachineNumber: Integer; var dwStatus: Integer): WordBool; dispid 66;
    function RegRestore(dwMachineNumber: Integer; dwEMachineNumber: Integer; 
                        const lpszFileName: OleVariant): WordBool; dispid 67;
    function RegBackup(dwMachineNumber: Integer; dwEMachineNumber: Integer; 
                       const lpszFileName: OleVariant): WordBool; dispid 68;
    function SetEnrollDataCS(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                             dwPassWord: Integer): WordBool; dispid 69;
    function GetEnrollDataCS(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                             var dwPassWord: Integer): WordBool; dispid 70;
    function ReadUserDataEmbed(dwMachineNumber: Integer): WordBool; dispid 71;
    function GetUserDataEmbed(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwEnrollNumber: Integer; var dwWorkDay: Integer; 
                              var dwLateCount: Integer; var dwLastCount: Integer; 
                              var dwWorkCount: Integer; var dwDoWorkCount: Integer; 
                              var dwRestCount: Integer; var dwHolidayCount: Integer; 
                              var dwWorkNumFrS: Integer; var dwWorkNumFrSFlag: Integer; 
                              var dwWorkNumFrE: Integer; var dwWorkNumFrEFlag: Integer; 
                              var dwCountFr: Integer; var dwWorkNumSeS: Integer; 
                              var dwWorkNumSeSFlag: Integer; var dwWorkNumSeE: Integer; 
                              var dwWorkNumSeEFlag: Integer; var dwCountSe: Integer; 
                              var dwWorkNumThS: Integer; var dwWorkNumThSFlag: Integer; 
                              var dwWorkNumThE: Integer; var dwWorkNumThEFlag: Integer; 
                              var dwCountTh: Integer): WordBool; dispid 72;
    function ReadAllUserDataEmbed(dwMachineNumber: Integer): WordBool; dispid 73;
    function GetAllUserDataEmbed(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                 var dwEnrollNumber: Integer; var dwWorkDay: Integer; 
                                 var dwLateCount: Integer; var dwLastCount: Integer; 
                                 var dwWorkCount: Integer; var dwDoWorkCount: Integer; 
                                 var dwRestCount: Integer; var dwHolidayCount: Integer; 
                                 var dwWorkNumFrS: Integer; var dwWorkNumFrSFlag: Integer; 
                                 var dwWorkNumFrE: Integer; var dwWorkNumFrEFlag: Integer; 
                                 var dwCountFr: Integer; var dwWorkNumSeS: Integer; 
                                 var dwWorkNumSeSFlag: Integer; var dwWorkNumSeE: Integer; 
                                 var dwWorkNumSeEFlag: Integer; var dwCountSe: Integer; 
                                 var dwWorkNumThS: Integer; var dwWorkNumThSFlag: Integer; 
                                 var dwWorkNumThE: Integer; var dwWorkNumThEFlag: Integer; 
                                 var dwCountTh: Integer): WordBool; dispid 74;
    function GetUserInfoEmbed(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; const lpszDeptName: OleVariant; 
                              const lpszUserName: OleVariant; var dwPrivilege: Integer; 
                              var dwWorkNum: Integer): WordBool; dispid 75;
    function SetUserInfoEmbed(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; const lpszDeptName: OleVariant; 
                              const lpszUserName: OleVariant; dwPrivilege: Integer; 
                              dwWorkNum: Integer): WordBool; dispid 76;
    function GetShiftDeptEmbed(dwMachineNumber: Integer; var ShiftDeptData: Integer): WordBool; dispid 77;
    function SetShiftDeptEmbed(dwMachineNumber: Integer; var ShiftDeptData: Integer): WordBool; dispid 78;
    function GetUserLongName(DeviceKind: Integer; dwMachineNumber: Integer; 
                             dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                             const lpszUserName: OleVariant): WordBool; dispid 79;
    function SetUserLongName(DeviceKind: Integer; dwMachineNumber: Integer; 
                             dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                             const lpszUserName: OleVariant): WordBool; dispid 80;
    function GetPassTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool; dispid 81;
    function SetPassTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool; dispid 82;
    function GetGroupTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool; dispid 83;
    function SetGroupTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool; dispid 84;
    function GetTimeZone(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool; dispid 85;
    function SetTimeZone(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool; dispid 86;
    function GetUserCtrl(dwMachineNumber: Integer; dwEnrollNumber: Integer; var dwZone: Integer; 
                         var dwStYear: Integer; var dwStMonth: Integer; var dwStDay: Integer; 
                         var dwEndYear: Integer; var dwEndMonth: Integer; var dwEndDay: Integer; 
                         var dwCtrl: Integer): WordBool; dispid 87;
    function SetUserCtrl(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwZone: Integer; 
                         dwStYear: Integer; dwStMonth: Integer; dwStDay: Integer; 
                         dwEndYear: Integer; dwEndMonth: Integer; dwEndDay: Integer; dwCtrl: Integer): WordBool; dispid 88;
    function GetDoorKey(dwMachineNumber: Integer; var dwOpenDoorTime: Integer; 
                        var dwOpenAlarmTime: Integer; var dwForceOpenTime: Integer; 
                        var dwInputAlarm1: Integer; var dwInputAlarm2: Integer; 
                        var dwForceAlarmFlag: Integer; var dwForceAlarmAct: Integer; 
                        var dwVrefyMode: Integer; var dwUserPeriod: Integer; var dwWeigand: Integer): WordBool; dispid 89;
    function SetDoorKey(dwMachineNumber: Integer; dwOpenDoorTime: Integer; 
                        dwOpenAlarmTime: Integer; dwForceOpenTime: Integer; dwInputAlarm1: Integer; 
                        dwInputAlarm2: Integer; dwForceAlarmFlag: Integer; 
                        dwForceAlarmAct: Integer; dwVrefyMode: Integer; dwUserPeriod: Integer; 
                        dwWeigand: Integer): WordBool; dispid 90;
    function LogWatchGet(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                         var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                         var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                         var dwVerifyMode: Integer; var dwEvent: Integer; var dwDoorStatus: Integer): WordBool; dispid 91;
    function ReadDrGeneralLogData(dwMachineNumber: Integer): WordBool; dispid 92;
    function GetDrGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                 var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                 var dwVerifyMode: Integer; var dwYear: Integer; 
                                 var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                 var dwMinute: Integer; var dwEvent: Integer): WordBool; dispid 93;
    function ReadDrAllGLogData(dwMachineNumber: Integer): WordBool; dispid 94;
    function GetDrAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                              var dwVerifyMode: Integer; var dwYear: Integer; var dwMonth: Integer; 
                              var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                              var dwEvent: Integer): WordBool; dispid 95;
    function SetComWait(dwWait: Integer): WordBool; dispid 96;
    function SetTcpWait(dwWait: Integer): WordBool; dispid 97;
    function ClockFormatSet(dwMachineNumber: Integer; dwFormatCode: Integer): WordBool; dispid 98;
    function SetUserFuncMsg(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwMsgNumber: Integer; const lpszMsg: OleVariant): WordBool; dispid 99;
    function SetFuncMsg(dwMachineNumber: Integer; dwFuncKey: Integer; dwFuncKeyEmployee: Integer; 
                        dwDataWidth: Integer; dwDecimalWidth: Integer; const lpszMsg: OleVariant): WordBool; dispid 100;
    function SetDaylightSavings(dwMachineNumber: Integer; dwStartMonth: Integer; 
                                dwStartDay: Integer; dwStartYear: Integer; dwAmount: Integer; 
                                dwEndMonth: Integer; dwEndDay: Integer; dwEndYear: Integer): WordBool; dispid 101;
    function ReadGeneralLogDataFunc(dwMachineNumber: Integer): WordBool; dispid 102;
    function GetGeneralLogDataFunc(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                   var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                   var dwVerifyMode: Integer; var dwYear: Integer; 
                                   var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                   var dwMinute: Integer; var dwFuncKey: Integer; 
                                   var dwResult: Integer; var dwInputData: Integer; 
                                   var dwDecimal: Integer): WordBool; dispid 103;
    function ReadAllGLogDataFunc(dwMachineNumber: Integer): WordBool; dispid 104;
    function GetAllGLogDataFunc(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                var dwVerifyMode: Integer; var dwYear: Integer; 
                                var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                var dwMinute: Integer; var dwFuncKey: Integer; 
                                var dwResult: Integer; var dwInputData: Integer; 
                                var dwDecimal: Integer): WordBool; dispid 105;
    function EnableFuncKey(dwMachineNumber: Integer; dwFuncFlag: Integer): WordBool; dispid 106;
    function SetDeviceTimeEx(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                             dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool; dispid 107;
    function GetBellTime20(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool; dispid 108;
    function SetBellTime20(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool; dispid 109;
    function DWDatetimeDecode(dwDatetime: Integer; var dwYear: Integer; var dwMonth: Integer; 
                              var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                              var dwSecond: Integer): WordBool; dispid 111;
    function DWDatetimeEncode(dwYear: Integer; dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                              dwMinute: Integer; dwSecond: Integer; var dwDatetime: Integer): WordBool; dispid 110;
    function ReadAllUserRestDataEmbed(dwMachineNumber: Integer): WordBool; dispid 112;
    function GetAllUserRestDataEmbed(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                     var dwWorkDay: Integer; var dwHolidayDays: Integer; 
                                     var dwType: Integer): WordBool; dispid 113;
    function ReadAllUserMonthDataEmbed(dwMachineNumber: Integer): WordBool; dispid 114;
    function GetAllUserMonthDataEmbed(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                      var dwWorkDay: Integer; var dwLateCount: Integer; 
                                      var dwLastCount: Integer; var dwWorkCount: Integer; 
                                      var dwDoWorkCount: Integer; var dwRestCount: Integer; 
                                      var dwHolidayCount: Integer; var dwWorkCountMust: Integer; 
                                      var dwWorkCountAbsence: Integer; var dwHolidayDays0: Integer; 
                                      var dwHolidayDays1: Integer; var dwHolidayDays2: Integer; 
                                      var dwHolidayDays3: Integer; var dwHolidayDays4: Integer; 
                                      var dwHolidayDays5: Integer; var dwHolidayDays6: Integer; 
                                      var dwHolidayDays7: Integer): WordBool; dispid 115;
    function GetPersonVerify(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             var VerifyMode: Integer): WordBool; dispid 116;
    function SetPersonVerify(dwMachineNumber: Integer; dwEnrollNumber: Integer; VerifyMode: Integer): WordBool; dispid 117;
    function Open_EXT(dwMachineNumber: Integer; dwCommMode: Integer; dwPassWord: Integer; 
                      lParam1: Integer; lParam2: Integer): WordBool; dispid 118;
    procedure Close_EXT; dispid 119;
    function ReadAllUserID_EXT: Integer; dispid 120;
    function GetUserInfo_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool; dispid 121;
    function SetUserInfo_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool; dispid 122;
    function GetLogCount_EXT(dwLogType: Integer; var dwCount: Integer; var dwReadPos: Integer): WordBool; dispid 123;
    function GetSuperLog_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                             var pData: Integer): Integer; dispid 124;
    function GetGeneralLog_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                               var pData: Integer): Integer; dispid 125;
    function GetDeviceStatus_EXT(dwStatus: Integer; var pData: Integer): WordBool; dispid 126;
    function GetDeviceInfo_EXT(dwInfo: Integer; var pData: Integer): WordBool; dispid 127;
    function SetDeviceInfo_EXT(dwInfo: Integer; var pData: Integer): WordBool; dispid 128;
    function EnableDevice_EXT(bEnable: Integer): WordBool; dispid 129;
    function PowerControl_EXT(dwPowerAction: Integer): WordBool; dispid 130;
    function EmptyData_EXT(dwDataKind: Integer): WordBool; dispid 131;
    function UpgradeFirmware_EXT(var pData: Integer; nSize: Integer): WordBool; dispid 132;
    function GetLastError_EXT: Integer; dispid 133;
    function GetAllUserID_EXT(var pAllIDInfo: Integer): Integer; dispid 134;
    function GetDataFile_EXT(dwfiletype: Integer; const pfilename: WideString; var pData: Integer; 
                             nSize: Integer): Integer; dispid 135;
    function SetDataFile_EXT(dwfiletype: Integer; const pfilename: WideString; var pData: Integer; 
                             nSize: Integer): WordBool; dispid 136;
    function GetPhotoList_EXT(dwStartPos: Integer; dwCount: Integer; var pData: Integer): Integer; dispid 137;
    function StartEventCapture_EXT(srcIP: Integer): WordBool; dispid 138;
    procedure StopEventCapture_EXT; dispid 139;
    function SearchSerialBaudrate_EXT(dwPortNumber: Integer; dwMachineNumber: Integer; 
                                      dwPassWord: Integer): Integer; dispid 140;
    function GetSystemNo(dwMachineNumber: Integer; dwCustomNo: Integer; var lpszSystemNo: WideString): WordBool; dispid 141;
    function StartListen(dwPort: Integer): WordBool; dispid 142;
    function EndListen(dwPort: Integer): WordBool; dispid 143;
    function ListenOn(dwMachineID: Integer): WordBool; dispid 144;
    function ListenOff(dwMachineID: Integer): WordBool; dispid 145;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; var lpszEnrollData: WideString; 
                              var lpszPassWord: WideString): WordBool; dispid 146;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; var lpszEnrollData: WideString; 
                              var lpszPassWord: WideString): WordBool; dispid 147;
    function SetEnrollDataStr_EXT(dwUserID: Integer; dwInfo: Integer; var lpszEnrollData: WideString): WordBool; dispid 148;
    function ReadOneUserID(dwMachineNumber: Integer; dwEnrollNumber: Integer; var dwCount: Integer): WordBool; dispid 149;
    function GetOperationError(dwMachineNumber: Integer; var dwErrorCode: Integer): WordBool; dispid 150;
    function GetInitSetting(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 151;
    function SetInitSetting(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 152;
    function UpgradeFirmware(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 153;
    function DeviceReset(dwMachineNumber: Integer): WordBool; dispid 154;
    procedure UsbConnectClientLock(dwMachineNumber: Integer; dwLock: Integer); dispid 155;
    procedure GetGLogDataThread(dwLogType: Integer; dwDeviceID: Integer; 
                                const IPAddress: WideString; dwPortNumber: Integer; 
                                dwPassWord: Integer); dispid 156;
    function SendName2Enroll(dwMachineNumber: Integer; dwEnrollID: Integer; 
                             const UserNameStr: WideString): WordBool; dispid 157;
    function SendEnrollData2Device(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   dwBackupNumber: Integer; dwPrivilege: Integer; 
                                   dwVerifyMode: Integer; const UserNameStr: WideString; 
                                   const EnrollDataStr: WideString): WordBool; dispid 158;
    function GetUserInfoEXT64(const UserID: WideString; dwInfo: Integer; var pData: Integer): WordBool; dispid 159;
    function SetUserInfoEXT64(const UserID: WideString; dwInfo: Integer; var pData: Integer): WordBool; dispid 160;
    function GetAllUserIDEXT64(var pAllIDInfo: Integer): Integer; dispid 161;
    function GetSuperLogEXT64(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                              var pData: Integer): Integer; dispid 162;
    function GetGeneralLogEXT64(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                                var pData: Integer): Integer; dispid 163;
    function ReadAllUserIDEXT64: Integer; dispid 164;
    function SetPersonalIDEXT64(const UserID: WideString; const PersonalID: WideString; 
                                const CodeStr: WideString): WordBool; dispid 165;
    function GetPersonalIDEXT64(const UserID: WideString; const PersonalID: WideString; 
                                const CodeStr: WideString): WordBool; dispid 166;
    function ReadGLogDataEx(dwMachineNumber: Integer; const BeginTime: WideString; 
                            const EndTime: WideString; var Count: Integer): WordBool; dispid 167;
    procedure ReadGLogDataThreadEx(dwMachineNumber: Integer; const BeginTime: WideString; 
                                   const EndTime: WideString); dispid 168;
    function SetUserInfo(dwMachineNumber: Integer; dwInfoType: Integer; 
                         const InfoValueStr: WideString): WordBool; dispid 169;
    function GetUserInfo(dwMachineNumber: Integer; dwInfoType: Integer; 
                         const InfoValueStr: WideString): WordBool; dispid 170;
    function GetEnrollNumberHeadStringList(dwMachineNumber: Integer; var ValueListStr: WideString): WordBool; dispid 171;
    function SetEnrollNumberHeadStringList(dwMachineNumber: Integer; const ValueListStr: WideString): WordBool; dispid 172;
    function WriteRegInfoUFileEXT(dwStartOrEnd: Integer; const FileName: WideString; Count: Integer): Integer; dispid 173;
    procedure WriteOneRegInfo2UFileEXT(const UserID: WideString; const BackupNumber: WideString; 
                                       const FingerData: WideString; const UserName: WideString; 
                                       const Reserve: WideString); dispid 174;
    function WritePersonalIDUFileEXT(dwStartOrEnd: Integer; const FileName: WideString; 
                                     Count: Integer): Integer; dispid 175;
    procedure WriteOnePersonalID2UFileEXT(const UserID: WideString; const PersonalID: WideString; 
                                          const Reserve: WideString); dispid 176;
    procedure SetRealTimeLogGetEnable(dwEnable: Integer); dispid 177;
    function SetUserNameStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            var lpUserName: WideString): WordBool; dispid 178;
    function GetPersonalTimeInfo_EXT(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                     var StartDateTimeStr: WideString; 
                                     var LunchTimeStr: WideString; var RestTimeStr: WideString): WordBool; dispid 179;
    function SetPersonalTimeInfo_EXT(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                     var StartDateTimeStr: WideString; 
                                     var LunchTimeStr: WideString; var RestTimeStr: WideString): WordBool; dispid 180;
    function GetGeneralLog_DeptOrJobID_EXT(dwStartPos: Integer; dwCount: Integer; 
                                           dwMarkReadPos: Integer; var pData: Integer): Integer; dispid 181;
    function GetDeviceMode_EXT(dwMachineNumber: Integer; var dwMode: Integer): WordBool; dispid 182;
    function SetDeviceMode_EXT(dwMachineNumber: Integer; dwMode: Integer): WordBool; dispid 183;
    function ReadLog_DeptOrJobID_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer): Integer; dispid 184;
    function GetLog_DeptOrJobID_EXT(var dwID: Integer; var dwAction: Integer; 
                                    var dwSupData: Integer; var dwYear: Integer; 
                                    var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                    var dwMin: Integer; var dwSec: Integer; var JobID: WideString): WordBool; dispid 185;
    function GetAllUserID_DeptOrJobID_EXT(var pAllIDInfo: WideString): WordBool; dispid 186;
    function GetDeviceInfo_DeptOrJobID_EXT(dwInfo: Integer; var pData: WideString): WordBool; dispid 187;
    function SetDeviceInfo_DeptOrJobID_EXT(dwInfo: Integer; var pData: WideString): WordBool; dispid 188;
    function GetUserInfo_DeptOrJobID_EXT(dwUserID: Integer; dwInfo: Integer; var pData: WideString): WordBool; dispid 189;
    function SetUserInfo_DeptOrJobID_EXT(dwUserID: Integer; dwInfo: Integer; var pData: WideString): WordBool; dispid 190;
    function GetDeviceStatus_DeptOrJobID_EXT(dwStatus: Integer; var pData: WideString): WordBool; dispid 191;
    function AddOneDeviceWatch_EXT(dwMachineNumber: Integer; var lpszIPAddress: WideString; 
                                   dwPortNumber: Integer; dwPassWord: Integer): WordBool; dispid 192;
    function EndDeviceWatch_EXT: WordBool; dispid 193;
    function DeviceOperateJS(dwMachineNumber: Integer; dwOperType: Integer; const Param: WideString): WideString; dispid 194;
    function OpenJS(dwMachineNumber: Integer; dwCommMode: Integer; dwPassWord: Integer; 
                    const Param1: WideString; const Param2: WideString): WordBool; dispid 195;
    function SendUserInfo(dwMachineNumber: Integer; Enable: Integer; 
                          const sEnrollNumber: WideString; const sCardNumber: WideString; 
                          dwPrivilege: Integer; const sName: WideString): WordBool; dispid 196;
    function StartEventCaptureEx_EXT(Port: Integer): WordBool; dispid 197;
    function SetDeviceInfo_MX(dwMachineNumber: Integer; const sIP: WideString; 
                              const sSubnetMask: WideString; const sGatewayIP: WideString): WordBool; dispid 198;
    function ReadRecord(dwMachineNumber: Integer; const StartDateTime: WideString; 
                        const EndDateTime: WideString; var RecordCount: Integer): WordBool; dispid 199;
    function GetSystemValue(Key: Integer; var Value: Integer): WordBool; dispid 200;
    function SetSystemValue(Key: Integer; Value: Integer): WordBool; dispid 201;
    function ReadUDiskLogFile(const sFileName: WideString): Integer; dispid 202;
    function GetUDiskLogFile(var dwDeviceID: Integer; var sUserID: WideString; var dwYear: Integer; 
                             var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                             var dwMin: Integer; var dwSecond: Integer; var dwMode: Integer; 
                             var dwIndex: Integer): WordBool; dispid 203;
    function ReadUDiskLogFileEx(const sFileName: WideString): Integer; dispid 204;
    function GetUDiskLogFileEx(var dwDeviceID: Integer; var sUserID: WideString; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMin: Integer; var dwSecond: Integer; 
                               var dwMode: Integer; var dwIndex: Integer): WordBool; dispid 205;
    procedure ReadGLogDataThreadHR(const DeviceList: WideString; const BeginTime: WideString; 
                                   const EndTime: WideString; ThreadCount: Integer); dispid 206;
    function SetUpdateAddr(dwMachineNumber: Integer; dwOperType: Integer; var lpszAddr: WideString): WordBool; dispid 207;
    function SetUserNameStr850(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               var lpUserName: WideString): WordBool; dispid 208;
    function GetUserNameStr850(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               var lpUserName: WideString): WordBool; dispid 209;
    function FormatEnrollData(var Src: WideString; var Des: WideString): WordBool; dispid 210;
    function CheckGetLogByTime(dwMachineNumber: Integer): WordBool; dispid 211;
    function testBlock(BlockTime: Integer): WordBool; dispid 212;
    function GetUserNameStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            var lpUserName: WideString): WordBool; dispid 213;
    function GetUserInfo10079_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool; dispid 214;
    function SetUserInfo10079_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool; dispid 215;
    function ReadFileRegInfo30079(const FileName: WideString; MaxCount: Integer): WordBool; dispid 216;
    function WriteRegInfoUFile30079(dwStartOrEnd: Integer; const FileName: WideString; 
                                    Count: Integer): Integer; dispid 217;
    procedure WriteOneRegInfo2UFile30079(const UserID: WideString; const BackupNumber: WideString; 
                                         const FingerData: WideString; const UserName: WideString; 
                                         const Reserve: WideString); dispid 218;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DSB100PCXEvents
// Flags:     (4096) Dispatchable
// GUID:      {CB0539AC-1701-40E3-9144-BFB41B105C9F}
// *********************************************************************//
  _DSB100PCXEvents = dispinterface
    ['{CB0539AC-1701-40E3-9144-BFB41B105C9F}']
    procedure OnReceiveEvent(M_No: Integer; evType: Integer; evData: Integer); dispid 1;
    procedure Connected(dwConnected: Integer; dwIP: Integer; dwPort: Integer; dwMachineID: Integer); dispid 2;
    procedure GetLog(dwMachineID: Integer; dwEnrollNum: Integer; dwYear: Integer; dwMonth: Integer; 
                     dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer; 
                     dwMode: Integer; dwInOrOut: Integer); dispid 3;
    procedure GetLogFileE60Event(dwMachineNumber: Integer; dwErrorCode: Integer; 
                                 const LogFilePathName: WideString); dispid 4;
    procedure DeviceRequest(dwRequestType: Integer; dwDeviceID: Integer; dwEnrollNumber: Integer; 
                            const Data: WideString); dispid 5;
    procedure GetMLog(dwMachineID: Integer; dwManagerID: Integer; dwUserID: Integer; 
                      dwActionType: Integer; dwSupplementaryData: Integer; dwYear: Integer; 
                      dwMonth: Integer; dwDay: Integer; dwHour: Integer; dwMinute: Integer; 
                      dwSecond: Integer); dispid 6;
    procedure OnReceiveEventDeptOrJobID(dwDeviceID: Integer; dwEventType: Integer; 
                                        const EventData: WideString); dispid 7;
    procedure ConnectedEx(dwConnected: Integer; dwIP: Integer; dwPort: Integer; 
                          dwMachineID: Integer; const sProductCode: WideString); dispid 8;
    procedure RegFileReading(dwEnrollNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer; var lpszEnrollData: WideString; 
                             var lpszPassWord: WideString); dispid 9;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TSB100PCX
// Help String      : SB100PCX Control
// Default Interface: _DSB100PCX
// Def. Intf. DISP? : Yes
// Event   Interface: _DSB100PCXEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TSB100PCXOnReceiveEvent = procedure(ASender: TObject; M_No: Integer; evType: Integer; 
                                                        evData: Integer) of object;
  TSB100PCXConnected = procedure(ASender: TObject; dwConnected: Integer; dwIP: Integer; 
                                                   dwPort: Integer; dwMachineID: Integer) of object;
  TSB100PCXGetLog = procedure(ASender: TObject; dwMachineID: Integer; dwEnrollNum: Integer; 
                                                dwYear: Integer; dwMonth: Integer; dwDay: Integer; 
                                                dwHour: Integer; dwMinute: Integer; 
                                                dwSecond: Integer; dwMode: Integer; 
                                                dwInOrOut: Integer) of object;
  TSB100PCXGetLogFileE60Event = procedure(ASender: TObject; dwMachineNumber: Integer; 
                                                            dwErrorCode: Integer; 
                                                            const LogFilePathName: WideString) of object;
  TSB100PCXDeviceRequest = procedure(ASender: TObject; dwRequestType: Integer; dwDeviceID: Integer; 
                                                       dwEnrollNumber: Integer; 
                                                       const Data: WideString) of object;
  TSB100PCXGetMLog = procedure(ASender: TObject; dwMachineID: Integer; dwManagerID: Integer; 
                                                 dwUserID: Integer; dwActionType: Integer; 
                                                 dwSupplementaryData: Integer; dwYear: Integer; 
                                                 dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                                                 dwMinute: Integer; dwSecond: Integer) of object;
  TSB100PCXOnReceiveEventDeptOrJobID = procedure(ASender: TObject; dwDeviceID: Integer; 
                                                                   dwEventType: Integer; 
                                                                   const EventData: WideString) of object;
  TSB100PCXConnectedEx = procedure(ASender: TObject; dwConnected: Integer; dwIP: Integer; 
                                                     dwPort: Integer; dwMachineID: Integer; 
                                                     const sProductCode: WideString) of object;
  TSB100PCXRegFileReading = procedure(ASender: TObject; dwEnrollNumber: Integer; 
                                                        dwBackupNumber: Integer; 
                                                        dwMachinePrivilege: Integer; 
                                                        var lpszEnrollData: WideString; 
                                                        var lpszPassWord: WideString) of object;

  TSB100PCX = class(TOleControl)
  private
    FOnReceiveEvent: TSB100PCXOnReceiveEvent;
    FOnConnected: TSB100PCXConnected;
    FOnGetLog: TSB100PCXGetLog;
    FOnGetLogFileE60Event: TSB100PCXGetLogFileE60Event;
    FOnDeviceRequest: TSB100PCXDeviceRequest;
    FOnGetMLog: TSB100PCXGetMLog;
    FOnReceiveEventDeptOrJobID: TSB100PCXOnReceiveEventDeptOrJobID;
    FOnConnectedEx: TSB100PCXConnectedEx;
    FOnRegFileReading: TSB100PCXRegFileReading;
    FIntf: _DSB100PCX;
    function  GetControlInterface: _DSB100PCX;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           var dwPassWord: Integer): WordBool;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           dwPassWord: Integer): WordBool;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                             var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                             var dwManipulation: Integer; var dwBackupNumber: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer): WordBool;
    function ReadGeneralLogData(dwMachineNumber: Integer): WordBool;
    function GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwYear: Integer; 
                               var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                               var dwMinute: Integer; var dwSecond: Integer): WordBool;
    function ReadAllSLogData(dwMachineNumber: Integer): WordBool;
    function GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                            var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                            var dwManipulation: Integer; var dwBackupNumber: Integer; 
                            var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                            var dwHour: Integer; var dwMinute: Integer): WordBool;
    function ReadAllGLogData(dwMachineNumber: Integer): WordBool;
    function GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                            var dwVerifyMode: Integer; var dwYear: Integer; var dwMonth: Integer; 
                            var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                            var dwSecond: Integer): WordBool;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
    function EnableDevice(dwMachineNumber: Integer; bFlag: Integer): WordBool;
    function EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                        dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: Integer): WordBool;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwDayOfWeek: Integer): WordBool;
    function PowerOnAllDevice: WordBool;
    function PowerOffDevice(dwMachineNumber: Integer): WordBool;
    function ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer): WordBool;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool;
    function GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                          var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                          var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool;
    function GetSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool;
    function GetLastError(var dwErrorCode: Integer): WordBool;
    function GetBackupNumber(dwMachineNumber: Integer): Integer;
    function GetProductCode(dwMachineNumber: Integer; var lpszProductCode: WideString): WordBool;
    function EmptyEnrollData(dwMachineNumber: Integer): WordBool;
    function EmptyGeneralLogData(dwMachineNumber: Integer): WordBool;
    function EmptySuperLogData(dwMachineNumber: Integer): WordBool;
    function GetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool;
    function SetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool;
    function SetUserBirthday(dwMachineNumber: Integer; dwDIN: Integer; dwYear: Integer; 
                             dwMonth: Integer; dwDay: Integer; dwFlag: Integer): WordBool;
    function GetCompanyName(dwMachineNumber: Integer; const dwCompanyName: OleVariant): WordBool;
    function SetCompanyName(dwMachineNumber: Integer; vKind: Integer; 
                            const dwCompanyName: OleVariant): WordBool;
    function GetDoorStatus(dwMachineNumber: Integer; var dwValue: Integer): WordBool;
    function SetDoorStatus(dwMachineNumber: Integer; dwValue: Integer): WordBool;
    function GetBellTime(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool;
    function SetBellTime(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool;
    function SetIPAddress(var lpszIPAddress: WideString; dwPortNumber: Integer; dwPassWord: Integer): WordBool;
    function OpenCommPort(dwMachineNumber: Integer): WordBool;
    procedure CloseCommPort;
    procedure ConvertPassword(dwSrcPSW: Integer; dwDestPSW: Integer; dwLength: Integer);
    function IsAllow(dwPrivilege: Integer; dwWhich: Integer): WordBool;
    function GetModel(dwMachineNumber: Integer; var dwdeviceKind: Integer; var dwDeviceVer: Integer): WordBool;
    function GetBackUpSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool;
    function SetGBK(dwMachineNumber: Integer; dwGBK: Integer): WordBool;
    function SetValidPeriod(dwMachineNumber: Integer; dwStYear: Integer; dwStMonth: Integer; 
                            dwStDate: Integer; dwEndYear: Integer; dwEndMonth: Integer; 
                            dwEndDate: Integer): WordBool;
    function SetHoliday(dwMachineNumber: Integer; dwHolidayNum: Integer; var dwHolidayInfo: Integer): WordBool;
    function SetPeriod(dwMachineNumber: Integer; dwPeriodNum: Integer; var dwPeriodInfo: Integer): WordBool;
    function SetUserPeriod(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwPeriod0: Integer; 
                           dwPeriod1: Integer; dwPeriod2: Integer; dwPeriod3: Integer): WordBool;
    function GetValidPeriod(dwMachineNumber: Integer; var dwStYear: Integer; 
                            var dwStMonth: Integer; var dwStDate: Integer; var dwEndYear: Integer; 
                            var dwEndMonth: Integer; var dwEndDate: Integer): WordBool;
    function GetUserPeriod(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           var dwPeriod0: Integer; var dwPeriod1: Integer; var dwPeriod2: Integer; 
                           var dwPeriod3: Integer): WordBool;
    function UserPeriodDelete(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool;
    function SetDoorDelay(dwMachineNumber: Integer; dwDelay: Integer): WordBool;
    function SetLockType(dwMachineNumber: Integer; dwLockType: Integer): WordBool;
    function SetOpenDoorOverTime(dwMachineNumber: Integer; dwOverTime: Integer): WordBool;
    function SetIllegalTime(dwMachineNumber: Integer; dwIllegalTime: Integer): WordBool;
    function GetPeriod(dwMachineNumber: Integer; var dwPeriodInfo: Integer): WordBool;
    function GetHoliday(dwMachineNumber: Integer; var dwHolidayInfo: Integer): WordBool;
    function ReadGeneralLogCount(dwMachineNumber: Integer; var dwCount: Integer): WordBool;
    function ReadDoorStatus(dwMachineNumber: Integer; var dwStatus: Integer): WordBool;
    function RegRestore(dwMachineNumber: Integer; dwEMachineNumber: Integer; 
                        const lpszFileName: OleVariant): WordBool;
    function RegBackup(dwMachineNumber: Integer; dwEMachineNumber: Integer; 
                       const lpszFileName: OleVariant): WordBool;
    function SetEnrollDataCS(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                             dwPassWord: Integer): WordBool;
    function GetEnrollDataCS(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                             var dwPassWord: Integer): WordBool;
    function ReadUserDataEmbed(dwMachineNumber: Integer): WordBool;
    function GetUserDataEmbed(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwEnrollNumber: Integer; var dwWorkDay: Integer; 
                              var dwLateCount: Integer; var dwLastCount: Integer; 
                              var dwWorkCount: Integer; var dwDoWorkCount: Integer; 
                              var dwRestCount: Integer; var dwHolidayCount: Integer; 
                              var dwWorkNumFrS: Integer; var dwWorkNumFrSFlag: Integer; 
                              var dwWorkNumFrE: Integer; var dwWorkNumFrEFlag: Integer; 
                              var dwCountFr: Integer; var dwWorkNumSeS: Integer; 
                              var dwWorkNumSeSFlag: Integer; var dwWorkNumSeE: Integer; 
                              var dwWorkNumSeEFlag: Integer; var dwCountSe: Integer; 
                              var dwWorkNumThS: Integer; var dwWorkNumThSFlag: Integer; 
                              var dwWorkNumThE: Integer; var dwWorkNumThEFlag: Integer; 
                              var dwCountTh: Integer): WordBool;
    function ReadAllUserDataEmbed(dwMachineNumber: Integer): WordBool;
    function GetAllUserDataEmbed(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                 var dwEnrollNumber: Integer; var dwWorkDay: Integer; 
                                 var dwLateCount: Integer; var dwLastCount: Integer; 
                                 var dwWorkCount: Integer; var dwDoWorkCount: Integer; 
                                 var dwRestCount: Integer; var dwHolidayCount: Integer; 
                                 var dwWorkNumFrS: Integer; var dwWorkNumFrSFlag: Integer; 
                                 var dwWorkNumFrE: Integer; var dwWorkNumFrEFlag: Integer; 
                                 var dwCountFr: Integer; var dwWorkNumSeS: Integer; 
                                 var dwWorkNumSeSFlag: Integer; var dwWorkNumSeE: Integer; 
                                 var dwWorkNumSeEFlag: Integer; var dwCountSe: Integer; 
                                 var dwWorkNumThS: Integer; var dwWorkNumThSFlag: Integer; 
                                 var dwWorkNumThE: Integer; var dwWorkNumThEFlag: Integer; 
                                 var dwCountTh: Integer): WordBool;
    function GetUserInfoEmbed(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; const lpszDeptName: OleVariant; 
                              const lpszUserName: OleVariant; var dwPrivilege: Integer; 
                              var dwWorkNum: Integer): WordBool;
    function SetUserInfoEmbed(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; const lpszDeptName: OleVariant; 
                              const lpszUserName: OleVariant; dwPrivilege: Integer; 
                              dwWorkNum: Integer): WordBool;
    function GetShiftDeptEmbed(dwMachineNumber: Integer; var ShiftDeptData: Integer): WordBool;
    function SetShiftDeptEmbed(dwMachineNumber: Integer; var ShiftDeptData: Integer): WordBool;
    function GetUserLongName(DeviceKind: Integer; dwMachineNumber: Integer; 
                             dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                             const lpszUserName: OleVariant): WordBool;
    function SetUserLongName(DeviceKind: Integer; dwMachineNumber: Integer; 
                             dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                             const lpszUserName: OleVariant): WordBool;
    function GetPassTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
    function SetPassTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
    function GetGroupTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
    function SetGroupTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
    function GetTimeZone(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
    function SetTimeZone(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
    function GetUserCtrl(dwMachineNumber: Integer; dwEnrollNumber: Integer; var dwZone: Integer; 
                         var dwStYear: Integer; var dwStMonth: Integer; var dwStDay: Integer; 
                         var dwEndYear: Integer; var dwEndMonth: Integer; var dwEndDay: Integer; 
                         var dwCtrl: Integer): WordBool;
    function SetUserCtrl(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwZone: Integer; 
                         dwStYear: Integer; dwStMonth: Integer; dwStDay: Integer; 
                         dwEndYear: Integer; dwEndMonth: Integer; dwEndDay: Integer; dwCtrl: Integer): WordBool;
    function GetDoorKey(dwMachineNumber: Integer; var dwOpenDoorTime: Integer; 
                        var dwOpenAlarmTime: Integer; var dwForceOpenTime: Integer; 
                        var dwInputAlarm1: Integer; var dwInputAlarm2: Integer; 
                        var dwForceAlarmFlag: Integer; var dwForceAlarmAct: Integer; 
                        var dwVrefyMode: Integer; var dwUserPeriod: Integer; var dwWeigand: Integer): WordBool;
    function SetDoorKey(dwMachineNumber: Integer; dwOpenDoorTime: Integer; 
                        dwOpenAlarmTime: Integer; dwForceOpenTime: Integer; dwInputAlarm1: Integer; 
                        dwInputAlarm2: Integer; dwForceAlarmFlag: Integer; 
                        dwForceAlarmAct: Integer; dwVrefyMode: Integer; dwUserPeriod: Integer; 
                        dwWeigand: Integer): WordBool;
    function LogWatchGet(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                         var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                         var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                         var dwVerifyMode: Integer; var dwEvent: Integer; var dwDoorStatus: Integer): WordBool;
    function ReadDrGeneralLogData(dwMachineNumber: Integer): WordBool;
    function GetDrGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                 var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                 var dwVerifyMode: Integer; var dwYear: Integer; 
                                 var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                 var dwMinute: Integer; var dwEvent: Integer): WordBool;
    function ReadDrAllGLogData(dwMachineNumber: Integer): WordBool;
    function GetDrAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                              var dwVerifyMode: Integer; var dwYear: Integer; var dwMonth: Integer; 
                              var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                              var dwEvent: Integer): WordBool;
    function SetComWait(dwWait: Integer): WordBool;
    function SetTcpWait(dwWait: Integer): WordBool;
    function ClockFormatSet(dwMachineNumber: Integer; dwFormatCode: Integer): WordBool;
    function SetUserFuncMsg(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwMsgNumber: Integer; const lpszMsg: OleVariant): WordBool;
    function SetFuncMsg(dwMachineNumber: Integer; dwFuncKey: Integer; dwFuncKeyEmployee: Integer; 
                        dwDataWidth: Integer; dwDecimalWidth: Integer; const lpszMsg: OleVariant): WordBool;
    function SetDaylightSavings(dwMachineNumber: Integer; dwStartMonth: Integer; 
                                dwStartDay: Integer; dwStartYear: Integer; dwAmount: Integer; 
                                dwEndMonth: Integer; dwEndDay: Integer; dwEndYear: Integer): WordBool;
    function ReadGeneralLogDataFunc(dwMachineNumber: Integer): WordBool;
    function GetGeneralLogDataFunc(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                   var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                   var dwVerifyMode: Integer; var dwYear: Integer; 
                                   var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                   var dwMinute: Integer; var dwFuncKey: Integer; 
                                   var dwResult: Integer; var dwInputData: Integer; 
                                   var dwDecimal: Integer): WordBool;
    function ReadAllGLogDataFunc(dwMachineNumber: Integer): WordBool;
    function GetAllGLogDataFunc(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                var dwVerifyMode: Integer; var dwYear: Integer; 
                                var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                var dwMinute: Integer; var dwFuncKey: Integer; 
                                var dwResult: Integer; var dwInputData: Integer; 
                                var dwDecimal: Integer): WordBool;
    function EnableFuncKey(dwMachineNumber: Integer; dwFuncFlag: Integer): WordBool;
    function SetDeviceTimeEx(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                             dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
    function GetBellTime20(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool;
    function SetBellTime20(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool;
    function DWDatetimeDecode(dwDatetime: Integer; var dwYear: Integer; var dwMonth: Integer; 
                              var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                              var dwSecond: Integer): WordBool;
    function DWDatetimeEncode(dwYear: Integer; dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                              dwMinute: Integer; dwSecond: Integer; var dwDatetime: Integer): WordBool;
    function ReadAllUserRestDataEmbed(dwMachineNumber: Integer): WordBool;
    function GetAllUserRestDataEmbed(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                     var dwWorkDay: Integer; var dwHolidayDays: Integer; 
                                     var dwType: Integer): WordBool;
    function ReadAllUserMonthDataEmbed(dwMachineNumber: Integer): WordBool;
    function GetAllUserMonthDataEmbed(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                      var dwWorkDay: Integer; var dwLateCount: Integer; 
                                      var dwLastCount: Integer; var dwWorkCount: Integer; 
                                      var dwDoWorkCount: Integer; var dwRestCount: Integer; 
                                      var dwHolidayCount: Integer; var dwWorkCountMust: Integer; 
                                      var dwWorkCountAbsence: Integer; var dwHolidayDays0: Integer; 
                                      var dwHolidayDays1: Integer; var dwHolidayDays2: Integer; 
                                      var dwHolidayDays3: Integer; var dwHolidayDays4: Integer; 
                                      var dwHolidayDays5: Integer; var dwHolidayDays6: Integer; 
                                      var dwHolidayDays7: Integer): WordBool;
    function GetPersonVerify(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             var VerifyMode: Integer): WordBool;
    function SetPersonVerify(dwMachineNumber: Integer; dwEnrollNumber: Integer; VerifyMode: Integer): WordBool;
    function Open_EXT(dwMachineNumber: Integer; dwCommMode: Integer; dwPassWord: Integer; 
                      lParam1: Integer; lParam2: Integer): WordBool;
    procedure Close_EXT;
    function ReadAllUserID_EXT: Integer;
    function GetUserInfo_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
    function SetUserInfo_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
    function GetLogCount_EXT(dwLogType: Integer; var dwCount: Integer; var dwReadPos: Integer): WordBool;
    function GetSuperLog_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                             var pData: Integer): Integer;
    function GetGeneralLog_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                               var pData: Integer): Integer;
    function GetDeviceStatus_EXT(dwStatus: Integer; var pData: Integer): WordBool;
    function GetDeviceInfo_EXT(dwInfo: Integer; var pData: Integer): WordBool;
    function SetDeviceInfo_EXT(dwInfo: Integer; var pData: Integer): WordBool;
    function EnableDevice_EXT(bEnable: Integer): WordBool;
    function PowerControl_EXT(dwPowerAction: Integer): WordBool;
    function EmptyData_EXT(dwDataKind: Integer): WordBool;
    function UpgradeFirmware_EXT(var pData: Integer; nSize: Integer): WordBool;
    function GetLastError_EXT: Integer;
    function GetAllUserID_EXT(var pAllIDInfo: Integer): Integer;
    function GetDataFile_EXT(dwfiletype: Integer; const pfilename: WideString; var pData: Integer; 
                             nSize: Integer): Integer;
    function SetDataFile_EXT(dwfiletype: Integer; const pfilename: WideString; var pData: Integer; 
                             nSize: Integer): WordBool;
    function GetPhotoList_EXT(dwStartPos: Integer; dwCount: Integer; var pData: Integer): Integer;
    function StartEventCapture_EXT(srcIP: Integer): WordBool;
    procedure StopEventCapture_EXT;
    function SearchSerialBaudrate_EXT(dwPortNumber: Integer; dwMachineNumber: Integer; 
                                      dwPassWord: Integer): Integer;
    function GetSystemNo(dwMachineNumber: Integer; dwCustomNo: Integer; var lpszSystemNo: WideString): WordBool;
    function StartListen(dwPort: Integer): WordBool;
    function EndListen(dwPort: Integer): WordBool;
    function ListenOn(dwMachineID: Integer): WordBool;
    function ListenOff(dwMachineID: Integer): WordBool;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; var lpszEnrollData: WideString; 
                              var lpszPassWord: WideString): WordBool;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; var lpszEnrollData: WideString; 
                              var lpszPassWord: WideString): WordBool;
    function SetEnrollDataStr_EXT(dwUserID: Integer; dwInfo: Integer; var lpszEnrollData: WideString): WordBool;
    function ReadOneUserID(dwMachineNumber: Integer; dwEnrollNumber: Integer; var dwCount: Integer): WordBool;
    function GetOperationError(dwMachineNumber: Integer; var dwErrorCode: Integer): WordBool;
    function GetInitSetting(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function SetInitSetting(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function UpgradeFirmware(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function DeviceReset(dwMachineNumber: Integer): WordBool;
    procedure UsbConnectClientLock(dwMachineNumber: Integer; dwLock: Integer);
    procedure GetGLogDataThread(dwLogType: Integer; dwDeviceID: Integer; 
                                const IPAddress: WideString; dwPortNumber: Integer; 
                                dwPassWord: Integer);
    function SendName2Enroll(dwMachineNumber: Integer; dwEnrollID: Integer; 
                             const UserNameStr: WideString): WordBool;
    function SendEnrollData2Device(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   dwBackupNumber: Integer; dwPrivilege: Integer; 
                                   dwVerifyMode: Integer; const UserNameStr: WideString; 
                                   const EnrollDataStr: WideString): WordBool;
    function GetUserInfoEXT64(const UserID: WideString; dwInfo: Integer; var pData: Integer): WordBool;
    function SetUserInfoEXT64(const UserID: WideString; dwInfo: Integer; var pData: Integer): WordBool;
    function GetAllUserIDEXT64(var pAllIDInfo: Integer): Integer;
    function GetSuperLogEXT64(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                              var pData: Integer): Integer;
    function GetGeneralLogEXT64(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                                var pData: Integer): Integer;
    function ReadAllUserIDEXT64: Integer;
    function SetPersonalIDEXT64(const UserID: WideString; const PersonalID: WideString; 
                                const CodeStr: WideString): WordBool;
    function GetPersonalIDEXT64(const UserID: WideString; const PersonalID: WideString; 
                                const CodeStr: WideString): WordBool;
    function ReadGLogDataEx(dwMachineNumber: Integer; const BeginTime: WideString; 
                            const EndTime: WideString; var Count: Integer): WordBool;
    procedure ReadGLogDataThreadEx(dwMachineNumber: Integer; const BeginTime: WideString; 
                                   const EndTime: WideString);
    function SetUserInfo(dwMachineNumber: Integer; dwInfoType: Integer; 
                         const InfoValueStr: WideString): WordBool;
    function GetUserInfo(dwMachineNumber: Integer; dwInfoType: Integer; 
                         const InfoValueStr: WideString): WordBool;
    function GetEnrollNumberHeadStringList(dwMachineNumber: Integer; var ValueListStr: WideString): WordBool;
    function SetEnrollNumberHeadStringList(dwMachineNumber: Integer; const ValueListStr: WideString): WordBool;
    function WriteRegInfoUFileEXT(dwStartOrEnd: Integer; const FileName: WideString; Count: Integer): Integer;
    procedure WriteOneRegInfo2UFileEXT(const UserID: WideString; const BackupNumber: WideString; 
                                       const FingerData: WideString; const UserName: WideString; 
                                       const Reserve: WideString);
    function WritePersonalIDUFileEXT(dwStartOrEnd: Integer; const FileName: WideString; 
                                     Count: Integer): Integer;
    procedure WriteOnePersonalID2UFileEXT(const UserID: WideString; const PersonalID: WideString; 
                                          const Reserve: WideString);
    procedure SetRealTimeLogGetEnable(dwEnable: Integer);
    function SetUserNameStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            var lpUserName: WideString): WordBool;
    function GetPersonalTimeInfo_EXT(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                     var StartDateTimeStr: WideString; 
                                     var LunchTimeStr: WideString; var RestTimeStr: WideString): WordBool;
    function SetPersonalTimeInfo_EXT(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                     var StartDateTimeStr: WideString; 
                                     var LunchTimeStr: WideString; var RestTimeStr: WideString): WordBool;
    function GetGeneralLog_DeptOrJobID_EXT(dwStartPos: Integer; dwCount: Integer; 
                                           dwMarkReadPos: Integer; var pData: Integer): Integer;
    function GetDeviceMode_EXT(dwMachineNumber: Integer; var dwMode: Integer): WordBool;
    function SetDeviceMode_EXT(dwMachineNumber: Integer; dwMode: Integer): WordBool;
    function ReadLog_DeptOrJobID_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer): Integer;
    function GetLog_DeptOrJobID_EXT(var dwID: Integer; var dwAction: Integer; 
                                    var dwSupData: Integer; var dwYear: Integer; 
                                    var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                    var dwMin: Integer; var dwSec: Integer; var JobID: WideString): WordBool;
    function GetAllUserID_DeptOrJobID_EXT(var pAllIDInfo: WideString): WordBool;
    function GetDeviceInfo_DeptOrJobID_EXT(dwInfo: Integer; var pData: WideString): WordBool;
    function SetDeviceInfo_DeptOrJobID_EXT(dwInfo: Integer; var pData: WideString): WordBool;
    function GetUserInfo_DeptOrJobID_EXT(dwUserID: Integer; dwInfo: Integer; var pData: WideString): WordBool;
    function SetUserInfo_DeptOrJobID_EXT(dwUserID: Integer; dwInfo: Integer; var pData: WideString): WordBool;
    function GetDeviceStatus_DeptOrJobID_EXT(dwStatus: Integer; var pData: WideString): WordBool;
    function AddOneDeviceWatch_EXT(dwMachineNumber: Integer; var lpszIPAddress: WideString; 
                                   dwPortNumber: Integer; dwPassWord: Integer): WordBool;
    function EndDeviceWatch_EXT: WordBool;
    function DeviceOperateJS(dwMachineNumber: Integer; dwOperType: Integer; const Param: WideString): WideString;
    function OpenJS(dwMachineNumber: Integer; dwCommMode: Integer; dwPassWord: Integer; 
                    const Param1: WideString; const Param2: WideString): WordBool;
    function SendUserInfo(dwMachineNumber: Integer; Enable: Integer; 
                          const sEnrollNumber: WideString; const sCardNumber: WideString; 
                          dwPrivilege: Integer; const sName: WideString): WordBool;
    function StartEventCaptureEx_EXT(Port: Integer): WordBool;
    function SetDeviceInfo_MX(dwMachineNumber: Integer; const sIP: WideString; 
                              const sSubnetMask: WideString; const sGatewayIP: WideString): WordBool;
    function ReadRecord(dwMachineNumber: Integer; const StartDateTime: WideString; 
                        const EndDateTime: WideString; var RecordCount: Integer): WordBool;
    function GetSystemValue(Key: Integer; var Value: Integer): WordBool;
    function SetSystemValue(Key: Integer; Value: Integer): WordBool;
    function ReadUDiskLogFile(const sFileName: WideString): Integer;
    function GetUDiskLogFile(var dwDeviceID: Integer; var sUserID: WideString; var dwYear: Integer; 
                             var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                             var dwMin: Integer; var dwSecond: Integer; var dwMode: Integer; 
                             var dwIndex: Integer): WordBool;
    function ReadUDiskLogFileEx(const sFileName: WideString): Integer;
    function GetUDiskLogFileEx(var dwDeviceID: Integer; var sUserID: WideString; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMin: Integer; var dwSecond: Integer; 
                               var dwMode: Integer; var dwIndex: Integer): WordBool;
    procedure ReadGLogDataThreadHR(const DeviceList: WideString; const BeginTime: WideString; 
                                   const EndTime: WideString; ThreadCount: Integer);
    function SetUpdateAddr(dwMachineNumber: Integer; dwOperType: Integer; var lpszAddr: WideString): WordBool;
    function SetUserNameStr850(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               var lpUserName: WideString): WordBool;
    function GetUserNameStr850(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               var lpUserName: WideString): WordBool;
    function FormatEnrollData(var Src: WideString; var Des: WideString): WordBool;
    function CheckGetLogByTime(dwMachineNumber: Integer): WordBool;
    function testBlock(BlockTime: Integer): WordBool;
    function GetUserNameStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            var lpUserName: WideString): WordBool;
    function GetUserInfo10079_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
    function SetUserInfo10079_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
    function ReadFileRegInfo30079(const FileName: WideString; MaxCount: Integer): WordBool;
    function WriteRegInfoUFile30079(dwStartOrEnd: Integer; const FileName: WideString; 
                                    Count: Integer): Integer;
    procedure WriteOneRegInfo2UFile30079(const UserID: WideString; const BackupNumber: WideString; 
                                         const FingerData: WideString; const UserName: WideString; 
                                         const Reserve: WideString);
    procedure AboutBox;
    property  ControlInterface: _DSB100PCX read GetControlInterface;
    property  DefaultInterface: _DSB100PCX read GetControlInterface;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property CommPort: Integer index 1 read GetIntegerProp write SetIntegerProp stored False;
    property ReadMark: WordBool index 2 read GetWordBoolProp write SetWordBoolProp stored False;
    property Baudrate: Integer index 3 read GetIntegerProp write SetIntegerProp stored False;
    property OnReceiveEvent: TSB100PCXOnReceiveEvent read FOnReceiveEvent write FOnReceiveEvent;
    property OnConnected: TSB100PCXConnected read FOnConnected write FOnConnected;
    property OnGetLog: TSB100PCXGetLog read FOnGetLog write FOnGetLog;
    property OnGetLogFileE60Event: TSB100PCXGetLogFileE60Event read FOnGetLogFileE60Event write FOnGetLogFileE60Event;
    property OnDeviceRequest: TSB100PCXDeviceRequest read FOnDeviceRequest write FOnDeviceRequest;
    property OnGetMLog: TSB100PCXGetMLog read FOnGetMLog write FOnGetMLog;
    property OnReceiveEventDeptOrJobID: TSB100PCXOnReceiveEventDeptOrJobID read FOnReceiveEventDeptOrJobID write FOnReceiveEventDeptOrJobID;
    property OnConnectedEx: TSB100PCXConnectedEx read FOnConnectedEx write FOnConnectedEx;
    property OnRegFileReading: TSB100PCXRegFileReading read FOnRegFileReading write FOnRegFileReading;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

procedure TSB100PCX.InitControlData;
const
  CEventDispIDs: array [0..8] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009);
  CControlData: TControlData2 = (
    ClassID:      '{2C8068E4-7FF1-4932-8B06-2D684DEE7146}';
    EventIID:     '{CB0539AC-1701-40E3-9144-BFB41B105C9F}';
    EventCount:   9;
    EventDispIDs: @CEventDispIDs;
    LicenseKey:   nil (*HR:$80004005*);
    Flags:        $00000000;
    Version:      500);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := UIntPtr(@@FOnReceiveEvent) - UIntPtr(Self);
end;

procedure TSB100PCX.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DSB100PCX;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TSB100PCX.GetControlInterface: _DSB100PCX;
begin
  CreateControl;
  Result := FIntf;
end;

function TSB100PCX.GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                 var dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                                 var dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.GetEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                           dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                           dwPassWord);
end;

function TSB100PCX.SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                 dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                                 dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                           dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                           dwPassWord);
end;

function TSB100PCX.DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                    dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber);
end;

function TSB100PCX.ReadSuperLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadSuperLogData(dwMachineNumber);
end;

function TSB100PCX.GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                   var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                                   var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                                   var dwManipulation: Integer; var dwBackupNumber: Integer; 
                                   var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                   var dwHour: Integer; var dwMinute: Integer): WordBool;
begin
  Result := DefaultInterface.GetSuperLogData(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                             dwSMachineNumber, dwGEnrollNumber, dwGMachineNumber, 
                                             dwManipulation, dwBackupNumber, dwYear, dwMonth, 
                                             dwDay, dwHour, dwMinute);
end;

function TSB100PCX.ReadGeneralLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGeneralLogData(dwMachineNumber);
end;

function TSB100PCX.GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                     var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                     var dwVerifyMode: Integer; var dwYear: Integer; 
                                     var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                     var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetGeneralLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                               dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, 
                                               dwDay, dwHour, dwMinute, dwSecond);
end;

function TSB100PCX.ReadAllSLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllSLogData(dwMachineNumber);
end;

function TSB100PCX.GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                  var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                                  var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                                  var dwManipulation: Integer; var dwBackupNumber: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllSLogData(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                            dwSMachineNumber, dwGEnrollNumber, dwGMachineNumber, 
                                            dwManipulation, dwBackupNumber, dwYear, dwMonth, dwDay, 
                                            dwHour, dwMinute);
end;

function TSB100PCX.ReadAllGLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogData(dwMachineNumber);
end;

function TSB100PCX.GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                  var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwYear: Integer; 
                                  var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                  var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                            dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, dwDay, 
                                            dwHour, dwMinute, dwSecond);
end;

function TSB100PCX.GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatus(dwMachineNumber, dwStatus, dwValue);
end;

function TSB100PCX.GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TSB100PCX.SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TSB100PCX.EnableDevice(dwMachineNumber: Integer; bFlag: Integer): WordBool;
begin
  Result := DefaultInterface.EnableDevice(dwMachineNumber, bFlag);
end;

function TSB100PCX.EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: Integer): WordBool;
begin
  Result := DefaultInterface.EnableUser(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                        dwBackupNumber, bFlag);
end;

function TSB100PCX.SetDeviceTime(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTime(dwMachineNumber);
end;

function TSB100PCX.GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; 
                                 var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                 var dwMinute: Integer; var dwDayOfWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceTime(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                           dwMinute, dwDayOfWeek);
end;

function TSB100PCX.PowerOnAllDevice: WordBool;
begin
  Result := DefaultInterface.PowerOnAllDevice;
end;

function TSB100PCX.PowerOffDevice(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.PowerOffDevice(dwMachineNumber);
end;

function TSB100PCX.ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                   dwMachinePrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.ModifyPrivilege(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                             dwBackupNumber, dwMachinePrivilege);
end;

function TSB100PCX.ReadAllUserID(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserID(dwMachineNumber);
end;

function TSB100PCX.GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                                var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllUserID(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                          dwBackupNumber, dwMachinePrivilege, dwEnable);
end;

function TSB100PCX.GetSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool;
begin
  Result := DefaultInterface.GetSerialNumber(dwMachineNumber, lpszSerialNumber);
end;

function TSB100PCX.ClearKeeperData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearKeeperData(dwMachineNumber);
end;

function TSB100PCX.GetLastError(var dwErrorCode: Integer): WordBool;
begin
  Result := DefaultInterface.GetLastError(dwErrorCode);
end;

function TSB100PCX.GetBackupNumber(dwMachineNumber: Integer): Integer;
begin
  Result := DefaultInterface.GetBackupNumber(dwMachineNumber);
end;

function TSB100PCX.GetProductCode(dwMachineNumber: Integer; var lpszProductCode: WideString): WordBool;
begin
  Result := DefaultInterface.GetProductCode(dwMachineNumber, lpszProductCode);
end;

function TSB100PCX.EmptyEnrollData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyEnrollData(dwMachineNumber);
end;

function TSB100PCX.EmptyGeneralLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyGeneralLogData(dwMachineNumber);
end;

function TSB100PCX.EmptySuperLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptySuperLogData(dwMachineNumber);
end;

function TSB100PCX.GetUserName(DeviceKind: Integer; dwMachineNumber: Integer; 
                               dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                               const lpszUserName: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetUserName(DeviceKind, dwMachineNumber, dwEnrollNumber, 
                                         dwEMachineNumber, lpszUserName);
end;

function TSB100PCX.SetUserName(DeviceKind: Integer; dwMachineNumber: Integer; 
                               dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                               const lpszUserName: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetUserName(DeviceKind, dwMachineNumber, dwEnrollNumber, 
                                         dwEMachineNumber, lpszUserName);
end;

function TSB100PCX.SetUserBirthday(dwMachineNumber: Integer; dwDIN: Integer; dwYear: Integer; 
                                   dwMonth: Integer; dwDay: Integer; dwFlag: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserBirthday(dwMachineNumber, dwDIN, dwYear, dwMonth, dwDay, dwFlag);
end;

function TSB100PCX.GetCompanyName(dwMachineNumber: Integer; const dwCompanyName: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetCompanyName(dwMachineNumber, dwCompanyName);
end;

function TSB100PCX.SetCompanyName(dwMachineNumber: Integer; vKind: Integer; 
                                  const dwCompanyName: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetCompanyName(dwMachineNumber, vKind, dwCompanyName);
end;

function TSB100PCX.GetDoorStatus(dwMachineNumber: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDoorStatus(dwMachineNumber, dwValue);
end;

function TSB100PCX.SetDoorStatus(dwMachineNumber: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDoorStatus(dwMachineNumber, dwValue);
end;

function TSB100PCX.GetBellTime(dwMachineNumber: Integer; var dwValue: Integer; 
                               var dwBellInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetBellTime(dwMachineNumber, dwValue, dwBellInfo);
end;

function TSB100PCX.SetBellTime(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetBellTime(dwMachineNumber, dwValue, dwBellInfo);
end;

function TSB100PCX.SetIPAddress(var lpszIPAddress: WideString; dwPortNumber: Integer; 
                                dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetIPAddress(lpszIPAddress, dwPortNumber, dwPassWord);
end;

function TSB100PCX.OpenCommPort(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.OpenCommPort(dwMachineNumber);
end;

procedure TSB100PCX.CloseCommPort;
begin
  DefaultInterface.CloseCommPort;
end;

procedure TSB100PCX.ConvertPassword(dwSrcPSW: Integer; dwDestPSW: Integer; dwLength: Integer);
begin
  DefaultInterface.ConvertPassword(dwSrcPSW, dwDestPSW, dwLength);
end;

function TSB100PCX.IsAllow(dwPrivilege: Integer; dwWhich: Integer): WordBool;
begin
  Result := DefaultInterface.IsAllow(dwPrivilege, dwWhich);
end;

function TSB100PCX.GetModel(dwMachineNumber: Integer; var dwdeviceKind: Integer; 
                            var dwDeviceVer: Integer): WordBool;
begin
  Result := DefaultInterface.GetModel(dwMachineNumber, dwdeviceKind, dwDeviceVer);
end;

function TSB100PCX.GetBackUpSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool;
begin
  Result := DefaultInterface.GetBackUpSerialNumber(dwMachineNumber, lpszSerialNumber);
end;

function TSB100PCX.SetGBK(dwMachineNumber: Integer; dwGBK: Integer): WordBool;
begin
  Result := DefaultInterface.SetGBK(dwMachineNumber, dwGBK);
end;

function TSB100PCX.SetValidPeriod(dwMachineNumber: Integer; dwStYear: Integer; dwStMonth: Integer; 
                                  dwStDate: Integer; dwEndYear: Integer; dwEndMonth: Integer; 
                                  dwEndDate: Integer): WordBool;
begin
  Result := DefaultInterface.SetValidPeriod(dwMachineNumber, dwStYear, dwStMonth, dwStDate, 
                                            dwEndYear, dwEndMonth, dwEndDate);
end;

function TSB100PCX.SetHoliday(dwMachineNumber: Integer; dwHolidayNum: Integer; 
                              var dwHolidayInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetHoliday(dwMachineNumber, dwHolidayNum, dwHolidayInfo);
end;

function TSB100PCX.SetPeriod(dwMachineNumber: Integer; dwPeriodNum: Integer; 
                             var dwPeriodInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetPeriod(dwMachineNumber, dwPeriodNum, dwPeriodInfo);
end;

function TSB100PCX.SetUserPeriod(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwPeriod0: Integer; dwPeriod1: Integer; dwPeriod2: Integer; 
                                 dwPeriod3: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserPeriod(dwMachineNumber, dwEnrollNumber, dwPeriod0, dwPeriod1, 
                                           dwPeriod2, dwPeriod3);
end;

function TSB100PCX.GetValidPeriod(dwMachineNumber: Integer; var dwStYear: Integer; 
                                  var dwStMonth: Integer; var dwStDate: Integer; 
                                  var dwEndYear: Integer; var dwEndMonth: Integer; 
                                  var dwEndDate: Integer): WordBool;
begin
  Result := DefaultInterface.GetValidPeriod(dwMachineNumber, dwStYear, dwStMonth, dwStDate, 
                                            dwEndYear, dwEndMonth, dwEndDate);
end;

function TSB100PCX.GetUserPeriod(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 var dwPeriod0: Integer; var dwPeriod1: Integer; 
                                 var dwPeriod2: Integer; var dwPeriod3: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserPeriod(dwMachineNumber, dwEnrollNumber, dwPeriod0, dwPeriod1, 
                                           dwPeriod2, dwPeriod3);
end;

function TSB100PCX.UserPeriodDelete(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool;
begin
  Result := DefaultInterface.UserPeriodDelete(dwMachineNumber, dwEnrollNumber);
end;

function TSB100PCX.SetDoorDelay(dwMachineNumber: Integer; dwDelay: Integer): WordBool;
begin
  Result := DefaultInterface.SetDoorDelay(dwMachineNumber, dwDelay);
end;

function TSB100PCX.SetLockType(dwMachineNumber: Integer; dwLockType: Integer): WordBool;
begin
  Result := DefaultInterface.SetLockType(dwMachineNumber, dwLockType);
end;

function TSB100PCX.SetOpenDoorOverTime(dwMachineNumber: Integer; dwOverTime: Integer): WordBool;
begin
  Result := DefaultInterface.SetOpenDoorOverTime(dwMachineNumber, dwOverTime);
end;

function TSB100PCX.SetIllegalTime(dwMachineNumber: Integer; dwIllegalTime: Integer): WordBool;
begin
  Result := DefaultInterface.SetIllegalTime(dwMachineNumber, dwIllegalTime);
end;

function TSB100PCX.GetPeriod(dwMachineNumber: Integer; var dwPeriodInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetPeriod(dwMachineNumber, dwPeriodInfo);
end;

function TSB100PCX.GetHoliday(dwMachineNumber: Integer; var dwHolidayInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetHoliday(dwMachineNumber, dwHolidayInfo);
end;

function TSB100PCX.ReadGeneralLogCount(dwMachineNumber: Integer; var dwCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGeneralLogCount(dwMachineNumber, dwCount);
end;

function TSB100PCX.ReadDoorStatus(dwMachineNumber: Integer; var dwStatus: Integer): WordBool;
begin
  Result := DefaultInterface.ReadDoorStatus(dwMachineNumber, dwStatus);
end;

function TSB100PCX.RegRestore(dwMachineNumber: Integer; dwEMachineNumber: Integer; 
                              const lpszFileName: OleVariant): WordBool;
begin
  Result := DefaultInterface.RegRestore(dwMachineNumber, dwEMachineNumber, lpszFileName);
end;

function TSB100PCX.RegBackup(dwMachineNumber: Integer; dwEMachineNumber: Integer; 
                             const lpszFileName: OleVariant): WordBool;
begin
  Result := DefaultInterface.RegBackup(dwMachineNumber, dwEMachineNumber, lpszFileName);
end;

function TSB100PCX.SetEnrollDataCS(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                   dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                                   dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataCS(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                             dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                             dwPassWord);
end;

function TSB100PCX.GetEnrollDataCS(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                   var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                                   var dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataCS(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                             dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                             dwPassWord);
end;

function TSB100PCX.ReadUserDataEmbed(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadUserDataEmbed(dwMachineNumber);
end;

function TSB100PCX.GetUserDataEmbed(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                    var dwEnrollNumber: Integer; var dwWorkDay: Integer; 
                                    var dwLateCount: Integer; var dwLastCount: Integer; 
                                    var dwWorkCount: Integer; var dwDoWorkCount: Integer; 
                                    var dwRestCount: Integer; var dwHolidayCount: Integer; 
                                    var dwWorkNumFrS: Integer; var dwWorkNumFrSFlag: Integer; 
                                    var dwWorkNumFrE: Integer; var dwWorkNumFrEFlag: Integer; 
                                    var dwCountFr: Integer; var dwWorkNumSeS: Integer; 
                                    var dwWorkNumSeSFlag: Integer; var dwWorkNumSeE: Integer; 
                                    var dwWorkNumSeEFlag: Integer; var dwCountSe: Integer; 
                                    var dwWorkNumThS: Integer; var dwWorkNumThSFlag: Integer; 
                                    var dwWorkNumThE: Integer; var dwWorkNumThEFlag: Integer; 
                                    var dwCountTh: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserDataEmbed(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                              dwWorkDay, dwLateCount, dwLastCount, dwWorkCount, 
                                              dwDoWorkCount, dwRestCount, dwHolidayCount, 
                                              dwWorkNumFrS, dwWorkNumFrSFlag, dwWorkNumFrE, 
                                              dwWorkNumFrEFlag, dwCountFr, dwWorkNumSeS, 
                                              dwWorkNumSeSFlag, dwWorkNumSeE, dwWorkNumSeEFlag, 
                                              dwCountSe, dwWorkNumThS, dwWorkNumThSFlag, 
                                              dwWorkNumThE, dwWorkNumThEFlag, dwCountTh);
end;

function TSB100PCX.ReadAllUserDataEmbed(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserDataEmbed(dwMachineNumber);
end;

function TSB100PCX.GetAllUserDataEmbed(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                       var dwEnrollNumber: Integer; var dwWorkDay: Integer; 
                                       var dwLateCount: Integer; var dwLastCount: Integer; 
                                       var dwWorkCount: Integer; var dwDoWorkCount: Integer; 
                                       var dwRestCount: Integer; var dwHolidayCount: Integer; 
                                       var dwWorkNumFrS: Integer; var dwWorkNumFrSFlag: Integer; 
                                       var dwWorkNumFrE: Integer; var dwWorkNumFrEFlag: Integer; 
                                       var dwCountFr: Integer; var dwWorkNumSeS: Integer; 
                                       var dwWorkNumSeSFlag: Integer; var dwWorkNumSeE: Integer; 
                                       var dwWorkNumSeEFlag: Integer; var dwCountSe: Integer; 
                                       var dwWorkNumThS: Integer; var dwWorkNumThSFlag: Integer; 
                                       var dwWorkNumThE: Integer; var dwWorkNumThEFlag: Integer; 
                                       var dwCountTh: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllUserDataEmbed(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                                 dwWorkDay, dwLateCount, dwLastCount, dwWorkCount, 
                                                 dwDoWorkCount, dwRestCount, dwHolidayCount, 
                                                 dwWorkNumFrS, dwWorkNumFrSFlag, dwWorkNumFrE, 
                                                 dwWorkNumFrEFlag, dwCountFr, dwWorkNumSeS, 
                                                 dwWorkNumSeSFlag, dwWorkNumSeE, dwWorkNumSeEFlag, 
                                                 dwCountSe, dwWorkNumThS, dwWorkNumThSFlag, 
                                                 dwWorkNumThE, dwWorkNumThEFlag, dwCountTh);
end;

function TSB100PCX.GetUserInfoEmbed(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                    dwEMachineNumber: Integer; const lpszDeptName: OleVariant; 
                                    const lpszUserName: OleVariant; var dwPrivilege: Integer; 
                                    var dwWorkNum: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserInfoEmbed(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              lpszDeptName, lpszUserName, dwPrivilege, dwWorkNum);
end;

function TSB100PCX.SetUserInfoEmbed(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                    dwEMachineNumber: Integer; const lpszDeptName: OleVariant; 
                                    const lpszUserName: OleVariant; dwPrivilege: Integer; 
                                    dwWorkNum: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserInfoEmbed(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              lpszDeptName, lpszUserName, dwPrivilege, dwWorkNum);
end;

function TSB100PCX.GetShiftDeptEmbed(dwMachineNumber: Integer; var ShiftDeptData: Integer): WordBool;
begin
  Result := DefaultInterface.GetShiftDeptEmbed(dwMachineNumber, ShiftDeptData);
end;

function TSB100PCX.SetShiftDeptEmbed(dwMachineNumber: Integer; var ShiftDeptData: Integer): WordBool;
begin
  Result := DefaultInterface.SetShiftDeptEmbed(dwMachineNumber, ShiftDeptData);
end;

function TSB100PCX.GetUserLongName(DeviceKind: Integer; dwMachineNumber: Integer; 
                                   dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                                   const lpszUserName: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetUserLongName(DeviceKind, dwMachineNumber, dwEnrollNumber, 
                                             dwEMachineNumber, lpszUserName);
end;

function TSB100PCX.SetUserLongName(DeviceKind: Integer; dwMachineNumber: Integer; 
                                   dwEnrollNumber: Integer; dwEMachineNumber: Integer; 
                                   const lpszUserName: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetUserLongName(DeviceKind, dwMachineNumber, dwEnrollNumber, 
                                             dwEMachineNumber, lpszUserName);
end;

function TSB100PCX.GetPassTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetPassTime(dwMachineNumber, dwPassInfo);
end;

function TSB100PCX.SetPassTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetPassTime(dwMachineNumber, dwPassInfo);
end;

function TSB100PCX.GetGroupTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetGroupTime(dwMachineNumber, dwPassInfo);
end;

function TSB100PCX.SetGroupTime(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetGroupTime(dwMachineNumber, dwPassInfo);
end;

function TSB100PCX.GetTimeZone(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetTimeZone(dwMachineNumber, dwPassInfo);
end;

function TSB100PCX.SetTimeZone(dwMachineNumber: Integer; var dwPassInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetTimeZone(dwMachineNumber, dwPassInfo);
end;

function TSB100PCX.GetUserCtrl(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               var dwZone: Integer; var dwStYear: Integer; var dwStMonth: Integer; 
                               var dwStDay: Integer; var dwEndYear: Integer; 
                               var dwEndMonth: Integer; var dwEndDay: Integer; var dwCtrl: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserCtrl(dwMachineNumber, dwEnrollNumber, dwZone, dwStYear, 
                                         dwStMonth, dwStDay, dwEndYear, dwEndMonth, dwEndDay, dwCtrl);
end;

function TSB100PCX.SetUserCtrl(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwZone: Integer; 
                               dwStYear: Integer; dwStMonth: Integer; dwStDay: Integer; 
                               dwEndYear: Integer; dwEndMonth: Integer; dwEndDay: Integer; 
                               dwCtrl: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserCtrl(dwMachineNumber, dwEnrollNumber, dwZone, dwStYear, 
                                         dwStMonth, dwStDay, dwEndYear, dwEndMonth, dwEndDay, dwCtrl);
end;

function TSB100PCX.GetDoorKey(dwMachineNumber: Integer; var dwOpenDoorTime: Integer; 
                              var dwOpenAlarmTime: Integer; var dwForceOpenTime: Integer; 
                              var dwInputAlarm1: Integer; var dwInputAlarm2: Integer; 
                              var dwForceAlarmFlag: Integer; var dwForceAlarmAct: Integer; 
                              var dwVrefyMode: Integer; var dwUserPeriod: Integer; 
                              var dwWeigand: Integer): WordBool;
begin
  Result := DefaultInterface.GetDoorKey(dwMachineNumber, dwOpenDoorTime, dwOpenAlarmTime, 
                                        dwForceOpenTime, dwInputAlarm1, dwInputAlarm2, 
                                        dwForceAlarmFlag, dwForceAlarmAct, dwVrefyMode, 
                                        dwUserPeriod, dwWeigand);
end;

function TSB100PCX.SetDoorKey(dwMachineNumber: Integer; dwOpenDoorTime: Integer; 
                              dwOpenAlarmTime: Integer; dwForceOpenTime: Integer; 
                              dwInputAlarm1: Integer; dwInputAlarm2: Integer; 
                              dwForceAlarmFlag: Integer; dwForceAlarmAct: Integer; 
                              dwVrefyMode: Integer; dwUserPeriod: Integer; dwWeigand: Integer): WordBool;
begin
  Result := DefaultInterface.SetDoorKey(dwMachineNumber, dwOpenDoorTime, dwOpenAlarmTime, 
                                        dwForceOpenTime, dwInputAlarm1, dwInputAlarm2, 
                                        dwForceAlarmFlag, dwForceAlarmAct, dwVrefyMode, 
                                        dwUserPeriod, dwWeigand);
end;

function TSB100PCX.LogWatchGet(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                               var dwVerifyMode: Integer; var dwEvent: Integer; 
                               var dwDoorStatus: Integer): WordBool;
begin
  Result := DefaultInterface.LogWatchGet(dwMachineNumber, dwEnrollNumber, dwYear, dwMonth, dwDay, 
                                         dwHour, dwMinute, dwSecond, dwVerifyMode, dwEvent, 
                                         dwDoorStatus);
end;

function TSB100PCX.ReadDrGeneralLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadDrGeneralLogData(dwMachineNumber);
end;

function TSB100PCX.GetDrGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                       var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                       var dwVerifyMode: Integer; var dwYear: Integer; 
                                       var dwMonth: Integer; var dwDay: Integer; 
                                       var dwHour: Integer; var dwMinute: Integer; 
                                       var dwEvent: Integer): WordBool;
begin
  Result := DefaultInterface.GetDrGeneralLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                                 dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, 
                                                 dwDay, dwHour, dwMinute, dwEvent);
end;

function TSB100PCX.ReadDrAllGLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadDrAllGLogData(dwMachineNumber);
end;

function TSB100PCX.GetDrAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                    var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                    var dwVerifyMode: Integer; var dwYear: Integer; 
                                    var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                    var dwMinute: Integer; var dwEvent: Integer): WordBool;
begin
  Result := DefaultInterface.GetDrAllGLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                              dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, 
                                              dwDay, dwHour, dwMinute, dwEvent);
end;

function TSB100PCX.SetComWait(dwWait: Integer): WordBool;
begin
  Result := DefaultInterface.SetComWait(dwWait);
end;

function TSB100PCX.SetTcpWait(dwWait: Integer): WordBool;
begin
  Result := DefaultInterface.SetTcpWait(dwWait);
end;

function TSB100PCX.ClockFormatSet(dwMachineNumber: Integer; dwFormatCode: Integer): WordBool;
begin
  Result := DefaultInterface.ClockFormatSet(dwMachineNumber, dwFormatCode);
end;

function TSB100PCX.SetUserFuncMsg(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                  dwMsgNumber: Integer; const lpszMsg: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetUserFuncMsg(dwMachineNumber, dwEnrollNumber, dwMsgNumber, lpszMsg);
end;

function TSB100PCX.SetFuncMsg(dwMachineNumber: Integer; dwFuncKey: Integer; 
                              dwFuncKeyEmployee: Integer; dwDataWidth: Integer; 
                              dwDecimalWidth: Integer; const lpszMsg: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetFuncMsg(dwMachineNumber, dwFuncKey, dwFuncKeyEmployee, dwDataWidth, 
                                        dwDecimalWidth, lpszMsg);
end;

function TSB100PCX.SetDaylightSavings(dwMachineNumber: Integer; dwStartMonth: Integer; 
                                      dwStartDay: Integer; dwStartYear: Integer; dwAmount: Integer; 
                                      dwEndMonth: Integer; dwEndDay: Integer; dwEndYear: Integer): WordBool;
begin
  Result := DefaultInterface.SetDaylightSavings(dwMachineNumber, dwStartMonth, dwStartDay, 
                                                dwStartYear, dwAmount, dwEndMonth, dwEndDay, 
                                                dwEndYear);
end;

function TSB100PCX.ReadGeneralLogDataFunc(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGeneralLogDataFunc(dwMachineNumber);
end;

function TSB100PCX.GetGeneralLogDataFunc(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                         var dwEnrollNumber: Integer; 
                                         var dwEMachineNumber: Integer; var dwVerifyMode: Integer; 
                                         var dwYear: Integer; var dwMonth: Integer; 
                                         var dwDay: Integer; var dwHour: Integer; 
                                         var dwMinute: Integer; var dwFuncKey: Integer; 
                                         var dwResult: Integer; var dwInputData: Integer; 
                                         var dwDecimal: Integer): WordBool;
begin
  Result := DefaultInterface.GetGeneralLogDataFunc(dwMachineNumber, dwTMachineNumber, 
                                                   dwEnrollNumber, dwEMachineNumber, dwVerifyMode, 
                                                   dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                                   dwFuncKey, dwResult, dwInputData, dwDecimal);
end;

function TSB100PCX.ReadAllGLogDataFunc(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogDataFunc(dwMachineNumber);
end;

function TSB100PCX.GetAllGLogDataFunc(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                      var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                      var dwVerifyMode: Integer; var dwYear: Integer; 
                                      var dwMonth: Integer; var dwDay: Integer; 
                                      var dwHour: Integer; var dwMinute: Integer; 
                                      var dwFuncKey: Integer; var dwResult: Integer; 
                                      var dwInputData: Integer; var dwDecimal: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogDataFunc(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                                dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, 
                                                dwDay, dwHour, dwMinute, dwFuncKey, dwResult, 
                                                dwInputData, dwDecimal);
end;

function TSB100PCX.EnableFuncKey(dwMachineNumber: Integer; dwFuncFlag: Integer): WordBool;
begin
  Result := DefaultInterface.EnableFuncKey(dwMachineNumber, dwFuncFlag);
end;

function TSB100PCX.SetDeviceTimeEx(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                                   dwDay: Integer; dwHour: Integer; dwMinute: Integer; 
                                   dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTimeEx(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                             dwMinute, dwSecond);
end;

function TSB100PCX.GetBellTime20(dwMachineNumber: Integer; var dwValue: Integer; 
                                 var dwBellInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetBellTime20(dwMachineNumber, dwValue, dwBellInfo);
end;

function TSB100PCX.SetBellTime20(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetBellTime20(dwMachineNumber, dwValue, dwBellInfo);
end;

function TSB100PCX.DWDatetimeDecode(dwDatetime: Integer; var dwYear: Integer; var dwMonth: Integer; 
                                    var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                                    var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.DWDatetimeDecode(dwDatetime, dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                              dwSecond);
end;

function TSB100PCX.DWDatetimeEncode(dwYear: Integer; dwMonth: Integer; dwDay: Integer; 
                                    dwHour: Integer; dwMinute: Integer; dwSecond: Integer; 
                                    var dwDatetime: Integer): WordBool;
begin
  Result := DefaultInterface.DWDatetimeEncode(dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                              dwDatetime);
end;

function TSB100PCX.ReadAllUserRestDataEmbed(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserRestDataEmbed(dwMachineNumber);
end;

function TSB100PCX.GetAllUserRestDataEmbed(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                           var dwWorkDay: Integer; var dwHolidayDays: Integer; 
                                           var dwType: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllUserRestDataEmbed(dwMachineNumber, dwEnrollNumber, dwWorkDay, 
                                                     dwHolidayDays, dwType);
end;

function TSB100PCX.ReadAllUserMonthDataEmbed(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserMonthDataEmbed(dwMachineNumber);
end;

function TSB100PCX.GetAllUserMonthDataEmbed(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                            var dwWorkDay: Integer; var dwLateCount: Integer; 
                                            var dwLastCount: Integer; var dwWorkCount: Integer; 
                                            var dwDoWorkCount: Integer; var dwRestCount: Integer; 
                                            var dwHolidayCount: Integer; 
                                            var dwWorkCountMust: Integer; 
                                            var dwWorkCountAbsence: Integer; 
                                            var dwHolidayDays0: Integer; 
                                            var dwHolidayDays1: Integer; 
                                            var dwHolidayDays2: Integer; 
                                            var dwHolidayDays3: Integer; 
                                            var dwHolidayDays4: Integer; 
                                            var dwHolidayDays5: Integer; 
                                            var dwHolidayDays6: Integer; var dwHolidayDays7: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllUserMonthDataEmbed(dwMachineNumber, dwEnrollNumber, dwWorkDay, 
                                                      dwLateCount, dwLastCount, dwWorkCount, 
                                                      dwDoWorkCount, dwRestCount, dwHolidayCount, 
                                                      dwWorkCountMust, dwWorkCountAbsence, 
                                                      dwHolidayDays0, dwHolidayDays1, 
                                                      dwHolidayDays2, dwHolidayDays3, 
                                                      dwHolidayDays4, dwHolidayDays5, 
                                                      dwHolidayDays6, dwHolidayDays7);
end;

function TSB100PCX.GetPersonVerify(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   var VerifyMode: Integer): WordBool;
begin
  Result := DefaultInterface.GetPersonVerify(dwMachineNumber, dwEnrollNumber, VerifyMode);
end;

function TSB100PCX.SetPersonVerify(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                   VerifyMode: Integer): WordBool;
begin
  Result := DefaultInterface.SetPersonVerify(dwMachineNumber, dwEnrollNumber, VerifyMode);
end;

function TSB100PCX.Open_EXT(dwMachineNumber: Integer; dwCommMode: Integer; dwPassWord: Integer; 
                            lParam1: Integer; lParam2: Integer): WordBool;
begin
  Result := DefaultInterface.Open_EXT(dwMachineNumber, dwCommMode, dwPassWord, lParam1, lParam2);
end;

procedure TSB100PCX.Close_EXT;
begin
  DefaultInterface.Close_EXT;
end;

function TSB100PCX.ReadAllUserID_EXT: Integer;
begin
  Result := DefaultInterface.ReadAllUserID_EXT;
end;

function TSB100PCX.GetUserInfo_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserInfo_EXT(dwUserID, dwInfo, pData);
end;

function TSB100PCX.SetUserInfo_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserInfo_EXT(dwUserID, dwInfo, pData);
end;

function TSB100PCX.GetLogCount_EXT(dwLogType: Integer; var dwCount: Integer; var dwReadPos: Integer): WordBool;
begin
  Result := DefaultInterface.GetLogCount_EXT(dwLogType, dwCount, dwReadPos);
end;

function TSB100PCX.GetSuperLog_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                                   var pData: Integer): Integer;
begin
  Result := DefaultInterface.GetSuperLog_EXT(dwStartPos, dwCount, dwMarkReadPos, pData);
end;

function TSB100PCX.GetGeneralLog_EXT(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                                     var pData: Integer): Integer;
begin
  Result := DefaultInterface.GetGeneralLog_EXT(dwStartPos, dwCount, dwMarkReadPos, pData);
end;

function TSB100PCX.GetDeviceStatus_EXT(dwStatus: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatus_EXT(dwStatus, pData);
end;

function TSB100PCX.GetDeviceInfo_EXT(dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfo_EXT(dwInfo, pData);
end;

function TSB100PCX.SetDeviceInfo_EXT(dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo_EXT(dwInfo, pData);
end;

function TSB100PCX.EnableDevice_EXT(bEnable: Integer): WordBool;
begin
  Result := DefaultInterface.EnableDevice_EXT(bEnable);
end;

function TSB100PCX.PowerControl_EXT(dwPowerAction: Integer): WordBool;
begin
  Result := DefaultInterface.PowerControl_EXT(dwPowerAction);
end;

function TSB100PCX.EmptyData_EXT(dwDataKind: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyData_EXT(dwDataKind);
end;

function TSB100PCX.UpgradeFirmware_EXT(var pData: Integer; nSize: Integer): WordBool;
begin
  Result := DefaultInterface.UpgradeFirmware_EXT(pData, nSize);
end;

function TSB100PCX.GetLastError_EXT: Integer;
begin
  Result := DefaultInterface.GetLastError_EXT;
end;

function TSB100PCX.GetAllUserID_EXT(var pAllIDInfo: Integer): Integer;
begin
  Result := DefaultInterface.GetAllUserID_EXT(pAllIDInfo);
end;

function TSB100PCX.GetDataFile_EXT(dwfiletype: Integer; const pfilename: WideString; 
                                   var pData: Integer; nSize: Integer): Integer;
begin
  Result := DefaultInterface.GetDataFile_EXT(dwfiletype, pfilename, pData, nSize);
end;

function TSB100PCX.SetDataFile_EXT(dwfiletype: Integer; const pfilename: WideString; 
                                   var pData: Integer; nSize: Integer): WordBool;
begin
  Result := DefaultInterface.SetDataFile_EXT(dwfiletype, pfilename, pData, nSize);
end;

function TSB100PCX.GetPhotoList_EXT(dwStartPos: Integer; dwCount: Integer; var pData: Integer): Integer;
begin
  Result := DefaultInterface.GetPhotoList_EXT(dwStartPos, dwCount, pData);
end;

function TSB100PCX.StartEventCapture_EXT(srcIP: Integer): WordBool;
begin
  Result := DefaultInterface.StartEventCapture_EXT(srcIP);
end;

procedure TSB100PCX.StopEventCapture_EXT;
begin
  DefaultInterface.StopEventCapture_EXT;
end;

function TSB100PCX.SearchSerialBaudrate_EXT(dwPortNumber: Integer; dwMachineNumber: Integer; 
                                            dwPassWord: Integer): Integer;
begin
  Result := DefaultInterface.SearchSerialBaudrate_EXT(dwPortNumber, dwMachineNumber, dwPassWord);
end;

function TSB100PCX.GetSystemNo(dwMachineNumber: Integer; dwCustomNo: Integer; 
                               var lpszSystemNo: WideString): WordBool;
begin
  Result := DefaultInterface.GetSystemNo(dwMachineNumber, dwCustomNo, lpszSystemNo);
end;

function TSB100PCX.StartListen(dwPort: Integer): WordBool;
begin
  Result := DefaultInterface.StartListen(dwPort);
end;

function TSB100PCX.EndListen(dwPort: Integer): WordBool;
begin
  Result := DefaultInterface.EndListen(dwPort);
end;

function TSB100PCX.ListenOn(dwMachineID: Integer): WordBool;
begin
  Result := DefaultInterface.ListenOn(dwMachineID);
end;

function TSB100PCX.ListenOff(dwMachineID: Integer): WordBool;
begin
  Result := DefaultInterface.ListenOff(dwMachineID);
end;

function TSB100PCX.GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                    dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                    var dwMachinePrivilege: Integer; 
                                    var lpszEnrollData: WideString; var lpszPassWord: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStr(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber, dwMachinePrivilege, lpszEnrollData, 
                                              lpszPassWord);
end;

function TSB100PCX.SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                    dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                    dwMachinePrivilege: Integer; var lpszEnrollData: WideString; 
                                    var lpszPassWord: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStr(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber, dwMachinePrivilege, lpszEnrollData, 
                                              lpszPassWord);
end;

function TSB100PCX.SetEnrollDataStr_EXT(dwUserID: Integer; dwInfo: Integer; 
                                        var lpszEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStr_EXT(dwUserID, dwInfo, lpszEnrollData);
end;

function TSB100PCX.ReadOneUserID(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 var dwCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadOneUserID(dwMachineNumber, dwEnrollNumber, dwCount);
end;

function TSB100PCX.GetOperationError(dwMachineNumber: Integer; var dwErrorCode: Integer): WordBool;
begin
  Result := DefaultInterface.GetOperationError(dwMachineNumber, dwErrorCode);
end;

function TSB100PCX.GetInitSetting(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.GetInitSetting(dwMachineNumber, FileName);
end;

function TSB100PCX.SetInitSetting(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SetInitSetting(dwMachineNumber, FileName);
end;

function TSB100PCX.UpgradeFirmware(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.UpgradeFirmware(dwMachineNumber, FileName);
end;

function TSB100PCX.DeviceReset(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DeviceReset(dwMachineNumber);
end;

procedure TSB100PCX.UsbConnectClientLock(dwMachineNumber: Integer; dwLock: Integer);
begin
  DefaultInterface.UsbConnectClientLock(dwMachineNumber, dwLock);
end;

procedure TSB100PCX.GetGLogDataThread(dwLogType: Integer; dwDeviceID: Integer; 
                                      const IPAddress: WideString; dwPortNumber: Integer; 
                                      dwPassWord: Integer);
begin
  DefaultInterface.GetGLogDataThread(dwLogType, dwDeviceID, IPAddress, dwPortNumber, dwPassWord);
end;

function TSB100PCX.SendName2Enroll(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                   const UserNameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SendName2Enroll(dwMachineNumber, dwEnrollID, UserNameStr);
end;

function TSB100PCX.SendEnrollData2Device(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                         dwBackupNumber: Integer; dwPrivilege: Integer; 
                                         dwVerifyMode: Integer; const UserNameStr: WideString; 
                                         const EnrollDataStr: WideString): WordBool;
begin
  Result := DefaultInterface.SendEnrollData2Device(dwMachineNumber, dwEnrollNumber, dwBackupNumber, 
                                                   dwPrivilege, dwVerifyMode, UserNameStr, 
                                                   EnrollDataStr);
end;

function TSB100PCX.GetUserInfoEXT64(const UserID: WideString; dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserInfoEXT64(UserID, dwInfo, pData);
end;

function TSB100PCX.SetUserInfoEXT64(const UserID: WideString; dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserInfoEXT64(UserID, dwInfo, pData);
end;

function TSB100PCX.GetAllUserIDEXT64(var pAllIDInfo: Integer): Integer;
begin
  Result := DefaultInterface.GetAllUserIDEXT64(pAllIDInfo);
end;

function TSB100PCX.GetSuperLogEXT64(dwStartPos: Integer; dwCount: Integer; dwMarkReadPos: Integer; 
                                    var pData: Integer): Integer;
begin
  Result := DefaultInterface.GetSuperLogEXT64(dwStartPos, dwCount, dwMarkReadPos, pData);
end;

function TSB100PCX.GetGeneralLogEXT64(dwStartPos: Integer; dwCount: Integer; 
                                      dwMarkReadPos: Integer; var pData: Integer): Integer;
begin
  Result := DefaultInterface.GetGeneralLogEXT64(dwStartPos, dwCount, dwMarkReadPos, pData);
end;

function TSB100PCX.ReadAllUserIDEXT64: Integer;
begin
  Result := DefaultInterface.ReadAllUserIDEXT64;
end;

function TSB100PCX.SetPersonalIDEXT64(const UserID: WideString; const PersonalID: WideString; 
                                      const CodeStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetPersonalIDEXT64(UserID, PersonalID, CodeStr);
end;

function TSB100PCX.GetPersonalIDEXT64(const UserID: WideString; const PersonalID: WideString; 
                                      const CodeStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetPersonalIDEXT64(UserID, PersonalID, CodeStr);
end;

function TSB100PCX.ReadGLogDataEx(dwMachineNumber: Integer; const BeginTime: WideString; 
                                  const EndTime: WideString; var Count: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGLogDataEx(dwMachineNumber, BeginTime, EndTime, Count);
end;

procedure TSB100PCX.ReadGLogDataThreadEx(dwMachineNumber: Integer; const BeginTime: WideString; 
                                         const EndTime: WideString);
begin
  DefaultInterface.ReadGLogDataThreadEx(dwMachineNumber, BeginTime, EndTime);
end;

function TSB100PCX.SetUserInfo(dwMachineNumber: Integer; dwInfoType: Integer; 
                               const InfoValueStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserInfo(dwMachineNumber, dwInfoType, InfoValueStr);
end;

function TSB100PCX.GetUserInfo(dwMachineNumber: Integer; dwInfoType: Integer; 
                               const InfoValueStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserInfo(dwMachineNumber, dwInfoType, InfoValueStr);
end;

function TSB100PCX.GetEnrollNumberHeadStringList(dwMachineNumber: Integer; 
                                                 var ValueListStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollNumberHeadStringList(dwMachineNumber, ValueListStr);
end;

function TSB100PCX.SetEnrollNumberHeadStringList(dwMachineNumber: Integer; 
                                                 const ValueListStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollNumberHeadStringList(dwMachineNumber, ValueListStr);
end;

function TSB100PCX.WriteRegInfoUFileEXT(dwStartOrEnd: Integer; const FileName: WideString; 
                                        Count: Integer): Integer;
begin
  Result := DefaultInterface.WriteRegInfoUFileEXT(dwStartOrEnd, FileName, Count);
end;

procedure TSB100PCX.WriteOneRegInfo2UFileEXT(const UserID: WideString; 
                                             const BackupNumber: WideString; 
                                             const FingerData: WideString; 
                                             const UserName: WideString; const Reserve: WideString);
begin
  DefaultInterface.WriteOneRegInfo2UFileEXT(UserID, BackupNumber, FingerData, UserName, Reserve);
end;

function TSB100PCX.WritePersonalIDUFileEXT(dwStartOrEnd: Integer; const FileName: WideString; 
                                           Count: Integer): Integer;
begin
  Result := DefaultInterface.WritePersonalIDUFileEXT(dwStartOrEnd, FileName, Count);
end;

procedure TSB100PCX.WriteOnePersonalID2UFileEXT(const UserID: WideString; 
                                                const PersonalID: WideString; 
                                                const Reserve: WideString);
begin
  DefaultInterface.WriteOnePersonalID2UFileEXT(UserID, PersonalID, Reserve);
end;

procedure TSB100PCX.SetRealTimeLogGetEnable(dwEnable: Integer);
begin
  DefaultInterface.SetRealTimeLogGetEnable(dwEnable);
end;

function TSB100PCX.SetUserNameStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                  var lpUserName: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserNameStr(dwMachineNumber, dwEnrollNumber, lpUserName);
end;

function TSB100PCX.GetPersonalTimeInfo_EXT(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                           var StartDateTimeStr: WideString; 
                                           var LunchTimeStr: WideString; var RestTimeStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetPersonalTimeInfo_EXT(dwMachineNumber, dwEnrollNumber, 
                                                     StartDateTimeStr, LunchTimeStr, RestTimeStr);
end;

function TSB100PCX.SetPersonalTimeInfo_EXT(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                           var StartDateTimeStr: WideString; 
                                           var LunchTimeStr: WideString; var RestTimeStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetPersonalTimeInfo_EXT(dwMachineNumber, dwEnrollNumber, 
                                                     StartDateTimeStr, LunchTimeStr, RestTimeStr);
end;

function TSB100PCX.GetGeneralLog_DeptOrJobID_EXT(dwStartPos: Integer; dwCount: Integer; 
                                                 dwMarkReadPos: Integer; var pData: Integer): Integer;
begin
  Result := DefaultInterface.GetGeneralLog_DeptOrJobID_EXT(dwStartPos, dwCount, dwMarkReadPos, pData);
end;

function TSB100PCX.GetDeviceMode_EXT(dwMachineNumber: Integer; var dwMode: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceMode_EXT(dwMachineNumber, dwMode);
end;

function TSB100PCX.SetDeviceMode_EXT(dwMachineNumber: Integer; dwMode: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceMode_EXT(dwMachineNumber, dwMode);
end;

function TSB100PCX.ReadLog_DeptOrJobID_EXT(dwStartPos: Integer; dwCount: Integer; 
                                           dwMarkReadPos: Integer): Integer;
begin
  Result := DefaultInterface.ReadLog_DeptOrJobID_EXT(dwStartPos, dwCount, dwMarkReadPos);
end;

function TSB100PCX.GetLog_DeptOrJobID_EXT(var dwID: Integer; var dwAction: Integer; 
                                          var dwSupData: Integer; var dwYear: Integer; 
                                          var dwMonth: Integer; var dwDay: Integer; 
                                          var dwHour: Integer; var dwMin: Integer; 
                                          var dwSec: Integer; var JobID: WideString): WordBool;
begin
  Result := DefaultInterface.GetLog_DeptOrJobID_EXT(dwID, dwAction, dwSupData, dwYear, dwMonth, 
                                                    dwDay, dwHour, dwMin, dwSec, JobID);
end;

function TSB100PCX.GetAllUserID_DeptOrJobID_EXT(var pAllIDInfo: WideString): WordBool;
begin
  Result := DefaultInterface.GetAllUserID_DeptOrJobID_EXT(pAllIDInfo);
end;

function TSB100PCX.GetDeviceInfo_DeptOrJobID_EXT(dwInfo: Integer; var pData: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfo_DeptOrJobID_EXT(dwInfo, pData);
end;

function TSB100PCX.SetDeviceInfo_DeptOrJobID_EXT(dwInfo: Integer; var pData: WideString): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo_DeptOrJobID_EXT(dwInfo, pData);
end;

function TSB100PCX.GetUserInfo_DeptOrJobID_EXT(dwUserID: Integer; dwInfo: Integer; 
                                               var pData: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserInfo_DeptOrJobID_EXT(dwUserID, dwInfo, pData);
end;

function TSB100PCX.SetUserInfo_DeptOrJobID_EXT(dwUserID: Integer; dwInfo: Integer; 
                                               var pData: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserInfo_DeptOrJobID_EXT(dwUserID, dwInfo, pData);
end;

function TSB100PCX.GetDeviceStatus_DeptOrJobID_EXT(dwStatus: Integer; var pData: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatus_DeptOrJobID_EXT(dwStatus, pData);
end;

function TSB100PCX.AddOneDeviceWatch_EXT(dwMachineNumber: Integer; var lpszIPAddress: WideString; 
                                         dwPortNumber: Integer; dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.AddOneDeviceWatch_EXT(dwMachineNumber, lpszIPAddress, dwPortNumber, 
                                                   dwPassWord);
end;

function TSB100PCX.EndDeviceWatch_EXT: WordBool;
begin
  Result := DefaultInterface.EndDeviceWatch_EXT;
end;

function TSB100PCX.DeviceOperateJS(dwMachineNumber: Integer; dwOperType: Integer; 
                                   const Param: WideString): WideString;
begin
  Result := DefaultInterface.DeviceOperateJS(dwMachineNumber, dwOperType, Param);
end;

function TSB100PCX.OpenJS(dwMachineNumber: Integer; dwCommMode: Integer; dwPassWord: Integer; 
                          const Param1: WideString; const Param2: WideString): WordBool;
begin
  Result := DefaultInterface.OpenJS(dwMachineNumber, dwCommMode, dwPassWord, Param1, Param2);
end;

function TSB100PCX.SendUserInfo(dwMachineNumber: Integer; Enable: Integer; 
                                const sEnrollNumber: WideString; const sCardNumber: WideString; 
                                dwPrivilege: Integer; const sName: WideString): WordBool;
begin
  Result := DefaultInterface.SendUserInfo(dwMachineNumber, Enable, sEnrollNumber, sCardNumber, 
                                          dwPrivilege, sName);
end;

function TSB100PCX.StartEventCaptureEx_EXT(Port: Integer): WordBool;
begin
  Result := DefaultInterface.StartEventCaptureEx_EXT(Port);
end;

function TSB100PCX.SetDeviceInfo_MX(dwMachineNumber: Integer; const sIP: WideString; 
                                    const sSubnetMask: WideString; const sGatewayIP: WideString): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo_MX(dwMachineNumber, sIP, sSubnetMask, sGatewayIP);
end;

function TSB100PCX.ReadRecord(dwMachineNumber: Integer; const StartDateTime: WideString; 
                              const EndDateTime: WideString; var RecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadRecord(dwMachineNumber, StartDateTime, EndDateTime, RecordCount);
end;

function TSB100PCX.GetSystemValue(Key: Integer; var Value: Integer): WordBool;
begin
  Result := DefaultInterface.GetSystemValue(Key, Value);
end;

function TSB100PCX.SetSystemValue(Key: Integer; Value: Integer): WordBool;
begin
  Result := DefaultInterface.SetSystemValue(Key, Value);
end;

function TSB100PCX.ReadUDiskLogFile(const sFileName: WideString): Integer;
begin
  Result := DefaultInterface.ReadUDiskLogFile(sFileName);
end;

function TSB100PCX.GetUDiskLogFile(var dwDeviceID: Integer; var sUserID: WideString; 
                                   var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                   var dwHour: Integer; var dwMin: Integer; var dwSecond: Integer; 
                                   var dwMode: Integer; var dwIndex: Integer): WordBool;
begin
  Result := DefaultInterface.GetUDiskLogFile(dwDeviceID, sUserID, dwYear, dwMonth, dwDay, dwHour, 
                                             dwMin, dwSecond, dwMode, dwIndex);
end;

function TSB100PCX.ReadUDiskLogFileEx(const sFileName: WideString): Integer;
begin
  Result := DefaultInterface.ReadUDiskLogFileEx(sFileName);
end;

function TSB100PCX.GetUDiskLogFileEx(var dwDeviceID: Integer; var sUserID: WideString; 
                                     var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                     var dwHour: Integer; var dwMin: Integer; 
                                     var dwSecond: Integer; var dwMode: Integer; 
                                     var dwIndex: Integer): WordBool;
begin
  Result := DefaultInterface.GetUDiskLogFileEx(dwDeviceID, sUserID, dwYear, dwMonth, dwDay, dwHour, 
                                               dwMin, dwSecond, dwMode, dwIndex);
end;

procedure TSB100PCX.ReadGLogDataThreadHR(const DeviceList: WideString; const BeginTime: WideString; 
                                         const EndTime: WideString; ThreadCount: Integer);
begin
  DefaultInterface.ReadGLogDataThreadHR(DeviceList, BeginTime, EndTime, ThreadCount);
end;

function TSB100PCX.SetUpdateAddr(dwMachineNumber: Integer; dwOperType: Integer; 
                                 var lpszAddr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUpdateAddr(dwMachineNumber, dwOperType, lpszAddr);
end;

function TSB100PCX.SetUserNameStr850(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                     var lpUserName: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserNameStr850(dwMachineNumber, dwEnrollNumber, lpUserName);
end;

function TSB100PCX.GetUserNameStr850(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                     var lpUserName: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserNameStr850(dwMachineNumber, dwEnrollNumber, lpUserName);
end;

function TSB100PCX.FormatEnrollData(var Src: WideString; var Des: WideString): WordBool;
begin
  Result := DefaultInterface.FormatEnrollData(Src, Des);
end;

function TSB100PCX.CheckGetLogByTime(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.CheckGetLogByTime(dwMachineNumber);
end;

function TSB100PCX.testBlock(BlockTime: Integer): WordBool;
begin
  Result := DefaultInterface.testBlock(BlockTime);
end;

function TSB100PCX.GetUserNameStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                  var lpUserName: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserNameStr(dwMachineNumber, dwEnrollNumber, lpUserName);
end;

function TSB100PCX.GetUserInfo10079_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserInfo10079_EXT(dwUserID, dwInfo, pData);
end;

function TSB100PCX.SetUserInfo10079_EXT(dwUserID: Integer; dwInfo: Integer; var pData: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserInfo10079_EXT(dwUserID, dwInfo, pData);
end;

function TSB100PCX.ReadFileRegInfo30079(const FileName: WideString; MaxCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadFileRegInfo30079(FileName, MaxCount);
end;

function TSB100PCX.WriteRegInfoUFile30079(dwStartOrEnd: Integer; const FileName: WideString; 
                                          Count: Integer): Integer;
begin
  Result := DefaultInterface.WriteRegInfoUFile30079(dwStartOrEnd, FileName, Count);
end;

procedure TSB100PCX.WriteOneRegInfo2UFile30079(const UserID: WideString; 
                                               const BackupNumber: WideString; 
                                               const FingerData: WideString; 
                                               const UserName: WideString; const Reserve: WideString);
begin
  DefaultInterface.WriteOneRegInfo2UFile30079(UserID, BackupNumber, FingerData, UserName, Reserve);
end;

procedure TSB100PCX.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TSB100PCX]);
end;

end.
