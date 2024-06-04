program FPDataDownloader;

uses
  Vcl.Forms,
  DownloadU in 'DownloadU.pas' {DownloadF},
  FKAttendLib_TLB in 'FKAttendLib_TLB.pas',
  CM_INTERFACELib_TLB in 'CM_INTERFACELib_TLB.pas',
  SB100PCXLib_TLB in 'SB100PCXLib_TLB.pas',
  FPDLTU in 'FPDLTU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDownloadF, DownloadF);
  Application.Run;
end.
