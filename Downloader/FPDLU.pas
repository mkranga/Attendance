unit FPDLU;

interface

uses
  System.Classes, System.SysUtils;
 type
 TProtocall =(ptFkAtt,pt);
type
  TFPDownloader = class(TThread)
  private
    fOnC: TProc;
    fOnlm: TProc<string>;
    fConStr: string;

    { Private declarations }
    constructor Create(ConStr: string; onComplete: tproc; onlm: tproc<string>); override;
    function connect(constr:string):string;
    function LoadLib():Integer
  protected
    procedure Execute; override;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TFPDownloader.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ TFPDownloader }

function TFPDownloader.connect(constr: string): string;
  var st:TStrings;
begin
st:=TStringList.Create;
try
 st.Values[Protocall];

finally
st.Free;
end;
end;

constructor TFPDownloader.Create(ConStr: string; onComplete: tproc; onlm: tproc<string>);
begin
  inherited Create(True);
  fConStr := ConStr;
  fOnC := onComplete;
  fOnlm := onlm;
  Resume;
end;

procedure TFPDownloader.Execute;
begin
  { Place thread code here }
  Synchronize(fOnC);
end;

end.

