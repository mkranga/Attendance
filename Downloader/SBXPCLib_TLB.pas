unit SBXPCLib_TLB;

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
// File generated on 10/05/2025 3:27:20 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\MYDOC\Projects\Github\SSERP\SBXPC.ocx (1)
// LIBID: {08B7A8C2-FA2E-445D-81F9-8254C7B3FD16}
// LCID: 0
// Helpfile: D:\MYDOC\Projects\Github\SSERP\SBXPC.hlp
// HelpString: SBXPC ActiveX Control module
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
  SBXPCLibMajorVersion = 1;
  SBXPCLibMinorVersion = 0;

  LIBID_SBXPCLib: TGUID = '{08B7A8C2-FA2E-445D-81F9-8254C7B3FD16}';

  DIID__DSBXPC: TGUID = '{6C1D3CFC-712A-41B4-A53F-CC10F6412791}';
  DIID__DSBXPCEvents: TGUID = '{9FF3A121-0E3D-4C35-A776-C9C766FB14BE}';
  CLASS_SBXPC: TGUID = '{2894E36D-6941-48E0-ABF9-0D38241884FB}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DSBXPC = dispinterface;
  _DSBXPCEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SBXPC = _DSBXPC;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}
  POleVariant1 = ^OleVariant; {*}
  PWideString1 = ^WideString; {*}
  PByte1 = ^Byte; {*}
  PWord1 = ^Word; {*}


// *********************************************************************//
// DispIntf:  _DSBXPC
// Flags:     (4096) Dispatchable
// GUID:      {6C1D3CFC-712A-41B4-A53F-CC10F6412791}
// *********************************************************************//
  _DSBXPC = dispinterface
    ['{6C1D3CFC-712A-41B4-A53F-CC10F6412791}']
    property CommPort: Integer dispid 1;
    property Baudrate: Integer dispid 2;
    property ReadMark: WordBool dispid 3;
    function SetMachineType(const lpszMachineType: WideString): WordBool; dispid 4;
    procedure DotNET; dispid 5;
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           var dwPassWord: Integer): WordBool; dispid 6;
    function GetEnrollData1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwBackupNumber: Integer; var dwMachinePrivilege: Integer; 
                            var dwEnrollData: Integer; var dwPassWord: Integer): WordBool; dispid 7;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           dwPassWord: Integer): WordBool; dispid 8;
    function SetEnrollData1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwBackupNumber: Integer; dwMachinePrivilege: Integer; 
                            var dwEnrollData: Integer; dwPassWord: Integer): WordBool; dispid 9;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool; dispid 10;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool; dispid 11;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                             var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                             var dwManipulation: Integer; var dwBackupNumber: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool; dispid 12;
    function ReadGeneralLogData(dwMachineNumber: Integer): WordBool; dispid 13;
    function GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwYear: Integer; 
                               var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                               var dwMinute: Integer; var dwSecond: Integer): WordBool; dispid 14;
    function ReadAllSLogData(dwMachineNumber: Integer): WordBool; dispid 15;
    function GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                            var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                            var dwManipulation: Integer; var dwBackupNumber: Integer; 
                            var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                            var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool; dispid 16;
    function ReadAllGLogData(dwMachineNumber: Integer): WordBool; dispid 17;
    function GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                            var dwVerifyMode: Integer; var dwYear: Integer; var dwMonth: Integer; 
                            var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                            var dwSecond: Integer): WordBool; dispid 18;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 19;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 20;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 21;
    function EnableDevice(dwMachineNumber: Integer; bFlag: Integer): WordBool; dispid 22;
    function EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                        dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: Integer): WordBool; dispid 23;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer; var dwDayOfWeek: Integer): WordBool; dispid 24;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool; dispid 25;
    function PowerOnAllDevice: WordBool; dispid 26;
    function PowerOffDevice(dwMachineNumber: Integer): WordBool; dispid 27;
    function ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer): WordBool; dispid 28;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool; dispid 29;
    function GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                          var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                          var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool; dispid 30;
    function GetSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool; dispid 31;
    function GetBackupNumber(dwMachineNumber: Integer): Integer; dispid 32;
    function GetProductCode(dwMachineNumber: Integer; var lpszProductCode: WideString): WordBool; dispid 33;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool; dispid 34;
    function EmptyEnrollData(dwMachineNumber: Integer): WordBool; dispid 35;
    function EmptyGeneralLogData(dwMachineNumber: Integer): WordBool; dispid 36;
    function EmptySuperLogData(dwMachineNumber: Integer): WordBool; dispid 37;
    function GetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool; dispid 38;
    function GetUserName1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                          var lpszUserName: WideString): WordBool; dispid 39;
    function SetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool; dispid 40;
    function SetUserName1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                          var lpszUserName: WideString): WordBool; dispid 41;
    function GetCompanyName(dwMachineNumber: Integer; const dwCompanyName: OleVariant): WordBool; dispid 42;
    function GetCompanyName1(dwMachineNumber: Integer; var dwCompanyName: WideString): WordBool; dispid 43;
    function SetCompanyName(dwMachineNumber: Integer; vKind: Integer; 
                            const dwCompanyName: OleVariant): WordBool; dispid 44;
    function SetCompanyName1(dwMachineNumber: Integer; vKind: Integer; var dwCompanyName: WideString): WordBool; dispid 45;
    function GetDoorStatus(dwMachineNumber: Integer; var dwValue: Integer): WordBool; dispid 46;
    function SetDoorStatus(dwMachineNumber: Integer; dwValue: Integer): WordBool; dispid 47;
    function GetBellTime(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool; dispid 48;
    function SetBellTime(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool; dispid 49;
    function ConnectSerial(dwMachineNumber: Integer; dwCommPort: Integer; dwBaudRate: Integer): WordBool; dispid 50;
    function ConnectTcpip(dwMachineNumber: Integer; var lpszIPAddress: WideString; 
                          dwPortNumber: Integer; dwPassWord: Integer): WordBool; dispid 51;
    procedure Disconnect; dispid 52;
    function SetIPAddress(var lpszIPAddress: WideString; dwPortNumber: Integer; dwPassWord: Integer): WordBool; dispid 53;
    function OpenCommPort(dwMachineNumber: Integer): WordBool; dispid 54;
    procedure CloseCommPort; dispid 55;
    function GetLastError(var dwErrorCode: Integer): WordBool; dispid 56;
    function GeneralOperationXML(var lpszReqNResXML: WideString): WordBool; dispid 57;
    function GetDeviceLongInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 58;
    function SetDeviceLongInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 59;
    function ModifyDuressFP(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwBackupNumber: Integer; dwDuressSetting: Integer): WordBool; dispid 60;
    function GetMachineIP(const lpszProduct: WideString; dwMachineNumber: Integer; 
                          var lpszIPBuf: WideString): WordBool; dispid 61;
    function GetDepartName(dwMachineNumber: Integer; dwDepartNumber: Integer; 
                           dwDepartOrDaigong: Integer; var lpszUserName: WideString): WordBool; dispid 62;
    function SetDepartName(dwMachineNumber: Integer; dwDepartNumber: Integer; 
                           dwDepartOrDaigong: Integer; var lpszUserName: WideString): WordBool; dispid 63;
    function StartEventCapture(dwCommType: Integer; dwParam1: Integer; dwParam2: Integer): WordBool; dispid 64;
    procedure StopEventCapture; dispid 65;
    function XML_ParseInt(var lpszXML: WideString; const lpszTagname: WideString): Integer; dispid 66;
    function XML_ParseLong(var lpszXML: WideString; const lpszTagname: WideString): Integer; dispid 67;
    function XML_ParseBoolean(var lpszXML: WideString; const lpszTagname: WideString): WordBool; dispid 68;
    function XML_ParseString(var lpszXML: WideString; const lpszTagname: WideString; 
                             var lpszValue: WideString): WordBool; dispid 69;
    function XML_ParseBinaryByte(var lpszXML: WideString; const lpszTagname: WideString; 
                                 var pData: Byte; dwLen: Integer): WordBool; dispid 70;
    function XML_ParseBinaryWord(var lpszXML: WideString; const lpszTagname: WideString; 
                                 var pData: Word; dwLen: Integer): WordBool; dispid 71;
    function XML_ParseBinaryLong(var lpszXML: WideString; const lpszTagname: WideString; 
                                 var pData: Integer; dwLen: Integer): WordBool; dispid 72;
    function XML_ParseBinaryUnicode(var lpszXML: WideString; 
                                    lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                    var pData: WideString; dwLen: Integer): WordBool; dispid 73;
    function XML_AddInt(var lpszXML: WideString; const lpszTagname: WideString; nValue: SYSINT): WordBool; dispid 74;
    function XML_AddLong(var lpszXML: WideString; const lpszTagname: WideString; dwValue: Integer): WordBool; dispid 75;
    function XML_AddBoolean(var lpszXML: WideString; const lpszTagname: WideString; bValue: WordBool): WordBool; dispid 76;
    function XML_AddString(var lpszXML: WideString; const lpszTagname: WideString; 
                           const lpszValue: WideString): WordBool; dispid 77;
    function XML_AddBinaryByte(var lpszXML: WideString; const lpszTagname: WideString; 
                               var dwData: Byte; dwLen: Integer): WordBool; dispid 78;
    function XML_AddBinaryWord(var lpszXML: WideString; const lpszTagname: WideString; 
                               var dwData: Word; dwLen: Integer): WordBool; dispid 79;
    function XML_AddBinaryLong(var lpszXML: WideString; const lpszTagname: WideString; 
                               var dwData: Integer; dwLen: Integer): WordBool; dispid 80;
    function XML_AddBinaryUnicode(var lpszXML: WideString; const lpszTagname: WideString; 
                                  var lpszData: WideString): WordBool; dispid 81;
    function XML_AddBinaryGlyph(var lpszXML: WideString; const lpszMessage: WideString; 
                                width: Integer; height: Integer; 
                                const lpszFontDescriptor: WideString): WordBool; dispid 82;
    function ConnectP2p(var lpszMachineID: WideString; var lpszServerIPAddress: WideString; 
                        dwServerPortNumber: Integer; dwPassWord: Integer; var pnError: Integer): Integer; dispid 83;
    function PrepareP2p(var lpszMachineID: WideString; var lpszServerIPAddress: WideString; 
                        dwServerPortNumber: Integer; var dwYearStart: Integer; 
                        var dwMonthStart: Integer; var dwDayStart: Integer; var dwYearEnd: Integer; 
                        var dwMonthEnd: Integer; var dwDayEnd: Integer; var pnError: Integer): WordBool; dispid 84;
    function XML_AddBinaryNameGlyph(dwMachineNumber: Integer; var lpszXML: WideString; 
                                    var lpszName: WideString): WordBool; dispid 85;
    function XML_ParseMultiUnicode(var lpszXML: WideString; 
                                   lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                   var pData: WideString; dwLen: Integer): WordBool; dispid 86;
    function SetDeviceTime1(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                            dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool; dispid 87;
    procedure Disconnect1(dwMachineNumber: Integer); dispid 88;
    procedure DisconnectAll; dispid 89;
    function GeneralOperationXML1(dwMachineNumber: Integer; var lpszReqNResXML: WideString): WordBool; dispid 90;
    procedure UseInternalRedraw(redraw: Integer); dispid 91;
    function GetInternalFwVer(dwMachineNumber: Integer): Integer; dispid 92;
    function ReadGLogWithPos(dwMachineNumber: Integer; dwStartPos: Integer; dwEndPos: Integer): WordBool; dispid 93;
    function ReadSLogWithPos(dwMachineNumber: Integer; dwStartPos: Integer; dwEndPos: Integer): WordBool; dispid 94;
    function GetDeviceUniqueID(dwMachineNumber: Integer; const dwDeviceUniqueID: OleVariant): WordBool; dispid 95;
    function GetDeviceUniqueID1(dwMachineNumber: Integer; var dwDeviceUniqueID: WideString): WordBool; dispid 96;
    function GetDeviceModel(dwMachineNumber: Integer; var dwIsBigUserId: Integer; 
                            var dwCompanyType: Integer; var dwMachineType: Integer; 
                            var dwMachineVersion: Integer): WordBool; dispid 97;
    function XML_ParseBinaryAnsi2Unicode(var lpszXML: WideString; 
                                         lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                         var pData: WideString; dwLen: Integer): WordBool; dispid 98;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DSBXPCEvents
// Flags:     (4096) Dispatchable
// GUID:      {9FF3A121-0E3D-4C35-A776-C9C766FB14BE}
// *********************************************************************//
  _DSBXPCEvents = dispinterface
    ['{9FF3A121-0E3D-4C35-A776-C9C766FB14BE}']
    procedure OnReceiveEventXML(const lpszEventXML: WideString); dispid 1;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TSBXPC
// Help String      : SBXPC Control
// Default Interface: _DSBXPC
// Def. Intf. DISP? : Yes
// Event   Interface: _DSBXPCEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TSBXPCOnReceiveEventXML = procedure(ASender: TObject; const lpszEventXML: WideString) of object;

  TSBXPC = class(TOleControl)
  private
    FOnReceiveEventXML: TSBXPCOnReceiveEventXML;
    FIntf: _DSBXPC;
    function  GetControlInterface: _DSBXPC;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function SetMachineType(const lpszMachineType: WideString): WordBool;
    procedure DotNET;
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           var dwPassWord: Integer): WordBool;
    function GetEnrollData1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwBackupNumber: Integer; var dwMachinePrivilege: Integer; 
                            var dwEnrollData: Integer; var dwPassWord: Integer): WordBool;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                           dwPassWord: Integer): WordBool;
    function SetEnrollData1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwBackupNumber: Integer; dwMachinePrivilege: Integer; 
                            var dwEnrollData: Integer; dwPassWord: Integer): WordBool;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                             var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                             var dwManipulation: Integer; var dwBackupNumber: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool;
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
                            var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool;
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
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer; var dwDayOfWeek: Integer): WordBool;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool;
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
    function GetBackupNumber(dwMachineNumber: Integer): Integer;
    function GetProductCode(dwMachineNumber: Integer; var lpszProductCode: WideString): WordBool;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool;
    function EmptyEnrollData(dwMachineNumber: Integer): WordBool;
    function EmptyGeneralLogData(dwMachineNumber: Integer): WordBool;
    function EmptySuperLogData(dwMachineNumber: Integer): WordBool;
    function GetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool;
    function GetUserName1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                          var lpszUserName: WideString): WordBool;
    function SetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                         dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool;
    function SetUserName1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                          var lpszUserName: WideString): WordBool;
    function GetCompanyName(dwMachineNumber: Integer; const dwCompanyName: OleVariant): WordBool;
    function GetCompanyName1(dwMachineNumber: Integer; var dwCompanyName: WideString): WordBool;
    function SetCompanyName(dwMachineNumber: Integer; vKind: Integer; 
                            const dwCompanyName: OleVariant): WordBool;
    function SetCompanyName1(dwMachineNumber: Integer; vKind: Integer; var dwCompanyName: WideString): WordBool;
    function GetDoorStatus(dwMachineNumber: Integer; var dwValue: Integer): WordBool;
    function SetDoorStatus(dwMachineNumber: Integer; dwValue: Integer): WordBool;
    function GetBellTime(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool;
    function SetBellTime(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool;
    function ConnectSerial(dwMachineNumber: Integer; dwCommPort: Integer; dwBaudRate: Integer): WordBool;
    function ConnectTcpip(dwMachineNumber: Integer; var lpszIPAddress: WideString; 
                          dwPortNumber: Integer; dwPassWord: Integer): WordBool;
    procedure Disconnect;
    function SetIPAddress(var lpszIPAddress: WideString; dwPortNumber: Integer; dwPassWord: Integer): WordBool;
    function OpenCommPort(dwMachineNumber: Integer): WordBool;
    procedure CloseCommPort;
    function GetLastError(var dwErrorCode: Integer): WordBool;
    function GeneralOperationXML(var lpszReqNResXML: WideString): WordBool;
    function GetDeviceLongInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function SetDeviceLongInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function ModifyDuressFP(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwBackupNumber: Integer; dwDuressSetting: Integer): WordBool;
    function GetMachineIP(const lpszProduct: WideString; dwMachineNumber: Integer; 
                          var lpszIPBuf: WideString): WordBool;
    function GetDepartName(dwMachineNumber: Integer; dwDepartNumber: Integer; 
                           dwDepartOrDaigong: Integer; var lpszUserName: WideString): WordBool;
    function SetDepartName(dwMachineNumber: Integer; dwDepartNumber: Integer; 
                           dwDepartOrDaigong: Integer; var lpszUserName: WideString): WordBool;
    function StartEventCapture(dwCommType: Integer; dwParam1: Integer; dwParam2: Integer): WordBool;
    procedure StopEventCapture;
    function XML_ParseInt(var lpszXML: WideString; const lpszTagname: WideString): Integer;
    function XML_ParseLong(var lpszXML: WideString; const lpszTagname: WideString): Integer;
    function XML_ParseBoolean(var lpszXML: WideString; const lpszTagname: WideString): WordBool;
    function XML_ParseString(var lpszXML: WideString; const lpszTagname: WideString; 
                             var lpszValue: WideString): WordBool;
    function XML_ParseBinaryByte(var lpszXML: WideString; const lpszTagname: WideString; 
                                 var pData: Byte; dwLen: Integer): WordBool;
    function XML_ParseBinaryWord(var lpszXML: WideString; const lpszTagname: WideString; 
                                 var pData: Word; dwLen: Integer): WordBool;
    function XML_ParseBinaryLong(var lpszXML: WideString; const lpszTagname: WideString; 
                                 var pData: Integer; dwLen: Integer): WordBool;
    function XML_ParseBinaryUnicode(var lpszXML: WideString; 
                                    lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                    var pData: WideString; dwLen: Integer): WordBool;
    function XML_AddInt(var lpszXML: WideString; const lpszTagname: WideString; nValue: SYSINT): WordBool;
    function XML_AddLong(var lpszXML: WideString; const lpszTagname: WideString; dwValue: Integer): WordBool;
    function XML_AddBoolean(var lpszXML: WideString; const lpszTagname: WideString; bValue: WordBool): WordBool;
    function XML_AddString(var lpszXML: WideString; const lpszTagname: WideString; 
                           const lpszValue: WideString): WordBool;
    function XML_AddBinaryByte(var lpszXML: WideString; const lpszTagname: WideString; 
                               var dwData: Byte; dwLen: Integer): WordBool;
    function XML_AddBinaryWord(var lpszXML: WideString; const lpszTagname: WideString; 
                               var dwData: Word; dwLen: Integer): WordBool;
    function XML_AddBinaryLong(var lpszXML: WideString; const lpszTagname: WideString; 
                               var dwData: Integer; dwLen: Integer): WordBool;
    function XML_AddBinaryUnicode(var lpszXML: WideString; const lpszTagname: WideString; 
                                  var lpszData: WideString): WordBool;
    function XML_AddBinaryGlyph(var lpszXML: WideString; const lpszMessage: WideString; 
                                width: Integer; height: Integer; 
                                const lpszFontDescriptor: WideString): WordBool;
    function ConnectP2p(var lpszMachineID: WideString; var lpszServerIPAddress: WideString; 
                        dwServerPortNumber: Integer; dwPassWord: Integer; var pnError: Integer): Integer;
    function PrepareP2p(var lpszMachineID: WideString; var lpszServerIPAddress: WideString; 
                        dwServerPortNumber: Integer; var dwYearStart: Integer; 
                        var dwMonthStart: Integer; var dwDayStart: Integer; var dwYearEnd: Integer; 
                        var dwMonthEnd: Integer; var dwDayEnd: Integer; var pnError: Integer): WordBool;
    function XML_AddBinaryNameGlyph(dwMachineNumber: Integer; var lpszXML: WideString; 
                                    var lpszName: WideString): WordBool;
    function XML_ParseMultiUnicode(var lpszXML: WideString; 
                                   lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                   var pData: WideString; dwLen: Integer): WordBool;
    function SetDeviceTime1(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                            dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
    procedure Disconnect1(dwMachineNumber: Integer);
    procedure DisconnectAll;
    function GeneralOperationXML1(dwMachineNumber: Integer; var lpszReqNResXML: WideString): WordBool;
    procedure UseInternalRedraw(redraw: Integer);
    function GetInternalFwVer(dwMachineNumber: Integer): Integer;
    function ReadGLogWithPos(dwMachineNumber: Integer; dwStartPos: Integer; dwEndPos: Integer): WordBool;
    function ReadSLogWithPos(dwMachineNumber: Integer; dwStartPos: Integer; dwEndPos: Integer): WordBool;
    function GetDeviceUniqueID(dwMachineNumber: Integer; const dwDeviceUniqueID: OleVariant): WordBool;
    function GetDeviceUniqueID1(dwMachineNumber: Integer; var dwDeviceUniqueID: WideString): WordBool;
    function GetDeviceModel(dwMachineNumber: Integer; var dwIsBigUserId: Integer; 
                            var dwCompanyType: Integer; var dwMachineType: Integer; 
                            var dwMachineVersion: Integer): WordBool;
    function XML_ParseBinaryAnsi2Unicode(var lpszXML: WideString; 
                                         lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                         var pData: WideString; dwLen: Integer): WordBool;
    procedure AboutBox;
    property  ControlInterface: _DSBXPC read GetControlInterface;
    property  DefaultInterface: _DSBXPC read GetControlInterface;
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
    property Baudrate: Integer index 2 read GetIntegerProp write SetIntegerProp stored False;
    property ReadMark: WordBool index 3 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnReceiveEventXML: TSBXPCOnReceiveEventXML read FOnReceiveEventXML write FOnReceiveEventXML;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

procedure TSBXPC.InitControlData;
const
  CEventDispIDs: array [0..0] of DWORD = (
    $00000001);
  CControlData: TControlData2 = (
    ClassID:      '{2894E36D-6941-48E0-ABF9-0D38241884FB}';
    EventIID:     '{9FF3A121-0E3D-4C35-A776-C9C766FB14BE}';
    EventCount:   1;
    EventDispIDs: @CEventDispIDs;
    LicenseKey:   nil (*HR:$80004005*);
    Flags:        $00000000;
    Version:      500);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := UIntPtr(@@FOnReceiveEventXML) - UIntPtr(Self);
end;

procedure TSBXPC.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DSBXPC;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TSBXPC.GetControlInterface: _DSBXPC;
begin
  CreateControl;
  Result := FIntf;
end;

function TSBXPC.SetMachineType(const lpszMachineType: WideString): WordBool;
begin
  Result := DefaultInterface.SetMachineType(lpszMachineType);
end;

procedure TSBXPC.DotNET;
begin
  DefaultInterface.DotNET;
end;

function TSBXPC.GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                              var dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.GetEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                           dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                           dwPassWord);
end;

function TSBXPC.GetEnrollData1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               dwBackupNumber: Integer; var dwMachinePrivilege: Integer; 
                               var dwEnrollData: Integer; var dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.GetEnrollData1(dwMachineNumber, dwEnrollNumber, dwBackupNumber, 
                                            dwMachinePrivilege, dwEnrollData, dwPassWord);
end;

function TSBXPC.SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; const dwEnrollData: OleVariant; 
                              dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                           dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                           dwPassWord);
end;

function TSBXPC.SetEnrollData1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               dwBackupNumber: Integer; dwMachinePrivilege: Integer; 
                               var dwEnrollData: Integer; dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetEnrollData1(dwMachineNumber, dwEnrollNumber, dwBackupNumber, 
                                            dwMachinePrivilege, dwEnrollData, dwPassWord);
end;

function TSBXPC.DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber);
end;

function TSBXPC.ReadSuperLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadSuperLogData(dwMachineNumber);
end;

function TSBXPC.GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                                var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                                var dwManipulation: Integer; var dwBackupNumber: Integer; 
                                var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetSuperLogData(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                             dwSMachineNumber, dwGEnrollNumber, dwGMachineNumber, 
                                             dwManipulation, dwBackupNumber, dwYear, dwMonth, 
                                             dwDay, dwHour, dwMinute, dwSecond);
end;

function TSBXPC.ReadGeneralLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGeneralLogData(dwMachineNumber);
end;

function TSBXPC.GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                  var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwYear: Integer; 
                                  var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                                  var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetGeneralLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                               dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, 
                                               dwDay, dwHour, dwMinute, dwSecond);
end;

function TSBXPC.ReadAllSLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllSLogData(dwMachineNumber);
end;

function TSBXPC.GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwSEnrollNumber: Integer; var dwSMachineNumber: Integer; 
                               var dwGEnrollNumber: Integer; var dwGMachineNumber: Integer; 
                               var dwManipulation: Integer; var dwBackupNumber: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllSLogData(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                            dwSMachineNumber, dwGEnrollNumber, dwGMachineNumber, 
                                            dwManipulation, dwBackupNumber, dwYear, dwMonth, dwDay, 
                                            dwHour, dwMinute, dwSecond);
end;

function TSBXPC.ReadAllGLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogData(dwMachineNumber);
end;

function TSBXPC.GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwYear: Integer; 
                               var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                               var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                            dwEMachineNumber, dwVerifyMode, dwYear, dwMonth, dwDay, 
                                            dwHour, dwMinute, dwSecond);
end;

function TSBXPC.GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatus(dwMachineNumber, dwStatus, dwValue);
end;

function TSBXPC.GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TSBXPC.SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TSBXPC.EnableDevice(dwMachineNumber: Integer; bFlag: Integer): WordBool;
begin
  Result := DefaultInterface.EnableDevice(dwMachineNumber, bFlag);
end;

function TSBXPC.EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: Integer): WordBool;
begin
  Result := DefaultInterface.EnableUser(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                        dwBackupNumber, bFlag);
end;

function TSBXPC.GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                              var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                              var dwSecond: Integer; var dwDayOfWeek: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceTime(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                           dwMinute, dwSecond, dwDayOfWeek);
end;

function TSBXPC.SetDeviceTime(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTime(dwMachineNumber);
end;

function TSBXPC.PowerOnAllDevice: WordBool;
begin
  Result := DefaultInterface.PowerOnAllDevice;
end;

function TSBXPC.PowerOffDevice(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.PowerOffDevice(dwMachineNumber);
end;

function TSBXPC.ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                dwMachinePrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.ModifyPrivilege(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                             dwBackupNumber, dwMachinePrivilege);
end;

function TSBXPC.ReadAllUserID(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserID(dwMachineNumber);
end;

function TSBXPC.GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                             var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                             var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllUserID(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                          dwBackupNumber, dwMachinePrivilege, dwEnable);
end;

function TSBXPC.GetSerialNumber(dwMachineNumber: Integer; var lpszSerialNumber: WideString): WordBool;
begin
  Result := DefaultInterface.GetSerialNumber(dwMachineNumber, lpszSerialNumber);
end;

function TSBXPC.GetBackupNumber(dwMachineNumber: Integer): Integer;
begin
  Result := DefaultInterface.GetBackupNumber(dwMachineNumber);
end;

function TSBXPC.GetProductCode(dwMachineNumber: Integer; var lpszProductCode: WideString): WordBool;
begin
  Result := DefaultInterface.GetProductCode(dwMachineNumber, lpszProductCode);
end;

function TSBXPC.ClearKeeperData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearKeeperData(dwMachineNumber);
end;

function TSBXPC.EmptyEnrollData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyEnrollData(dwMachineNumber);
end;

function TSBXPC.EmptyGeneralLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyGeneralLogData(dwMachineNumber);
end;

function TSBXPC.EmptySuperLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptySuperLogData(dwMachineNumber);
end;

function TSBXPC.GetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetUserName(DeviceKind, dwMachineNumber, dwEnrollNumber, 
                                         dwEMachineNumber, lpszUserName);
end;

function TSBXPC.GetUserName1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             var lpszUserName: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserName1(dwMachineNumber, dwEnrollNumber, lpszUserName);
end;

function TSBXPC.SetUserName(DeviceKind: Integer; dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            dwEMachineNumber: Integer; const lpszUserName: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetUserName(DeviceKind, dwMachineNumber, dwEnrollNumber, 
                                         dwEMachineNumber, lpszUserName);
end;

function TSBXPC.SetUserName1(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             var lpszUserName: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserName1(dwMachineNumber, dwEnrollNumber, lpszUserName);
end;

function TSBXPC.GetCompanyName(dwMachineNumber: Integer; const dwCompanyName: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetCompanyName(dwMachineNumber, dwCompanyName);
end;

function TSBXPC.GetCompanyName1(dwMachineNumber: Integer; var dwCompanyName: WideString): WordBool;
begin
  Result := DefaultInterface.GetCompanyName1(dwMachineNumber, dwCompanyName);
end;

function TSBXPC.SetCompanyName(dwMachineNumber: Integer; vKind: Integer; 
                               const dwCompanyName: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetCompanyName(dwMachineNumber, vKind, dwCompanyName);
end;

function TSBXPC.SetCompanyName1(dwMachineNumber: Integer; vKind: Integer; 
                                var dwCompanyName: WideString): WordBool;
begin
  Result := DefaultInterface.SetCompanyName1(dwMachineNumber, vKind, dwCompanyName);
end;

function TSBXPC.GetDoorStatus(dwMachineNumber: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDoorStatus(dwMachineNumber, dwValue);
end;

function TSBXPC.SetDoorStatus(dwMachineNumber: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDoorStatus(dwMachineNumber, dwValue);
end;

function TSBXPC.GetBellTime(dwMachineNumber: Integer; var dwValue: Integer; var dwBellInfo: Integer): WordBool;
begin
  Result := DefaultInterface.GetBellTime(dwMachineNumber, dwValue, dwBellInfo);
end;

function TSBXPC.SetBellTime(dwMachineNumber: Integer; dwValue: Integer; var dwBellInfo: Integer): WordBool;
begin
  Result := DefaultInterface.SetBellTime(dwMachineNumber, dwValue, dwBellInfo);
end;

function TSBXPC.ConnectSerial(dwMachineNumber: Integer; dwCommPort: Integer; dwBaudRate: Integer): WordBool;
begin
  Result := DefaultInterface.ConnectSerial(dwMachineNumber, dwCommPort, dwBaudRate);
end;

function TSBXPC.ConnectTcpip(dwMachineNumber: Integer; var lpszIPAddress: WideString; 
                             dwPortNumber: Integer; dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.ConnectTcpip(dwMachineNumber, lpszIPAddress, dwPortNumber, dwPassWord);
end;

procedure TSBXPC.Disconnect;
begin
  DefaultInterface.Disconnect;
end;

function TSBXPC.SetIPAddress(var lpszIPAddress: WideString; dwPortNumber: Integer; 
                             dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetIPAddress(lpszIPAddress, dwPortNumber, dwPassWord);
end;

function TSBXPC.OpenCommPort(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.OpenCommPort(dwMachineNumber);
end;

procedure TSBXPC.CloseCommPort;
begin
  DefaultInterface.CloseCommPort;
end;

function TSBXPC.GetLastError(var dwErrorCode: Integer): WordBool;
begin
  Result := DefaultInterface.GetLastError(dwErrorCode);
end;

function TSBXPC.GeneralOperationXML(var lpszReqNResXML: WideString): WordBool;
begin
  Result := DefaultInterface.GeneralOperationXML(lpszReqNResXML);
end;

function TSBXPC.GetDeviceLongInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceLongInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TSBXPC.SetDeviceLongInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceLongInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TSBXPC.ModifyDuressFP(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                               dwBackupNumber: Integer; dwDuressSetting: Integer): WordBool;
begin
  Result := DefaultInterface.ModifyDuressFP(dwMachineNumber, dwEnrollNumber, dwBackupNumber, 
                                            dwDuressSetting);
end;

function TSBXPC.GetMachineIP(const lpszProduct: WideString; dwMachineNumber: Integer; 
                             var lpszIPBuf: WideString): WordBool;
begin
  Result := DefaultInterface.GetMachineIP(lpszProduct, dwMachineNumber, lpszIPBuf);
end;

function TSBXPC.GetDepartName(dwMachineNumber: Integer; dwDepartNumber: Integer; 
                              dwDepartOrDaigong: Integer; var lpszUserName: WideString): WordBool;
begin
  Result := DefaultInterface.GetDepartName(dwMachineNumber, dwDepartNumber, dwDepartOrDaigong, 
                                           lpszUserName);
end;

function TSBXPC.SetDepartName(dwMachineNumber: Integer; dwDepartNumber: Integer; 
                              dwDepartOrDaigong: Integer; var lpszUserName: WideString): WordBool;
begin
  Result := DefaultInterface.SetDepartName(dwMachineNumber, dwDepartNumber, dwDepartOrDaigong, 
                                           lpszUserName);
end;

function TSBXPC.StartEventCapture(dwCommType: Integer; dwParam1: Integer; dwParam2: Integer): WordBool;
begin
  Result := DefaultInterface.StartEventCapture(dwCommType, dwParam1, dwParam2);
end;

procedure TSBXPC.StopEventCapture;
begin
  DefaultInterface.StopEventCapture;
end;

function TSBXPC.XML_ParseInt(var lpszXML: WideString; const lpszTagname: WideString): Integer;
begin
  Result := DefaultInterface.XML_ParseInt(lpszXML, lpszTagname);
end;

function TSBXPC.XML_ParseLong(var lpszXML: WideString; const lpszTagname: WideString): Integer;
begin
  Result := DefaultInterface.XML_ParseLong(lpszXML, lpszTagname);
end;

function TSBXPC.XML_ParseBoolean(var lpszXML: WideString; const lpszTagname: WideString): WordBool;
begin
  Result := DefaultInterface.XML_ParseBoolean(lpszXML, lpszTagname);
end;

function TSBXPC.XML_ParseString(var lpszXML: WideString; const lpszTagname: WideString; 
                                var lpszValue: WideString): WordBool;
begin
  Result := DefaultInterface.XML_ParseString(lpszXML, lpszTagname, lpszValue);
end;

function TSBXPC.XML_ParseBinaryByte(var lpszXML: WideString; const lpszTagname: WideString; 
                                    var pData: Byte; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_ParseBinaryByte(lpszXML, lpszTagname, pData, dwLen);
end;

function TSBXPC.XML_ParseBinaryWord(var lpszXML: WideString; const lpszTagname: WideString; 
                                    var pData: Word; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_ParseBinaryWord(lpszXML, lpszTagname, pData, dwLen);
end;

function TSBXPC.XML_ParseBinaryLong(var lpszXML: WideString; const lpszTagname: WideString; 
                                    var pData: Integer; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_ParseBinaryLong(lpszXML, lpszTagname, pData, dwLen);
end;

function TSBXPC.XML_ParseBinaryUnicode(var lpszXML: WideString; 
                                       lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                       var pData: WideString; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_ParseBinaryUnicode(lpszXML, lpszTagname, pData, dwLen);
end;

function TSBXPC.XML_AddInt(var lpszXML: WideString; const lpszTagname: WideString; nValue: SYSINT): WordBool;
begin
  Result := DefaultInterface.XML_AddInt(lpszXML, lpszTagname, nValue);
end;

function TSBXPC.XML_AddLong(var lpszXML: WideString; const lpszTagname: WideString; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.XML_AddLong(lpszXML, lpszTagname, dwValue);
end;

function TSBXPC.XML_AddBoolean(var lpszXML: WideString; const lpszTagname: WideString; 
                               bValue: WordBool): WordBool;
begin
  Result := DefaultInterface.XML_AddBoolean(lpszXML, lpszTagname, bValue);
end;

function TSBXPC.XML_AddString(var lpszXML: WideString; const lpszTagname: WideString; 
                              const lpszValue: WideString): WordBool;
begin
  Result := DefaultInterface.XML_AddString(lpszXML, lpszTagname, lpszValue);
end;

function TSBXPC.XML_AddBinaryByte(var lpszXML: WideString; const lpszTagname: WideString; 
                                  var dwData: Byte; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_AddBinaryByte(lpszXML, lpszTagname, dwData, dwLen);
end;

function TSBXPC.XML_AddBinaryWord(var lpszXML: WideString; const lpszTagname: WideString; 
                                  var dwData: Word; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_AddBinaryWord(lpszXML, lpszTagname, dwData, dwLen);
end;

function TSBXPC.XML_AddBinaryLong(var lpszXML: WideString; const lpszTagname: WideString; 
                                  var dwData: Integer; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_AddBinaryLong(lpszXML, lpszTagname, dwData, dwLen);
end;

function TSBXPC.XML_AddBinaryUnicode(var lpszXML: WideString; const lpszTagname: WideString; 
                                     var lpszData: WideString): WordBool;
begin
  Result := DefaultInterface.XML_AddBinaryUnicode(lpszXML, lpszTagname, lpszData);
end;

function TSBXPC.XML_AddBinaryGlyph(var lpszXML: WideString; const lpszMessage: WideString; 
                                   width: Integer; height: Integer; 
                                   const lpszFontDescriptor: WideString): WordBool;
begin
  Result := DefaultInterface.XML_AddBinaryGlyph(lpszXML, lpszMessage, width, height, 
                                                lpszFontDescriptor);
end;

function TSBXPC.ConnectP2p(var lpszMachineID: WideString; var lpszServerIPAddress: WideString; 
                           dwServerPortNumber: Integer; dwPassWord: Integer; var pnError: Integer): Integer;
begin
  Result := DefaultInterface.ConnectP2p(lpszMachineID, lpszServerIPAddress, dwServerPortNumber, 
                                        dwPassWord, pnError);
end;

function TSBXPC.PrepareP2p(var lpszMachineID: WideString; var lpszServerIPAddress: WideString; 
                           dwServerPortNumber: Integer; var dwYearStart: Integer; 
                           var dwMonthStart: Integer; var dwDayStart: Integer; 
                           var dwYearEnd: Integer; var dwMonthEnd: Integer; var dwDayEnd: Integer; 
                           var pnError: Integer): WordBool;
begin
  Result := DefaultInterface.PrepareP2p(lpszMachineID, lpszServerIPAddress, dwServerPortNumber, 
                                        dwYearStart, dwMonthStart, dwDayStart, dwYearEnd, 
                                        dwMonthEnd, dwDayEnd, pnError);
end;

function TSBXPC.XML_AddBinaryNameGlyph(dwMachineNumber: Integer; var lpszXML: WideString; 
                                       var lpszName: WideString): WordBool;
begin
  Result := DefaultInterface.XML_AddBinaryNameGlyph(dwMachineNumber, lpszXML, lpszName);
end;

function TSBXPC.XML_ParseMultiUnicode(var lpszXML: WideString; 
                                      lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                      var pData: WideString; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_ParseMultiUnicode(lpszXML, lpszTagname, pData, dwLen);
end;

function TSBXPC.SetDeviceTime1(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                               dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTime1(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                            dwMinute, dwSecond);
end;

procedure TSBXPC.Disconnect1(dwMachineNumber: Integer);
begin
  DefaultInterface.Disconnect1(dwMachineNumber);
end;

procedure TSBXPC.DisconnectAll;
begin
  DefaultInterface.DisconnectAll;
end;

function TSBXPC.GeneralOperationXML1(dwMachineNumber: Integer; var lpszReqNResXML: WideString): WordBool;
begin
  Result := DefaultInterface.GeneralOperationXML1(dwMachineNumber, lpszReqNResXML);
end;

procedure TSBXPC.UseInternalRedraw(redraw: Integer);
begin
  DefaultInterface.UseInternalRedraw(redraw);
end;

function TSBXPC.GetInternalFwVer(dwMachineNumber: Integer): Integer;
begin
  Result := DefaultInterface.GetInternalFwVer(dwMachineNumber);
end;

function TSBXPC.ReadGLogWithPos(dwMachineNumber: Integer; dwStartPos: Integer; dwEndPos: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGLogWithPos(dwMachineNumber, dwStartPos, dwEndPos);
end;

function TSBXPC.ReadSLogWithPos(dwMachineNumber: Integer; dwStartPos: Integer; dwEndPos: Integer): WordBool;
begin
  Result := DefaultInterface.ReadSLogWithPos(dwMachineNumber, dwStartPos, dwEndPos);
end;

function TSBXPC.GetDeviceUniqueID(dwMachineNumber: Integer; const dwDeviceUniqueID: OleVariant): WordBool;
begin
  Result := DefaultInterface.GetDeviceUniqueID(dwMachineNumber, dwDeviceUniqueID);
end;

function TSBXPC.GetDeviceUniqueID1(dwMachineNumber: Integer; var dwDeviceUniqueID: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceUniqueID1(dwMachineNumber, dwDeviceUniqueID);
end;

function TSBXPC.GetDeviceModel(dwMachineNumber: Integer; var dwIsBigUserId: Integer; 
                               var dwCompanyType: Integer; var dwMachineType: Integer; 
                               var dwMachineVersion: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceModel(dwMachineNumber, dwIsBigUserId, dwCompanyType, 
                                            dwMachineType, dwMachineVersion);
end;

function TSBXPC.XML_ParseBinaryAnsi2Unicode(var lpszXML: WideString; 
                                            lpszTagname: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                                            var pData: WideString; dwLen: Integer): WordBool;
begin
  Result := DefaultInterface.XML_ParseBinaryAnsi2Unicode(lpszXML, lpszTagname, pData, dwLen);
end;

procedure TSBXPC.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TSBXPC]);
end;

end.
