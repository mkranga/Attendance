unit TestU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  JvExControls, JvChart;

type
  TTestF = class(TDataFormTPL)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    chrt1: TJvChart;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure ImportTabDelimitedToDBGrid(const TabDelimitedString: string; DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  TestF: TTestF;

implementation

uses
  DataU;
{$R *.dfm}

procedure TTestF.ImportTabDelimitedToDBGrid(const TabDelimitedString: string; DataSet: TDataSet);
var
  Lines, Fields: TStringList;
  I, J: Integer;
begin
  Lines := TStringList.Create;
  Fields := TStringList.Create;
  try
    Lines.Text := StringReplace(TabDelimitedString, #13#10, #13, [rfReplaceAll]); // Normalize line endings
    DataSet.DisableControls;
    DataSet.Close;
    DataSet.Open;

    for I := 1 to Lines.Count - 1 do
    begin
      Fields.Clear;
      Fields.Delimiter := #9; // Tab character
      Fields.DelimitedText := Lines[I];
      DataSet.Append;
      for J := 0 to Fields.Count - 1 do
      begin
//        if dataset.Locate('ID') then
        begin
          if J < DataSet.FieldCount then
            DataSet.Fields[J].AsString := Fields[J];
        end;
      end;
      DataSet.Post;
    end;

  finally
    Lines.Free;
    Fields.Free;
    DataSet.EnableControls;
  end;
end;

procedure TTestF.Button1Click(Sender: TObject);
begin
  inherited;
  qrmain.ApplyUpdates();
end;

procedure TTestF.Button2Click(Sender: TObject);
begin
  inherited;
  qrmain.open;
end;

procedure TTestF.Button3Click(Sender: TObject);
begin
  inherited;
  qrmain.Close;
end;

procedure TTestF.Button4Click(Sender: TObject);
begin
  inherited;
  chrt1.Data.ValueCount := qrMain.RecordCount;
  chrt1.Options.XLegends.Clear;

  while qrMain.Eof = false do
  begin
    chrt1.Options.XLegends.Add(qrMain.Fields[0].AsString);
    chrt1.Data.Value[0, qrMain.RecNo - 1] := qrMain.Fields[1].AsInteger;
    qrMain.Next;
  end;
  chrt1.PlotGraph;
end;

end.

