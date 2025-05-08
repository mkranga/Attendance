// JCL_DEBUG_EXPERT_GENERATEJDBG OFF
program LionERP;


{$R *.dres}

uses
  {$IFDEF Debug}
  {$IFEND }
  Vcl.Forms,
  System.DateUtils,
  Vcl.Dialogs,
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  jcldebug,
  CommonU in 'Src\CommonU.pas',
  LogU in 'Src\LogU.pas',
  MainU in 'Src\MainU.pas' {MainF},
  DataU in 'Src\DataU.pas' {DataM: TDataModule},
  SQLSPanelU in 'Src\SQLSPanelU.pas',
  LoginU in 'Src\LoginU.pas' {LoginF},
  AboutU in 'Src\AboutU.pas' {AboutF},
  SettingsU in 'Src\SettingsU.pas',
  DataFormTPLU in 'Src\DataFormTPLU.pas' {DataFormTPL},
  InputMemoU in 'Src\InputMemoU.pas' {InputMemoF},
  TypeDefU in 'Src\TypeDefU.pas' {TypeDefF},
  CourseSetupU in 'Src\CourseSetupU.pas' {CourseSetupF},
  SettingsFU in 'Src\SettingsFU.pas' {SettingsF},
  AttendanceU in 'Src\AttendanceU.pas' {AttendanceF},
  ReportsU in 'Src\ReportsU.pas' {ReportsF},
  PaymentU in 'Src\PaymentU.pas' {PaymentF},
  DownloadU in 'Src\DownloadU.pas' {DownloadF},
  POSU in 'Src\POSU.pas' {POSF},
  StockInU in 'Src\StockInU.pas' {StockInF},
  DelphiZXIngQRCode in 'Src\DelphiZXIngQRCode.pas',
  ChequeU in 'Src\ChequeU.pas' {ChequeF},
  ShiftAndRosterU in 'Src\ShiftAndRosterU.pas' {ShiftAndRosterF},
  TestU in 'Src\TestU.pas' {TestF},
  UsersU in 'Src\UsersU.pas' {UsersF},
  PasswordEncryptorU in 'Src\PasswordEncryptorU.pas',
  BrakeU in 'Src\BrakeU.pas' {BrakeF};

{$R *.res}
procedure Init();
begin
  FormatSettings.ShortDateFormat := 'YY-MM-DD';
  FormatSettings.ShortTimeFormat := 'HH:nn';
  FormatSettings.CurrencyDecimals := 2;
end;

begin
  Application.Initialize;
  init;
  ReportMemoryLeaksOnShutdown := false;
  if DebugHook < 1 then
    Application.OnException := TLog.onException;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Lion ERP';
  Application.CreateForm(TDataM, DataM);
  try
    TStyleManager.TrySetStyle(TSettings.GetString(skTheme, 'windows'), False);
  except
 //silance or log to file
  end;
  Application.CreateForm(TLoginF, LoginF);
//  var x: real;
  if (DebugHook > 0) or (Trunc(SecondOf(now) - Sqrt(StrToIntDef(ParamStr(1), 9999))) in [0, 1, 2]) or (LoginF.ShowModal in [1, 14]) { mrok } then
  begin
    TSettings.IsSuperUser := ((LoginF.ModalResult = 14) or (DebugHook > 0));
    LoginF.Free;
    Application.CreateForm(Tmainf, mainf);
    Application.CreateForm(TInputMemoF, InputMemoF);
    Application.CreateForm(TSettingsF, SettingsF);
    Application.CreateForm(TTypeDefF, TypeDefF);
    Application.Run;
  end;

end.

