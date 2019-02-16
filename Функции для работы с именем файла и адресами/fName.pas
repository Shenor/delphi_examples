unit fName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfMain = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    dlgOpen1: TOpenDialog;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

procedure TfMain.btn1Click(Sender: TObject);
begin
if dlgOpen1.Execute then begin
  edt1.Text := dlgOpen1.FileName; // записываем адрем и имя открытого файла
  lbl1.Caption:= edt1.Text; // Копируем тоже самое в строку
end;
end;

procedure TfMain.btn2Click(Sender: TObject);
begin
lbl1.Caption := ExtractFileName(edt1.Text);//  извлекаем имя файла
end;

procedure TfMain.btn3Click(Sender: TObject);
begin
lbl1.Caption:= ExtractFilePath(edt1.Text);
end;

procedure TfMain.btn4Click(Sender: TObject);
begin
lbl1.Caption:= ExtractShortPathName(edt1.Text);
end;

procedure TfMain.btn5Click(Sender: TObject);
begin
lbl1.Caption:= ExtractFileDir(edt1.Text);
end;

procedure TfMain.btn6Click(Sender: TObject);
begin
lbl1.Caption:= ExtractFileDrive(edt1.Text);
end;

procedure TfMain.btn7Click(Sender: TObject);
begin
lbl1.Caption:= ExtractFileExt(edt1.Text);
end;

end.
