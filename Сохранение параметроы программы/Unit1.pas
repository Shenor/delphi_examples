unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormDestroy(Sender: TObject);
var ini: TIniFile;
begin
ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'my.ini');
// сохран€ем позицию окна
ini.WriteInteger('Position', 'L', form1.Left);
ini.WriteInteger('Position', 'T', form1.Top);
// сохраним размеры окна
ini.WriteInteger('Size', 'W', form1.Width);
ini.WriteInteger('Size', 'H', form1.Height);
// сохран€ем заголовок формы
ini.WriteString('Program', 'C', Form1.Caption);
end;

procedure TForm1.FormCreate(Sender: TObject);
var ini: TIniFile;
begin
ini:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'my.ini');
Form1.Left := ini.ReadInteger('Position', 'L', 329);
Form1.Top := ini.ReadInteger('Position', 't', 261);
// читаем размеры окна
Form1.Width := ini.ReadInteger('Size', 'W', 384);
Form1.Height := ini.ReadInteger('Size', 'H', 312);
//читаем заголовок формы
Form1.Caption:= ini.ReadString('Program', 'C', 'ѕрограмма');
// «акрываем фаил
ini.Free;
end;

procedure TForm1.edt1Change(Sender: TObject);
begin
Form1.Caption:= edt1.Text;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
