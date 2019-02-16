unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfxExample = class(TForm)
    pnl1: TPanel;
    bbClose: TBitBtn;
    bbRun: TBitBtn;
    edInput: TEdit;
    lbOutput: TLabel;
    mmOutput: TMemo;
    procedure bbRunClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fxExample: TfxExample;

implementation

{$R *.dfm}

procedure TfxExample.bbRunClick(Sender: TObject);
var
  k: Double;
begin
try
  k:= StrToFloat(edInput.Text);
except
end;
lbOutput.Caption := FormatDateTime('dd.mm.yyyy  hh:mm:ss', k);
edInput.SetFocus;
end;
end.
