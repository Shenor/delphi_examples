unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
ShowMessage('Enter нажимать нечестно!!!');
end;

procedure TForm1.btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var index:Integer;
begin
index:= Random(4);
case index of
0: btn1.Left:= btn1.Left+btn1.Width; // двигаем кнопку вправо на значение ширины
1: btn1.Left:= btn1.Left-btn1.Width;  // двигаем влево на значение ширины
2: btn1.Top:= btn1.Top+btn1.Height; // Вниз
3: btn1.Top:= btn1.Top+btn1.Height;   // up          ы
end;
if btn1.Left<0 then btn1.Left:=0;
if btn1.Top<0 then btn1.Top:= 0;
if  btn1.Left+btn1.Width > Form1.Width then
btn1.Left:=  Form1.Width - btn1.Width;
if  btn1.Top+btn1.Height > Form1.Height then
btn1.Top:=  Form1.Height - btn1.Height;
end;


end.
