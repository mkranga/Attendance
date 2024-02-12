unit CommonU;

interface

uses
  SysUtils, Classes, Winapi.Messages, Winapi.Windows, Vcl.Controls;

var
  loglist: TStrings;
  APPPath: string;
  LogLvl: Byte;

procedure LM(s: string; lvl: Byte = 0);

procedure SlideMe(ctrl: TWinControl; dir: Integer = 0; hide_: Boolean = false);

function GetToken(s: string; st: string = '{'; ed: string = '}'): string;

implementation

procedure LM(s: string; lvl: Byte);
begin
end;

function OpenFileEx(path: TFileName): TFileStream;
begin
  // Result := nil;
  try
    ForceDirectories(ExtractFilePath(path));
    result := TFileStream.Create(path, fmOpenReadWrite + fmCreate);
  except
    // if GetLastError = ERROR_PATH_NOT_FOUND then
    begin

      ForceDirectories(ExtractFilePath(path));
      result := TFileStream.Create(path, fmOpenReadWrite or fmCreate);
    end;
  end;
end;

function fileSize(const aFilename: string): Int64;
var
  info: TWin32FileAttributeData;
begin
  result := -1;
  if not GetFileAttributesEx(PWideChar(aFilename), GetFileExInfoStandard, @info) then
    exit;
  result := Int64(info.nFileSizeLow) or Int64(info.nFileSizeHigh shl 32);
end;

procedure SlideMe(ctrl: TWinControl; dir: Integer = 0; hide_: Boolean = false);
var
  d: Cardinal;
begin
  case dir of
    0:
      d := AW_HOR_POSITIVE;
    1:
      d := AW_VER_POSITIVE;
    2:
      d := AW_HOR_NEGATIVE;
    3:
      d := AW_VER_NEGATIVE;
  end;
  if hide_ then
    d := d or AW_HIDE;
  AnimateWindow(ctrl.Handle, 300, d or AW_SLIDE);
  ctrl.Visible := not (hide_);
end;

function GetToken(s: string; st: string = '{'; ed: string = '}'): string;
var
  ist, ied: Integer;
begin
  Result := '';
  ist := Pos(st, s, 1);
  if ist < 1 then
    Exit;
  ied := Pos(ed, s, ist + 1);
  Result := Copy(s, ist, ied - ist + 1);
end;

end.

