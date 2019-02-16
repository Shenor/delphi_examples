unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    btn1: TButton;
    dlgOpenPic1: TOpenPictureDialog;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
if dlgOpenPic1.Execute then
img1.Picture.LoadFromFile(dlgOpenPic1.FileName);
end;

end.
