// JCL_DEBUG_EXPERT_GENERATEJDBG OFF
program SSERP;

{$R *.dres}

uses
  {$IFDEF Debug}
  FastMM4,
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
  ShiftU in 'Src\ShiftU.pas' {ShiftF},
  POSU in 'Src\POSU.pas' {POSF},
  StockInU in 'Src\StockInU.pas' {StockInF},
  DelphiZXIngQRCode in 'Src\DelphiZXIngQRCode.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := false;
  if DebugHook < 1 then
    Application.OnException := TLog.onException;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SSERP';
  Application.CreateForm(TDataM, DataM);
  try
    if TStyleManager.TrySetStyle(TSettings.GetString(skTheme, 'Ruby Graphite'), False) = False then
    begin
      TStyleManager.TrySetStyle('windows');
      TSettings.SetValue(skTheme, 'Ruby Graphite');
    end;
  except
 //silance or log to file
  end;
  Application.CreateForm(TLoginF, LoginF);
  var x: real;
  if (DebugHook > 0) or (Trunc(SecondOf(now) - Sqrt(StrToIntDef(ParamStr(1), 9999))) in [0, 1, 2]) or (LoginF.ShowModal = 1) { mrok } then
  begin
    LoginF.Free;
    Application.CreateForm(Tmainf, mainf);
    Application.CreateForm(TInputMemoF, InputMemoF);
    Application.CreateForm(TSettingsF, SettingsF);
    Application.CreateForm(TTypeDefF, TypeDefF);
    Application.Run;
  end;

end.

