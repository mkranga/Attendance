{*******************************************************}
{                                                       }
{       CM                                              }
{                                                       }
{       Copyright (C) 2022 Lion TS                      }
{                                                       }
{*******************************************************}

//Class : d:\MyDoc\Projects\Github\CourseManagement\Src\InputMemoU
//Developer : Ranga
//Date : 30/09/2022 6:29:38 PM
//Note :
{
}
/// <summary>
///
/// </summary>
unit InputMemoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons;

type
  TInputMemoF = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
    procedure Setup(Title, Text, Val: string; r:array of Integer );
  public
    { Public declarations }
    class function ShowA(Title, Text, Val: string; x: Integer = 0; y: Integer = 0; w: Integer = 0; h: Integer = 0): string;
    class function ShowB(Title, Text: string;var Val: string; x: Integer = 0; y: Integer = 0; w: Integer = 0; h: Integer = 0): Boolean;
  end;

var
  InputMemoF: TInputMemoF;

implementation

{$R *.dfm}

{ TInputMemoF }

class function TInputMemoF.ShowA(Title, Text, Val: string; x: Integer = 0; y: Integer = 0; w: Integer = 0; h: Integer = 0): string;
begin
  Result := '';
  if InputMemoF = nil then
    InputMemoF := TInputMemoF.Create(Application);
    InputMemof.Setup(Title,Text,val,[x,y,w,h]);
  if InputMemoF.ShowModal = mrOk then
    Result := InputMemoF.Memo1.Text;
  Exit;
end;

procedure TInputMemoF.Setup(Title, Text, Val: string; r: array of Integer);
begin
  if Title = '' then
    Title := Application.Title;
  InputMemoF.Caption := Title;
  InputMemoF.Label1.Caption := Text;
  InputMemoF.Memo1.Text := Val;

  if (r[0] > 0) and (r[1] > 0) then
  begin
    InputMemoF.Position := poDesigned;
    InputMemoF.Left := r[0];
       InputMemoF.top := r[1];
  end
  else
    InputMemoF.Position := poScreenCenter;
  if (r[2] > 100) and (r[3] > 100) then
  begin
    InputMemoF.Width := r[2];
    InputMemoF.Height := r[3];
  end;
  Memo1.SelectAll;
end;

class function TInputMemoF.ShowB(Title, Text: string; var Val: string; x, y, w,  h: Integer): Boolean;
begin
  Result := false;
  if InputMemoF = nil then
    InputMemoF := TInputMemoF.Create(Application);
    InputMemof.Setup(Title,Text,val,[x,y,w,h]);
  if InputMemoF.ShowModal = mrOk then
  begin
    Val := InputMemoF.Memo1.Text;
    Result:=true;
  end;
end;

end.

