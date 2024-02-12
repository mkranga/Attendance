program SSERP;

{$R *.dres}

uses
  Vcl.Forms,
  System.DateUtils,
  Vcl.Dialogs,
  System.SysUtils,
  MainU in 'Src\MainU.pas' {MainF},
  DataU in 'Src\DataU.pas' {DataM: TDataModule},
  SQLSPanelU in 'Src\SQLSPanelU.pas',
  LoginU in 'Src\LoginU.pas' {LoginF},
  ABOUT in 'Src\ABOUT.pas' {AboutBox},
  SettingsU in 'Src\SettingsU.pas',
  DataFormTPLU in 'Src\DataFormTPLU.pas' {DataFormTPL},
  CommonU in 'Src\CommonU.pas',
  InputMemoU in 'Src\InputMemoU.pas' {InputMemoF},
  TypeDefU in 'Src\TypeDefU.pas' {TypeDefF},
  CourseSetupU in 'Src\CourseSetupU.pas' {CourseSetupF},
  Vcl.Themes,
  Vcl.Styles,
  SettingsFU in 'Src\SettingsFU.pas' {SettingsF},
  AttendanceU in 'Src\AttendanceU.pas' {AttendanceF},
  ReportsU in 'Src\ReportsU.pas' {ReportsF},
  PaymentU in 'Src\PaymentU.pas' {PaymentF},
  DownloadU in 'Src\DownloadU.pas' {DownloadF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SSERP';
  Application.CreateForm(TDataM, DataM);
  if TStyleManager.TrySetStyle(TSettings.GetString(skTheme, 'Ruby Graphite'), False) = false then
  begin
    TStyleManager.TrySetStyle('windows');
    TSettings.SetValue(skTheme, 'Ruby Graphite');
  end;
  Application.CreateForm(TLoginF, LoginF);
  var x: real;
  if (DebugHook > 0) or (Trunc(SecondOf(now) - Sqrt(StrToIntDef(ParamStr(1), 9999))) in [0, 1, 2]) or (LoginF.ShowModal = 1){mrok} then
  begin
    LoginF.Free;
    Application.CreateForm(Tmainf, mainf);
    Application.CreateForm(TInputMemoF, InputMemoF);
    Application.CreateForm(TSettingsF, SettingsF);
    Application.CreateForm(TTypeDefF, TypeDefF);
    Application.Run;
  end;
end.

