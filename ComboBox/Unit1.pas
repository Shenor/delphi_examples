unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    cbb1: TComboBox;
    edt1: TEdit;
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.cbb1Change(Sender: TObject);
begin
  edt1.Text := cbb1.Items.Strings[cbb1.ItemIndex];
end;

end.
