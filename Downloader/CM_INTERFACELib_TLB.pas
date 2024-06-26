unit CM_INTERFACELib_TLB;

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
// File generated on 18/02/2024 11:20:01 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\MIS Attendance System\Equ\CM_Interface.ocx (1)
// LIBID: {FDD1F007-E414-40B2-924C-79626BE9D6BE}
// LCID: 0
// Helpfile: C:\Program Files (x86)\MIS Attendance System\Equ\CM_Interface.hlp 
// HelpString: CM_Interface ActiveX Control module
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
  CM_INTERFACELibMajorVersion = 1;
  CM_INTERFACELibMinorVersion = 0;

  LIBID_CM_INTERFACELib: TGUID = '{FDD1F007-E414-40B2-924C-79626BE9D6BE}';

  DIID__DCM_Interface: TGUID = '{C3C907CC-4262-4157-B275-0D1010C4EB76}';
  DIID__DCM_InterfaceEvents: TGUID = '{6324650B-8BAD-4F8D-AB12-05EBAC938C59}';
  CLASS_CM_Interface: TGUID = '{D2FDB5F6-2C07-45E5-B648-AB055861A466}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DCM_Interface = dispinterface;
  _DCM_InterfaceEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CM_Interface = _DCM_Interface;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}
  PWideString1 = ^WideString; {*}


// *********************************************************************//
// DispIntf:  _DCM_Interface
// Flags:     (4112) Hidden Dispatchable
// GUID:      {C3C907CC-4262-4157-B275-0D1010C4EB76}
// *********************************************************************//
  _DCM_Interface = dispinterface
    ['{C3C907CC-4262-4157-B275-0D1010C4EB76}']
    function Connect: WordBool; dispid 1;
    function DisConnect: WordBool; dispid 2;
    function ReadAllGLogData(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 3;
    function GetAllGLogData(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                            var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 4;
    function ReadNewGLogData(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 5;
    function GetNewGLogData(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                            var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 6;
    function EmptyGLogData(dwMachineNumber: Integer): WordBool; dispid 7;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 8;
    function SetDeviceTime(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                           dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool; dispid 9;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 10;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 11;
    function GetBellTimeStr(dwMachineNumber: Integer; var dwValue: Integer; var BellInfo: WideString): WordBool; dispid 12;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 13;
    function SetBellTimeStr(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool; dispid 14;
    function GetDeviceID(var dwMachineNumber: Integer): WordBool; dispid 15;
    function SetUserType(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer; 
                         dwUserType: Integer): WordBool; dispid 16;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool; dispid 17;
    function GetOneUserID(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                          var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool; dispid 18;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollID: Integer; 
                              dwBackupNumber: Integer; var dwPrivilege: Integer; 
                              var StrEnrollData: WideString): WordBool; dispid 19;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollID: Integer; 
                              dwBackupNumber: Integer; dwPrivilege: Integer; 
                              var StrEnrollData: WideString): WordBool; dispid 20;
    function DelEnrollData(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer): WordBool; dispid 21;
    function DelEnrollID(dwMachineNumber: Integer; dwEnrollID: Integer): WordBool; dispid 22;
    function GetErrorCode: Integer; dispid 23;
    function EnableDevice(dwMachineNumber: Integer; dwEnable: Integer): WordBool; dispid 24;
    function SetUserName(dwMachineNumber: Integer; dwEnrollID: Integer; var NameStr: WideString): WordBool; dispid 25;
    function GetUserName(dwMachineNumber: Integer; dwEnrollID: Integer; var NameStr: WideString): WordBool; dispid 26;
    function CatchImage(dwMachineNumber: Integer; var FileName: WideString): WordBool; dispid 27;
    procedure SetSerialPar(dwMachineNumber: Integer; dwSerialNumber: Integer; dwBaudrate: Integer; 
                           dwDelayTime: Integer); dispid 28;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool; dispid 29;
    function ReadEnrollDataFromUDisck(var FileName: WideString; var dwFingerCount: Integer; 
                                      var dwPasswordCount: Integer; var dwCardCount: Integer; 
                                      var dwUserNameCount: Integer): WordBool; dispid 30;
    function WriteEnrollData2UDisc(var FileName: WideString; dwStartOrEnd: Integer): WordBool; dispid 31;
    procedure AddOneEnrollData2UDisc(dwEnrollType: Integer; dwEnrollID: Integer; 
                                     dwUserType: Integer; dwBackupNumber: Integer; 
                                     var EnrollData: WideString; var UserName: WideString); dispid 32;
    function ReadAllUserIDX(dwMachineNumber: Integer): WordBool; dispid 33;
    function GetEnrollDataStrX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               dwBackupNumber: Integer; var dwPrivilege: Integer; 
                               var StrEnrollData: WideString): WordBool; dispid 34;
    function SetEnrollDataStrX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               dwBackupNumber: Integer; dwPrivilege: Integer; 
                               var StrEnrollData: WideString): WordBool; dispid 35;
    function WriteEnrollData2UDiscX(var FileName: WideString; dwStartOrEnd: Integer): WordBool; dispid 36;
    procedure AddOneEnrollData2UDiscX(dwEnrollType: Integer; dwEnrollID: Integer; 
                                      dwUserType: Integer; dwBackupNumber: Integer; 
                                      var EnrollData: WideString; var UserName: WideString); dispid 37;
    function DelAllEnrollDataX(dwMachineNumber: Integer): WordBool; dispid 38;
    function SetUserTypeX(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer; 
                          dwUserType: Integer): WordBool; dispid 39;
    function DelEnrollDataX(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer): WordBool; dispid 40;
    function GetDeviceStatusX(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 41;
    function GetDeviceInfoX(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 42;
    function GetBellTimeStrX(dwMachineNumber: Integer; var dwValue: Integer; 
                             var BellInfo: WideString): WordBool; dispid 43;
    function SetDeviceInfoX(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 44;
    function SetBellTimeStrX(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool; dispid 45;
    function ReadAllGLogDataE(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 46;
    function GetAllGLogDataE(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                             var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                             var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                             var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 47;
    function ReadNewGLogDataE(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 48;
    function GetNewGLogDataE(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                             var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                             var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                             var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 49;
    function GetDeviceStatusE(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 50;
    function GetDeviceInfoE(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 51;
    function GetBellTimeStrE(dwMachineNumber: Integer; var dwValue: Integer; 
                             var BellInfo: WideString): WordBool; dispid 52;
    function SetBellTimeStrE(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool; dispid 53;
    function SetDeviceInfoE(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 54;
    function GetDeviceShiftInfo(dwMachineNumber: Integer; var ShiftInfo: WideString): WordBool; dispid 55;
    function SetDeviceShiftInfo(dwMachineNumber: Integer; var ShiftInfo: WideString): WordBool; dispid 56;
    function GetPersonalShift(dwMachineNumber: Integer; dwUserID: Integer; var Shift: Integer; 
                              var DeptName: WideString; var Valid: Integer): WordBool; dispid 57;
    function SetPersonalShift(dwMachineNumber: Integer; dwUserID: Integer; Shift: Integer; 
                              var DeptName: WideString; Valid: Integer): WordBool; dispid 58;
    procedure SetCommTcpPar(dwMachineNumber: Integer; const sIP: WideString; dwPort: Integer; 
                            dwPassword: Integer); dispid 59;
    function GetDeviceStatusEx(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 60;
    function GetDeviceInfoEx(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 61;
    function GetBellTimeStrEx(dwMachineNumber: Integer; var dwValue: Integer; 
                              var BellInfo: WideString): WordBool; dispid 62;
    function SetBellTimeStrEx(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool; dispid 63;
    function SetDeviceInfoEx(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 64;
    function SetUserNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; var NameStr: WideString): WordBool; dispid 65;
    function SetDeviceTcp(dwMachineNumber: Integer; var IP: WideString; var SubnetMask: WideString; 
                          var DefaultGateway: WideString; var CommPassword: WideString; 
                          var Port: WideString): WordBool; dispid 66;
    function GetDeviceTcp(dwMachineNumber: Integer; var IP: WideString; var SubnetMask: WideString; 
                          var DefaultGateway: WideString; var CommPassword: WideString; 
                          var Port: WideString): WordBool; dispid 67;
    function ReadAllGLogDataEx(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 68;
    function GetAllGLogDataEx(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                              var dwLogType: Integer; var dwLogStatus: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                              var dwWeek: Integer): WordBool; dispid 69;
    function ReadNewGLogDataEx(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 70;
    function GetNewGLogDataEx(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                              var dwLogType: Integer; var dwLogStatus: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                              var dwWeek: Integer): WordBool; dispid 71;
    function ReadAllUserIDEx(dwMachineNumber: Integer): WordBool; dispid 72;
    function SetUserLongNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool; dispid 73;
    function GetUserLongNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool; dispid 74;
    function GetSerialNumberEx(dwMachineNumber: Integer; var SerialNumber: WideString): WordBool; dispid 75;
    procedure AddOneEnrollData2UDiscEx(dwEnrollType: Integer; dwEnrollID: Integer; 
                                       dwUserType: Integer; dwBackupNumber: Integer; 
                                       var EnrollData: WideString; var UserName: WideString); dispid 76;
    function ReadEnrollDataFromUDisckEx(var FileName: WideString; var dwFingerCount: Integer; 
                                        var dwPasswordCount: Integer; var dwCardCount: Integer; 
                                        var dwUserNameCount: Integer): WordBool; dispid 77;
    function WriteEnrollData2UDiscEx(var FileName: WideString; dwStartOrEnd: Integer): WordBool; dispid 78;
    function WriteEnrollData2UDiscMF500(var FileName: WideString; dwStartOrEnd: Integer): WordBool; dispid 79;
    procedure AddOneEnrollData2UDiscMF500(dwEnrollType: Integer; dwEnrollID: Integer; 
                                          dwUserType: Integer; dwBackupNumber: Integer; 
                                          var EnrollData: WideString; var UserName: WideString); dispid 80;
    function ReadEnrollDataFromUDisckMF500(var FileName: WideString; var dwFingerCount: Integer; 
                                           var dwPasswordCount: Integer; var dwCardCount: Integer; 
                                           var dwUserNameCount: Integer): WordBool; dispid 81;
    function ReadFingerFromFile(var FileName: WideString; var Data: WideString): Integer; dispid 82;
    function GetEnrollDataStrCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                    dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                    var StrEnrollData: WideString): WordBool; dispid 83;
    function SetEnrollDataStrCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                    dwBackupNumber: Integer; dwPrivilege: Integer; 
                                    var StrEnrollData: WideString): WordBool; dispid 84;
    function DelEnrollDataCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                 dwBackupNumber: Integer): WordBool; dispid 85;
    function DelEnrollIDCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer): WordBool; dispid 86;
    function GetUserNameCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool; dispid 87;
    function SetUserNameCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool; dispid 88;
    function ReadAllGLogDataCM17S0(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 89;
    function GetAllGLogDataCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                  var dwLogType: Integer; var dwLogStatus: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 90;
    function ReadNewGLogDataCM17S0(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 91;
    function GetNewGLogDataCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                  var dwLogType: Integer; var dwLogStatus: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWeek: Integer): WordBool; dispid 92;
    function ReadAllUserIDCM17S0(dwMachineNumber: Integer): WordBool; dispid 93;
    function GetOneUserIDCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool; dispid 94;
    function SetUserTypeCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               dwBackupNumber: Integer; dwUserType: Integer): WordBool; dispid 95;
    function GetLicenceInfo(dwMachineNumber: Integer; dwLicVer: Integer; dwType: Integer; 
                            var Value: WideString): WordBool; dispid 96;
    procedure SetCommTcpParLDN(const DeviceID: WideString; const sIP: WideString; dwPort: Integer; 
                               dwPassword: Integer); dispid 97;
    procedure SetSerialParLDN(const DeviceID: WideString; dwSerialNumber: Integer; 
                              dwBaudrate: Integer; dwDelayTime: Integer); dispid 98;
    function ConnectLDN: WordBool; dispid 99;
    function SetDeviceTimeLDN(const DeviceID: WideString; dwYear: Integer; dwMonth: Integer; 
                              dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool; dispid 100;
    function GetDeviceInfoExLDN(const DeviceID: WideString; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 101;
    function SetDeviceInfoExLDN(const DeviceID: WideString; dwInfo: Integer; dwValue: Integer): WordBool; dispid 102;
    function GetDeviceStatusExLDN(const DeviceID: WideString; dwStatus: Integer; 
                                  var dwValue: Integer): WordBool; dispid 103;
    function ReadNewGLogDataExLDN(const DeviceID: WideString; var dwRecordCount: Integer): WordBool; dispid 104;
    function GetNewGLogDataExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool; dispid 105;
    function ReadAllGLogDataExLDN(const DeviceID: WideString; var dwRecordCount: Integer): WordBool; dispid 106;
    function GetAllGLogDataExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool; dispid 107;
    function GetEnrollDataStrExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                   dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool; dispid 108;
    function SetEnrollDataStrExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                   dwBackupNumber: Integer; dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool; dispid 109;
    function DelEnrollIDExLDN(const DeviceID: WideString; dwEnrollID: Integer): WordBool; dispid 110;
    function GetUserNameExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                              var NameStr: WideString): WordBool; dispid 111;
    function SetUserNameExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                              var NameStr: WideString): WordBool; dispid 112;
    function ReadAllUserIDExLDN(const DeviceID: WideString): WordBool; dispid 113;
    function GetOneUserIDExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                               var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool; dispid 114;
    function SetUserTypeExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                              dwBackupNumber: Integer; dwUserType: Integer): WordBool; dispid 115;
    function GetEnrollDataStrExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                   dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool; dispid 116;
    function SetEnrollDataStrExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                   dwBackupNumber: Integer; dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool; dispid 117;
    function DelEnrollIDExLID(dwMachineNumber: Integer; const UserID: WideString): WordBool; dispid 118;
    function GetUserNameExLID(dwMachineNumber: Integer; const UserID: WideString; 
                              var NameStr: WideString): WordBool; dispid 119;
    function SetUserNameExLID(dwMachineNumber: Integer; const UserID: WideString; 
                              const NameStr: WideString): WordBool; dispid 120;
    function GetOneUserIDExLID(dwMachineNumber: Integer; var UserID: WideString; 
                               var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool; dispid 121;
    function GetNewGLogDataExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool; dispid 122;
    function GetAllGLogDataExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool; dispid 123;
    function SetUserTypeExLID(dwMachineNumber: Integer; const UserID: WideString; 
                              dwBackupNumber: Integer; dwUserType: Integer): WordBool; dispid 124;
    function ReadAllUserIDExLID(dwMachineNumber: Integer): WordBool; dispid 125;
    function ReadNewGLogDataExLID(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 126;
    function ReadAllGLogDataExLID(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool; dispid 127;
    function SetLicenceInfo(dwMachineNumber: Integer; dwLicVer: Integer; dwType: Integer; 
                            const Value: WideString): WordBool; dispid 128;
    function GetUserVerifyDateExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                    var StartDate: WideString; var EndDate: WideString; 
                                    var Available: Integer): WordBool; dispid 129;
    function SetUserVerifyDateExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                    const StartDate: WideString; const EndDate: WideString; 
                                    Available: Integer): WordBool; dispid 130;
    function GetEnrollDataStrYB(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                var StrEnrollData: WideString): WordBool; dispid 131;
    function SetEnrollDataStrYB(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                dwBackupNumber: Integer; dwPrivilege: Integer; 
                                var StrEnrollData: WideString): WordBool; dispid 132;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DCM_InterfaceEvents
// Flags:     (4096) Dispatchable
// GUID:      {6324650B-8BAD-4F8D-AB12-05EBAC938C59}
// *********************************************************************//
  _DCM_InterfaceEvents = dispinterface
    ['{6324650B-8BAD-4F8D-AB12-05EBAC938C59}']
    procedure GetEnrollData(dwEnrollType: Integer; dwEnrollID: Integer; dwUserType: Integer; 
                            dwBackupNumber: Integer; var EnrollData: WideString; 
                            var UserName: WideString); dispid 1;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TCM_Interface
// Help String      : CM_Interface Control
// Default Interface: _DCM_Interface
// Def. Intf. DISP? : Yes
// Event   Interface: _DCM_InterfaceEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TCM_InterfaceGetEnrollData = procedure(ASender: TObject; dwEnrollType: Integer; 
                                                           dwEnrollID: Integer; 
                                                           dwUserType: Integer; 
                                                           dwBackupNumber: Integer; 
                                                           var EnrollData: WideString; 
                                                           var UserName: WideString) of object;

  TCM_Interface = class(TOleControl)
  private
    FOnGetEnrollData: TCM_InterfaceGetEnrollData;
    FIntf: _DCM_Interface;
    function  GetControlInterface: _DCM_Interface;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function Connect: WordBool;
    function DisConnect: WordBool;
    function ReadAllGLogData(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetAllGLogData(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                            var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function ReadNewGLogData(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetNewGLogData(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                            var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function EmptyGLogData(dwMachineNumber: Integer): WordBool;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function SetDeviceTime(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                           dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function GetBellTimeStr(dwMachineNumber: Integer; var dwValue: Integer; var BellInfo: WideString): WordBool;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
    function SetBellTimeStr(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool;
    function GetDeviceID(var dwMachineNumber: Integer): WordBool;
    function SetUserType(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer; 
                         dwUserType: Integer): WordBool;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool;
    function GetOneUserID(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                          var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollID: Integer; 
                              dwBackupNumber: Integer; var dwPrivilege: Integer; 
                              var StrEnrollData: WideString): WordBool;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollID: Integer; 
                              dwBackupNumber: Integer; dwPrivilege: Integer; 
                              var StrEnrollData: WideString): WordBool;
    function DelEnrollData(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer): WordBool;
    function DelEnrollID(dwMachineNumber: Integer; dwEnrollID: Integer): WordBool;
    function GetErrorCode: Integer;
    function EnableDevice(dwMachineNumber: Integer; dwEnable: Integer): WordBool;
    function SetUserName(dwMachineNumber: Integer; dwEnrollID: Integer; var NameStr: WideString): WordBool;
    function GetUserName(dwMachineNumber: Integer; dwEnrollID: Integer; var NameStr: WideString): WordBool;
    function CatchImage(dwMachineNumber: Integer; var FileName: WideString): WordBool;
    procedure SetSerialPar(dwMachineNumber: Integer; dwSerialNumber: Integer; dwBaudrate: Integer; 
                           dwDelayTime: Integer);
    function ClearKeeperData(dwMachineNumber: Integer): WordBool;
    function ReadEnrollDataFromUDisck(var FileName: WideString; var dwFingerCount: Integer; 
                                      var dwPasswordCount: Integer; var dwCardCount: Integer; 
                                      var dwUserNameCount: Integer): WordBool;
    function WriteEnrollData2UDisc(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
    procedure AddOneEnrollData2UDisc(dwEnrollType: Integer; dwEnrollID: Integer; 
                                     dwUserType: Integer; dwBackupNumber: Integer; 
                                     var EnrollData: WideString; var UserName: WideString);
    function ReadAllUserIDX(dwMachineNumber: Integer): WordBool;
    function GetEnrollDataStrX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               dwBackupNumber: Integer; var dwPrivilege: Integer; 
                               var StrEnrollData: WideString): WordBool;
    function SetEnrollDataStrX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               dwBackupNumber: Integer; dwPrivilege: Integer; 
                               var StrEnrollData: WideString): WordBool;
    function WriteEnrollData2UDiscX(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
    procedure AddOneEnrollData2UDiscX(dwEnrollType: Integer; dwEnrollID: Integer; 
                                      dwUserType: Integer; dwBackupNumber: Integer; 
                                      var EnrollData: WideString; var UserName: WideString);
    function DelAllEnrollDataX(dwMachineNumber: Integer): WordBool;
    function SetUserTypeX(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer; 
                          dwUserType: Integer): WordBool;
    function DelEnrollDataX(dwMachineNumber: Integer; dwEnrollID: Integer; dwBackupNumber: Integer): WordBool;
    function GetDeviceStatusX(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
    function GetDeviceInfoX(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function GetBellTimeStrX(dwMachineNumber: Integer; var dwValue: Integer; 
                             var BellInfo: WideString): WordBool;
    function SetDeviceInfoX(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
    function SetBellTimeStrX(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool;
    function ReadAllGLogDataE(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetAllGLogDataE(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                             var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                             var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                             var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function ReadNewGLogDataE(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetNewGLogDataE(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                             var dwLogType: Integer; var dwLogStatus: Integer; var dwYear: Integer; 
                             var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                             var dwMinute: Integer; var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function GetDeviceStatusE(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
    function GetDeviceInfoE(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function GetBellTimeStrE(dwMachineNumber: Integer; var dwValue: Integer; 
                             var BellInfo: WideString): WordBool;
    function SetBellTimeStrE(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool;
    function SetDeviceInfoE(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
    function GetDeviceShiftInfo(dwMachineNumber: Integer; var ShiftInfo: WideString): WordBool;
    function SetDeviceShiftInfo(dwMachineNumber: Integer; var ShiftInfo: WideString): WordBool;
    function GetPersonalShift(dwMachineNumber: Integer; dwUserID: Integer; var Shift: Integer; 
                              var DeptName: WideString; var Valid: Integer): WordBool;
    function SetPersonalShift(dwMachineNumber: Integer; dwUserID: Integer; Shift: Integer; 
                              var DeptName: WideString; Valid: Integer): WordBool;
    procedure SetCommTcpPar(dwMachineNumber: Integer; const sIP: WideString; dwPort: Integer; 
                            dwPassword: Integer);
    function GetDeviceStatusEx(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
    function GetDeviceInfoEx(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function GetBellTimeStrEx(dwMachineNumber: Integer; var dwValue: Integer; 
                              var BellInfo: WideString): WordBool;
    function SetBellTimeStrEx(dwMachineNumber: Integer; dwValue: Integer; var BellInfo: WideString): WordBool;
    function SetDeviceInfoEx(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
    function SetUserNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; var NameStr: WideString): WordBool;
    function SetDeviceTcp(dwMachineNumber: Integer; var IP: WideString; var SubnetMask: WideString; 
                          var DefaultGateway: WideString; var CommPassword: WideString; 
                          var Port: WideString): WordBool;
    function GetDeviceTcp(dwMachineNumber: Integer; var IP: WideString; var SubnetMask: WideString; 
                          var DefaultGateway: WideString; var CommPassword: WideString; 
                          var Port: WideString): WordBool;
    function ReadAllGLogDataEx(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetAllGLogDataEx(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                              var dwLogType: Integer; var dwLogStatus: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                              var dwWeek: Integer): WordBool;
    function ReadNewGLogDataEx(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetNewGLogDataEx(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                              var dwLogType: Integer; var dwLogStatus: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                              var dwWeek: Integer): WordBool;
    function ReadAllUserIDEx(dwMachineNumber: Integer): WordBool;
    function SetUserLongNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool;
    function GetUserLongNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool;
    function GetSerialNumberEx(dwMachineNumber: Integer; var SerialNumber: WideString): WordBool;
    procedure AddOneEnrollData2UDiscEx(dwEnrollType: Integer; dwEnrollID: Integer; 
                                       dwUserType: Integer; dwBackupNumber: Integer; 
                                       var EnrollData: WideString; var UserName: WideString);
    function ReadEnrollDataFromUDisckEx(var FileName: WideString; var dwFingerCount: Integer; 
                                        var dwPasswordCount: Integer; var dwCardCount: Integer; 
                                        var dwUserNameCount: Integer): WordBool;
    function WriteEnrollData2UDiscEx(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
    function WriteEnrollData2UDiscMF500(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
    procedure AddOneEnrollData2UDiscMF500(dwEnrollType: Integer; dwEnrollID: Integer; 
                                          dwUserType: Integer; dwBackupNumber: Integer; 
                                          var EnrollData: WideString; var UserName: WideString);
    function ReadEnrollDataFromUDisckMF500(var FileName: WideString; var dwFingerCount: Integer; 
                                           var dwPasswordCount: Integer; var dwCardCount: Integer; 
                                           var dwUserNameCount: Integer): WordBool;
    function ReadFingerFromFile(var FileName: WideString; var Data: WideString): Integer;
    function GetEnrollDataStrCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                    dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                    var StrEnrollData: WideString): WordBool;
    function SetEnrollDataStrCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                    dwBackupNumber: Integer; dwPrivilege: Integer; 
                                    var StrEnrollData: WideString): WordBool;
    function DelEnrollDataCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                 dwBackupNumber: Integer): WordBool;
    function DelEnrollIDCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer): WordBool;
    function GetUserNameCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool;
    function SetUserNameCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               var NameStr: WideString): WordBool;
    function ReadAllGLogDataCM17S0(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetAllGLogDataCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                  var dwLogType: Integer; var dwLogStatus: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function ReadNewGLogDataCM17S0(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function GetNewGLogDataCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                  var dwLogType: Integer; var dwLogStatus: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWeek: Integer): WordBool;
    function ReadAllUserIDCM17S0(dwMachineNumber: Integer): WordBool;
    function GetOneUserIDCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
    function SetUserTypeCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                               dwBackupNumber: Integer; dwUserType: Integer): WordBool;
    function GetLicenceInfo(dwMachineNumber: Integer; dwLicVer: Integer; dwType: Integer; 
                            var Value: WideString): WordBool;
    procedure SetCommTcpParLDN(const DeviceID: WideString; const sIP: WideString; dwPort: Integer; 
                               dwPassword: Integer);
    procedure SetSerialParLDN(const DeviceID: WideString; dwSerialNumber: Integer; 
                              dwBaudrate: Integer; dwDelayTime: Integer);
    function ConnectLDN: WordBool;
    function SetDeviceTimeLDN(const DeviceID: WideString; dwYear: Integer; dwMonth: Integer; 
                              dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
    function GetDeviceInfoExLDN(const DeviceID: WideString; dwInfo: Integer; var dwValue: Integer): WordBool;
    function SetDeviceInfoExLDN(const DeviceID: WideString; dwInfo: Integer; dwValue: Integer): WordBool;
    function GetDeviceStatusExLDN(const DeviceID: WideString; dwStatus: Integer; 
                                  var dwValue: Integer): WordBool;
    function ReadNewGLogDataExLDN(const DeviceID: WideString; var dwRecordCount: Integer): WordBool;
    function GetNewGLogDataExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool;
    function ReadAllGLogDataExLDN(const DeviceID: WideString; var dwRecordCount: Integer): WordBool;
    function GetAllGLogDataExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool;
    function GetEnrollDataStrExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                   dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool;
    function SetEnrollDataStrExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                   dwBackupNumber: Integer; dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool;
    function DelEnrollIDExLDN(const DeviceID: WideString; dwEnrollID: Integer): WordBool;
    function GetUserNameExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                              var NameStr: WideString): WordBool;
    function SetUserNameExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                              var NameStr: WideString): WordBool;
    function ReadAllUserIDExLDN(const DeviceID: WideString): WordBool;
    function GetOneUserIDExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                               var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
    function SetUserTypeExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                              dwBackupNumber: Integer; dwUserType: Integer): WordBool;
    function GetEnrollDataStrExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                   dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool;
    function SetEnrollDataStrExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                   dwBackupNumber: Integer; dwPrivilege: Integer; 
                                   var StrEnrollData: WideString): WordBool;
    function DelEnrollIDExLID(dwMachineNumber: Integer; const UserID: WideString): WordBool;
    function GetUserNameExLID(dwMachineNumber: Integer; const UserID: WideString; 
                              var NameStr: WideString): WordBool;
    function SetUserNameExLID(dwMachineNumber: Integer; const UserID: WideString; 
                              const NameStr: WideString): WordBool;
    function GetOneUserIDExLID(dwMachineNumber: Integer; var UserID: WideString; 
                               var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
    function GetNewGLogDataExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool;
    function GetAllGLogDataExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                 var dwLogType: Integer; var dwLogStatus: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer; 
                                 var dwWeek: Integer): WordBool;
    function SetUserTypeExLID(dwMachineNumber: Integer; const UserID: WideString; 
                              dwBackupNumber: Integer; dwUserType: Integer): WordBool;
    function ReadAllUserIDExLID(dwMachineNumber: Integer): WordBool;
    function ReadNewGLogDataExLID(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function ReadAllGLogDataExLID(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
    function SetLicenceInfo(dwMachineNumber: Integer; dwLicVer: Integer; dwType: Integer; 
                            const Value: WideString): WordBool;
    function GetUserVerifyDateExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                    var StartDate: WideString; var EndDate: WideString; 
                                    var Available: Integer): WordBool;
    function SetUserVerifyDateExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                    const StartDate: WideString; const EndDate: WideString; 
                                    Available: Integer): WordBool;
    function GetEnrollDataStrYB(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                var StrEnrollData: WideString): WordBool;
    function SetEnrollDataStrYB(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                dwBackupNumber: Integer; dwPrivilege: Integer; 
                                var StrEnrollData: WideString): WordBool;
    procedure AboutBox;
    property  ControlInterface: _DCM_Interface read GetControlInterface;
    property  DefaultInterface: _DCM_Interface read GetControlInterface;
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
    property OnGetEnrollData: TCM_InterfaceGetEnrollData read FOnGetEnrollData write FOnGetEnrollData;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

procedure TCM_Interface.InitControlData;
const
  CEventDispIDs: array [0..0] of DWORD = (
    $00000001);
  CControlData: TControlData2 = (
    ClassID:      '{D2FDB5F6-2C07-45E5-B648-AB055861A466}';
    EventIID:     '{6324650B-8BAD-4F8D-AB12-05EBAC938C59}';
    EventCount:   1;
    EventDispIDs: @CEventDispIDs;
    LicenseKey:   nil (*HR:$80004005*);
    Flags:        $00000000;
    Version:      500);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := UIntPtr(@@FOnGetEnrollData) - UIntPtr(Self);
end;

procedure TCM_Interface.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DCM_Interface;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TCM_Interface.GetControlInterface: _DCM_Interface;
begin
  CreateControl;
  Result := FIntf;
end;

function TCM_Interface.Connect: WordBool;
begin
  Result := DefaultInterface.Connect;
end;

function TCM_Interface.DisConnect: WordBool;
begin
  Result := DefaultInterface.DisConnect;
end;

function TCM_Interface.ReadAllGLogData(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogData(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetAllGLogData(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                      var dwLogType: Integer; var dwLogStatus: Integer; 
                                      var dwYear: Integer; var dwMonth: Integer; 
                                      var dwDay: Integer; var dwHour: Integer; 
                                      var dwMinute: Integer; var dwSecond: Integer; 
                                      var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogData(dwMachineNumber, dwEnrollID, dwLogType, dwLogStatus, 
                                            dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                            dwWeek);
end;

function TCM_Interface.ReadNewGLogData(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogData(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetNewGLogData(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                      var dwLogType: Integer; var dwLogStatus: Integer; 
                                      var dwYear: Integer; var dwMonth: Integer; 
                                      var dwDay: Integer; var dwHour: Integer; 
                                      var dwMinute: Integer; var dwSecond: Integer; 
                                      var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetNewGLogData(dwMachineNumber, dwEnrollID, dwLogType, dwLogStatus, 
                                            dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                            dwWeek);
end;

function TCM_Interface.EmptyGLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyGLogData(dwMachineNumber);
end;

function TCM_Interface.GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; 
                                     var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                     var dwMinute: Integer; var dwSecond: Integer; 
                                     var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceTime(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                           dwMinute, dwSecond, dwWeek);
end;

function TCM_Interface.SetDeviceTime(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                                     dwDay: Integer; dwHour: Integer; dwMinute: Integer; 
                                     dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTime(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                           dwMinute, dwSecond);
end;

function TCM_Interface.GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; 
                                       var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatus(dwMachineNumber, dwStatus, dwValue);
end;

function TCM_Interface.GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.GetBellTimeStr(dwMachineNumber: Integer; var dwValue: Integer; 
                                      var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.GetBellTimeStr(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.SetBellTimeStr(dwMachineNumber: Integer; dwValue: Integer; 
                                      var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.SetBellTimeStr(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.GetDeviceID(var dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceID(dwMachineNumber);
end;

function TCM_Interface.SetUserType(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                   dwBackupNumber: Integer; dwUserType: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserType(dwMachineNumber, dwEnrollID, dwBackupNumber, dwUserType);
end;

function TCM_Interface.ReadAllUserID(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserID(dwMachineNumber);
end;

function TCM_Interface.GetOneUserID(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                    var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.GetOneUserID(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                          dwUserPrivilege);
end;

function TCM_Interface.GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                        dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                        var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStr(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                              dwPrivilege, StrEnrollData);
end;

function TCM_Interface.SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                        dwBackupNumber: Integer; dwPrivilege: Integer; 
                                        var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStr(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                              dwPrivilege, StrEnrollData);
end;

function TCM_Interface.DelEnrollData(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                     dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DelEnrollData(dwMachineNumber, dwEnrollID, dwBackupNumber);
end;

function TCM_Interface.DelEnrollID(dwMachineNumber: Integer; dwEnrollID: Integer): WordBool;
begin
  Result := DefaultInterface.DelEnrollID(dwMachineNumber, dwEnrollID);
end;

function TCM_Interface.GetErrorCode: Integer;
begin
  Result := DefaultInterface.GetErrorCode;
end;

function TCM_Interface.EnableDevice(dwMachineNumber: Integer; dwEnable: Integer): WordBool;
begin
  Result := DefaultInterface.EnableDevice(dwMachineNumber, dwEnable);
end;

function TCM_Interface.SetUserName(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                   var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserName(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.GetUserName(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                   var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserName(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.CatchImage(dwMachineNumber: Integer; var FileName: WideString): WordBool;
begin
  Result := DefaultInterface.CatchImage(dwMachineNumber, FileName);
end;

procedure TCM_Interface.SetSerialPar(dwMachineNumber: Integer; dwSerialNumber: Integer; 
                                     dwBaudrate: Integer; dwDelayTime: Integer);
begin
  DefaultInterface.SetSerialPar(dwMachineNumber, dwSerialNumber, dwBaudrate, dwDelayTime);
end;

function TCM_Interface.ClearKeeperData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearKeeperData(dwMachineNumber);
end;

function TCM_Interface.ReadEnrollDataFromUDisck(var FileName: WideString; 
                                                var dwFingerCount: Integer; 
                                                var dwPasswordCount: Integer; 
                                                var dwCardCount: Integer; 
                                                var dwUserNameCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadEnrollDataFromUDisck(FileName, dwFingerCount, dwPasswordCount, 
                                                      dwCardCount, dwUserNameCount);
end;

function TCM_Interface.WriteEnrollData2UDisc(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
begin
  Result := DefaultInterface.WriteEnrollData2UDisc(FileName, dwStartOrEnd);
end;

procedure TCM_Interface.AddOneEnrollData2UDisc(dwEnrollType: Integer; dwEnrollID: Integer; 
                                               dwUserType: Integer; dwBackupNumber: Integer; 
                                               var EnrollData: WideString; var UserName: WideString);
begin
  DefaultInterface.AddOneEnrollData2UDisc(dwEnrollType, dwEnrollID, dwUserType, dwBackupNumber, 
                                          EnrollData, UserName);
end;

function TCM_Interface.ReadAllUserIDX(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserIDX(dwMachineNumber);
end;

function TCM_Interface.GetEnrollDataStrX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                         var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStrX(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                               dwPrivilege, StrEnrollData);
end;

function TCM_Interface.SetEnrollDataStrX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         dwBackupNumber: Integer; dwPrivilege: Integer; 
                                         var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStrX(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                               dwPrivilege, StrEnrollData);
end;

function TCM_Interface.WriteEnrollData2UDiscX(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
begin
  Result := DefaultInterface.WriteEnrollData2UDiscX(FileName, dwStartOrEnd);
end;

procedure TCM_Interface.AddOneEnrollData2UDiscX(dwEnrollType: Integer; dwEnrollID: Integer; 
                                                dwUserType: Integer; dwBackupNumber: Integer; 
                                                var EnrollData: WideString; var UserName: WideString);
begin
  DefaultInterface.AddOneEnrollData2UDiscX(dwEnrollType, dwEnrollID, dwUserType, dwBackupNumber, 
                                           EnrollData, UserName);
end;

function TCM_Interface.DelAllEnrollDataX(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DelAllEnrollDataX(dwMachineNumber);
end;

function TCM_Interface.SetUserTypeX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                    dwBackupNumber: Integer; dwUserType: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserTypeX(dwMachineNumber, dwEnrollID, dwBackupNumber, dwUserType);
end;

function TCM_Interface.DelEnrollDataX(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                      dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DelEnrollDataX(dwMachineNumber, dwEnrollID, dwBackupNumber);
end;

function TCM_Interface.GetDeviceStatusX(dwMachineNumber: Integer; dwStatus: Integer; 
                                        var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatusX(dwMachineNumber, dwStatus, dwValue);
end;

function TCM_Interface.GetDeviceInfoX(dwMachineNumber: Integer; dwInfo: Integer; 
                                      var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfoX(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.GetBellTimeStrX(dwMachineNumber: Integer; var dwValue: Integer; 
                                       var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.GetBellTimeStrX(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.SetDeviceInfoX(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfoX(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.SetBellTimeStrX(dwMachineNumber: Integer; dwValue: Integer; 
                                       var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.SetBellTimeStrX(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.ReadAllGLogDataE(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogDataE(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetAllGLogDataE(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                       var dwLogType: Integer; var dwLogStatus: Integer; 
                                       var dwYear: Integer; var dwMonth: Integer; 
                                       var dwDay: Integer; var dwHour: Integer; 
                                       var dwMinute: Integer; var dwSecond: Integer; 
                                       var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogDataE(dwMachineNumber, dwEnrollID, dwLogType, dwLogStatus, 
                                             dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                             dwWeek);
end;

function TCM_Interface.ReadNewGLogDataE(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogDataE(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetNewGLogDataE(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                       var dwLogType: Integer; var dwLogStatus: Integer; 
                                       var dwYear: Integer; var dwMonth: Integer; 
                                       var dwDay: Integer; var dwHour: Integer; 
                                       var dwMinute: Integer; var dwSecond: Integer; 
                                       var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetNewGLogDataE(dwMachineNumber, dwEnrollID, dwLogType, dwLogStatus, 
                                             dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                             dwWeek);
end;

function TCM_Interface.GetDeviceStatusE(dwMachineNumber: Integer; dwStatus: Integer; 
                                        var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatusE(dwMachineNumber, dwStatus, dwValue);
end;

function TCM_Interface.GetDeviceInfoE(dwMachineNumber: Integer; dwInfo: Integer; 
                                      var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfoE(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.GetBellTimeStrE(dwMachineNumber: Integer; var dwValue: Integer; 
                                       var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.GetBellTimeStrE(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.SetBellTimeStrE(dwMachineNumber: Integer; dwValue: Integer; 
                                       var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.SetBellTimeStrE(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.SetDeviceInfoE(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfoE(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.GetDeviceShiftInfo(dwMachineNumber: Integer; var ShiftInfo: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceShiftInfo(dwMachineNumber, ShiftInfo);
end;

function TCM_Interface.SetDeviceShiftInfo(dwMachineNumber: Integer; var ShiftInfo: WideString): WordBool;
begin
  Result := DefaultInterface.SetDeviceShiftInfo(dwMachineNumber, ShiftInfo);
end;

function TCM_Interface.GetPersonalShift(dwMachineNumber: Integer; dwUserID: Integer; 
                                        var Shift: Integer; var DeptName: WideString; 
                                        var Valid: Integer): WordBool;
begin
  Result := DefaultInterface.GetPersonalShift(dwMachineNumber, dwUserID, Shift, DeptName, Valid);
end;

function TCM_Interface.SetPersonalShift(dwMachineNumber: Integer; dwUserID: Integer; 
                                        Shift: Integer; var DeptName: WideString; Valid: Integer): WordBool;
begin
  Result := DefaultInterface.SetPersonalShift(dwMachineNumber, dwUserID, Shift, DeptName, Valid);
end;

procedure TCM_Interface.SetCommTcpPar(dwMachineNumber: Integer; const sIP: WideString; 
                                      dwPort: Integer; dwPassword: Integer);
begin
  DefaultInterface.SetCommTcpPar(dwMachineNumber, sIP, dwPort, dwPassword);
end;

function TCM_Interface.GetDeviceStatusEx(dwMachineNumber: Integer; dwStatus: Integer; 
                                         var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatusEx(dwMachineNumber, dwStatus, dwValue);
end;

function TCM_Interface.GetDeviceInfoEx(dwMachineNumber: Integer; dwInfo: Integer; 
                                       var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfoEx(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.GetBellTimeStrEx(dwMachineNumber: Integer; var dwValue: Integer; 
                                        var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.GetBellTimeStrEx(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.SetBellTimeStrEx(dwMachineNumber: Integer; dwValue: Integer; 
                                        var BellInfo: WideString): WordBool;
begin
  Result := DefaultInterface.SetBellTimeStrEx(dwMachineNumber, dwValue, BellInfo);
end;

function TCM_Interface.SetDeviceInfoEx(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfoEx(dwMachineNumber, dwInfo, dwValue);
end;

function TCM_Interface.SetUserNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                     var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserNameEx(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.SetDeviceTcp(dwMachineNumber: Integer; var IP: WideString; 
                                    var SubnetMask: WideString; var DefaultGateway: WideString; 
                                    var CommPassword: WideString; var Port: WideString): WordBool;
begin
  Result := DefaultInterface.SetDeviceTcp(dwMachineNumber, IP, SubnetMask, DefaultGateway, 
                                          CommPassword, Port);
end;

function TCM_Interface.GetDeviceTcp(dwMachineNumber: Integer; var IP: WideString; 
                                    var SubnetMask: WideString; var DefaultGateway: WideString; 
                                    var CommPassword: WideString; var Port: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceTcp(dwMachineNumber, IP, SubnetMask, DefaultGateway, 
                                          CommPassword, Port);
end;

function TCM_Interface.ReadAllGLogDataEx(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogDataEx(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetAllGLogDataEx(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                        var dwLogType: Integer; var dwLogStatus: Integer; 
                                        var dwYear: Integer; var dwMonth: Integer; 
                                        var dwDay: Integer; var dwHour: Integer; 
                                        var dwMinute: Integer; var dwSecond: Integer; 
                                        var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogDataEx(dwMachineNumber, dwEnrollID, dwLogType, dwLogStatus, 
                                              dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                              dwWeek);
end;

function TCM_Interface.ReadNewGLogDataEx(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogDataEx(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetNewGLogDataEx(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                        var dwLogType: Integer; var dwLogStatus: Integer; 
                                        var dwYear: Integer; var dwMonth: Integer; 
                                        var dwDay: Integer; var dwHour: Integer; 
                                        var dwMinute: Integer; var dwSecond: Integer; 
                                        var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetNewGLogDataEx(dwMachineNumber, dwEnrollID, dwLogType, dwLogStatus, 
                                              dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecond, 
                                              dwWeek);
end;

function TCM_Interface.ReadAllUserIDEx(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserIDEx(dwMachineNumber);
end;

function TCM_Interface.SetUserLongNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserLongNameEx(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.GetUserLongNameEx(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserLongNameEx(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.GetSerialNumberEx(dwMachineNumber: Integer; var SerialNumber: WideString): WordBool;
begin
  Result := DefaultInterface.GetSerialNumberEx(dwMachineNumber, SerialNumber);
end;

procedure TCM_Interface.AddOneEnrollData2UDiscEx(dwEnrollType: Integer; dwEnrollID: Integer; 
                                                 dwUserType: Integer; dwBackupNumber: Integer; 
                                                 var EnrollData: WideString; 
                                                 var UserName: WideString);
begin
  DefaultInterface.AddOneEnrollData2UDiscEx(dwEnrollType, dwEnrollID, dwUserType, dwBackupNumber, 
                                            EnrollData, UserName);
end;

function TCM_Interface.ReadEnrollDataFromUDisckEx(var FileName: WideString; 
                                                  var dwFingerCount: Integer; 
                                                  var dwPasswordCount: Integer; 
                                                  var dwCardCount: Integer; 
                                                  var dwUserNameCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadEnrollDataFromUDisckEx(FileName, dwFingerCount, dwPasswordCount, 
                                                        dwCardCount, dwUserNameCount);
end;

function TCM_Interface.WriteEnrollData2UDiscEx(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
begin
  Result := DefaultInterface.WriteEnrollData2UDiscEx(FileName, dwStartOrEnd);
end;

function TCM_Interface.WriteEnrollData2UDiscMF500(var FileName: WideString; dwStartOrEnd: Integer): WordBool;
begin
  Result := DefaultInterface.WriteEnrollData2UDiscMF500(FileName, dwStartOrEnd);
end;

procedure TCM_Interface.AddOneEnrollData2UDiscMF500(dwEnrollType: Integer; dwEnrollID: Integer; 
                                                    dwUserType: Integer; dwBackupNumber: Integer; 
                                                    var EnrollData: WideString; 
                                                    var UserName: WideString);
begin
  DefaultInterface.AddOneEnrollData2UDiscMF500(dwEnrollType, dwEnrollID, dwUserType, 
                                               dwBackupNumber, EnrollData, UserName);
end;

function TCM_Interface.ReadEnrollDataFromUDisckMF500(var FileName: WideString; 
                                                     var dwFingerCount: Integer; 
                                                     var dwPasswordCount: Integer; 
                                                     var dwCardCount: Integer; 
                                                     var dwUserNameCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadEnrollDataFromUDisckMF500(FileName, dwFingerCount, 
                                                           dwPasswordCount, dwCardCount, 
                                                           dwUserNameCount);
end;

function TCM_Interface.ReadFingerFromFile(var FileName: WideString; var Data: WideString): Integer;
begin
  Result := DefaultInterface.ReadFingerFromFile(FileName, Data);
end;

function TCM_Interface.GetEnrollDataStrCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                              dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                              var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStrCM17S0(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                                    dwPrivilege, StrEnrollData);
end;

function TCM_Interface.SetEnrollDataStrCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                              dwBackupNumber: Integer; dwPrivilege: Integer; 
                                              var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStrCM17S0(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                                    dwPrivilege, StrEnrollData);
end;

function TCM_Interface.DelEnrollDataCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                           dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DelEnrollDataCM17S0(dwMachineNumber, dwEnrollID, dwBackupNumber);
end;

function TCM_Interface.DelEnrollIDCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer): WordBool;
begin
  Result := DefaultInterface.DelEnrollIDCM17S0(dwMachineNumber, dwEnrollID);
end;

function TCM_Interface.GetUserNameCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserNameCM17S0(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.SetUserNameCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserNameCM17S0(dwMachineNumber, dwEnrollID, NameStr);
end;

function TCM_Interface.ReadAllGLogDataCM17S0(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogDataCM17S0(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetAllGLogDataCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                            var dwLogType: Integer; var dwLogStatus: Integer; 
                                            var dwYear: Integer; var dwMonth: Integer; 
                                            var dwDay: Integer; var dwHour: Integer; 
                                            var dwMinute: Integer; var dwSecond: Integer; 
                                            var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogDataCM17S0(dwMachineNumber, dwEnrollID, dwLogType, 
                                                  dwLogStatus, dwYear, dwMonth, dwDay, dwHour, 
                                                  dwMinute, dwSecond, dwWeek);
end;

function TCM_Interface.ReadNewGLogDataCM17S0(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogDataCM17S0(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.GetNewGLogDataCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                            var dwLogType: Integer; var dwLogStatus: Integer; 
                                            var dwYear: Integer; var dwMonth: Integer; 
                                            var dwDay: Integer; var dwHour: Integer; 
                                            var dwMinute: Integer; var dwSecond: Integer; 
                                            var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetNewGLogDataCM17S0(dwMachineNumber, dwEnrollID, dwLogType, 
                                                  dwLogStatus, dwYear, dwMonth, dwDay, dwHour, 
                                                  dwMinute, dwSecond, dwWeek);
end;

function TCM_Interface.ReadAllUserIDCM17S0(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserIDCM17S0(dwMachineNumber);
end;

function TCM_Interface.GetOneUserIDCM17S0(dwMachineNumber: Integer; var dwEnrollID: Integer; 
                                          var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.GetOneUserIDCM17S0(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                                dwUserPrivilege);
end;

function TCM_Interface.SetUserTypeCM17S0(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                         dwBackupNumber: Integer; dwUserType: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserTypeCM17S0(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                               dwUserType);
end;

function TCM_Interface.GetLicenceInfo(dwMachineNumber: Integer; dwLicVer: Integer; dwType: Integer; 
                                      var Value: WideString): WordBool;
begin
  Result := DefaultInterface.GetLicenceInfo(dwMachineNumber, dwLicVer, dwType, Value);
end;

procedure TCM_Interface.SetCommTcpParLDN(const DeviceID: WideString; const sIP: WideString; 
                                         dwPort: Integer; dwPassword: Integer);
begin
  DefaultInterface.SetCommTcpParLDN(DeviceID, sIP, dwPort, dwPassword);
end;

procedure TCM_Interface.SetSerialParLDN(const DeviceID: WideString; dwSerialNumber: Integer; 
                                        dwBaudrate: Integer; dwDelayTime: Integer);
begin
  DefaultInterface.SetSerialParLDN(DeviceID, dwSerialNumber, dwBaudrate, dwDelayTime);
end;

function TCM_Interface.ConnectLDN: WordBool;
begin
  Result := DefaultInterface.ConnectLDN;
end;

function TCM_Interface.SetDeviceTimeLDN(const DeviceID: WideString; dwYear: Integer; 
                                        dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                                        dwMinute: Integer; dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTimeLDN(DeviceID, dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                              dwSecond);
end;

function TCM_Interface.GetDeviceInfoExLDN(const DeviceID: WideString; dwInfo: Integer; 
                                          var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfoExLDN(DeviceID, dwInfo, dwValue);
end;

function TCM_Interface.SetDeviceInfoExLDN(const DeviceID: WideString; dwInfo: Integer; 
                                          dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfoExLDN(DeviceID, dwInfo, dwValue);
end;

function TCM_Interface.GetDeviceStatusExLDN(const DeviceID: WideString; dwStatus: Integer; 
                                            var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatusExLDN(DeviceID, dwStatus, dwValue);
end;

function TCM_Interface.ReadNewGLogDataExLDN(const DeviceID: WideString; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogDataExLDN(DeviceID, dwRecordCount);
end;

function TCM_Interface.GetNewGLogDataExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                           var dwLogType: Integer; var dwLogStatus: Integer; 
                                           var dwYear: Integer; var dwMonth: Integer; 
                                           var dwDay: Integer; var dwHour: Integer; 
                                           var dwMinute: Integer; var dwSecond: Integer; 
                                           var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetNewGLogDataExLDN(DeviceID, dwEnrollID, dwLogType, dwLogStatus, 
                                                 dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                                 dwSecond, dwWeek);
end;

function TCM_Interface.ReadAllGLogDataExLDN(const DeviceID: WideString; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogDataExLDN(DeviceID, dwRecordCount);
end;

function TCM_Interface.GetAllGLogDataExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                           var dwLogType: Integer; var dwLogStatus: Integer; 
                                           var dwYear: Integer; var dwMonth: Integer; 
                                           var dwDay: Integer; var dwHour: Integer; 
                                           var dwMinute: Integer; var dwSecond: Integer; 
                                           var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogDataExLDN(DeviceID, dwEnrollID, dwLogType, dwLogStatus, 
                                                 dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                                 dwSecond, dwWeek);
end;

function TCM_Interface.GetEnrollDataStrExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                             dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                             var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStrExLDN(DeviceID, dwEnrollID, dwBackupNumber, 
                                                   dwPrivilege, StrEnrollData);
end;

function TCM_Interface.SetEnrollDataStrExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                             dwBackupNumber: Integer; dwPrivilege: Integer; 
                                             var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStrExLDN(DeviceID, dwEnrollID, dwBackupNumber, 
                                                   dwPrivilege, StrEnrollData);
end;

function TCM_Interface.DelEnrollIDExLDN(const DeviceID: WideString; dwEnrollID: Integer): WordBool;
begin
  Result := DefaultInterface.DelEnrollIDExLDN(DeviceID, dwEnrollID);
end;

function TCM_Interface.GetUserNameExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                        var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserNameExLDN(DeviceID, dwEnrollID, NameStr);
end;

function TCM_Interface.SetUserNameExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                        var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserNameExLDN(DeviceID, dwEnrollID, NameStr);
end;

function TCM_Interface.ReadAllUserIDExLDN(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.ReadAllUserIDExLDN(DeviceID);
end;

function TCM_Interface.GetOneUserIDExLDN(const DeviceID: WideString; var dwEnrollID: Integer; 
                                         var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.GetOneUserIDExLDN(DeviceID, dwEnrollID, dwBackupNumber, dwUserPrivilege);
end;

function TCM_Interface.SetUserTypeExLDN(const DeviceID: WideString; dwEnrollID: Integer; 
                                        dwBackupNumber: Integer; dwUserType: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserTypeExLDN(DeviceID, dwEnrollID, dwBackupNumber, dwUserType);
end;

function TCM_Interface.GetEnrollDataStrExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                             dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                             var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStrExLID(dwMachineNumber, UserID, dwBackupNumber, 
                                                   dwPrivilege, StrEnrollData);
end;

function TCM_Interface.SetEnrollDataStrExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                             dwBackupNumber: Integer; dwPrivilege: Integer; 
                                             var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStrExLID(dwMachineNumber, UserID, dwBackupNumber, 
                                                   dwPrivilege, StrEnrollData);
end;

function TCM_Interface.DelEnrollIDExLID(dwMachineNumber: Integer; const UserID: WideString): WordBool;
begin
  Result := DefaultInterface.DelEnrollIDExLID(dwMachineNumber, UserID);
end;

function TCM_Interface.GetUserNameExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                        var NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserNameExLID(dwMachineNumber, UserID, NameStr);
end;

function TCM_Interface.SetUserNameExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                        const NameStr: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserNameExLID(dwMachineNumber, UserID, NameStr);
end;

function TCM_Interface.GetOneUserIDExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                         var dwBackupNumber: Integer; var dwUserPrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.GetOneUserIDExLID(dwMachineNumber, UserID, dwBackupNumber, 
                                               dwUserPrivilege);
end;

function TCM_Interface.GetNewGLogDataExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                           var dwLogType: Integer; var dwLogStatus: Integer; 
                                           var dwYear: Integer; var dwMonth: Integer; 
                                           var dwDay: Integer; var dwHour: Integer; 
                                           var dwMinute: Integer; var dwSecond: Integer; 
                                           var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetNewGLogDataExLID(dwMachineNumber, UserID, dwLogType, dwLogStatus, 
                                                 dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                                 dwSecond, dwWeek);
end;

function TCM_Interface.GetAllGLogDataExLID(dwMachineNumber: Integer; var UserID: WideString; 
                                           var dwLogType: Integer; var dwLogStatus: Integer; 
                                           var dwYear: Integer; var dwMonth: Integer; 
                                           var dwDay: Integer; var dwHour: Integer; 
                                           var dwMinute: Integer; var dwSecond: Integer; 
                                           var dwWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogDataExLID(dwMachineNumber, UserID, dwLogType, dwLogStatus, 
                                                 dwYear, dwMonth, dwDay, dwHour, dwMinute, 
                                                 dwSecond, dwWeek);
end;

function TCM_Interface.SetUserTypeExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                        dwBackupNumber: Integer; dwUserType: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserTypeExLID(dwMachineNumber, UserID, dwBackupNumber, dwUserType);
end;

function TCM_Interface.ReadAllUserIDExLID(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserIDExLID(dwMachineNumber);
end;

function TCM_Interface.ReadNewGLogDataExLID(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogDataExLID(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.ReadAllGLogDataExLID(dwMachineNumber: Integer; var dwRecordCount: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogDataExLID(dwMachineNumber, dwRecordCount);
end;

function TCM_Interface.SetLicenceInfo(dwMachineNumber: Integer; dwLicVer: Integer; dwType: Integer; 
                                      const Value: WideString): WordBool;
begin
  Result := DefaultInterface.SetLicenceInfo(dwMachineNumber, dwLicVer, dwType, Value);
end;

function TCM_Interface.GetUserVerifyDateExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                              var StartDate: WideString; var EndDate: WideString; 
                                              var Available: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserVerifyDateExLID(dwMachineNumber, UserID, StartDate, EndDate, 
                                                    Available);
end;

function TCM_Interface.SetUserVerifyDateExLID(dwMachineNumber: Integer; const UserID: WideString; 
                                              const StartDate: WideString; 
                                              const EndDate: WideString; Available: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserVerifyDateExLID(dwMachineNumber, UserID, StartDate, EndDate, 
                                                    Available);
end;

function TCM_Interface.GetEnrollDataStrYB(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                          dwBackupNumber: Integer; var dwPrivilege: Integer; 
                                          var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStrYB(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                                dwPrivilege, StrEnrollData);
end;

function TCM_Interface.SetEnrollDataStrYB(dwMachineNumber: Integer; dwEnrollID: Integer; 
                                          dwBackupNumber: Integer; dwPrivilege: Integer; 
                                          var StrEnrollData: WideString): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStrYB(dwMachineNumber, dwEnrollID, dwBackupNumber, 
                                                dwPrivilege, StrEnrollData);
end;

procedure TCM_Interface.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TCM_Interface]);
end;

end.
