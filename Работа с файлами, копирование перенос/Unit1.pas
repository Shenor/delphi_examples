unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Gauges, StdCtrls;

type
  TfMain = class(TForm)
    lbl1: TLabel;
    otruda: TEdit;
    lbl2: TLabel;
    kuda: TEdit;
    lbl3: TLabel;
    btn1: TButton;
    btn2: TButton;
    g1: TGauge;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    btn3: TBitBtn;
    btn4: TBitBtn;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure myCopy;
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}
{процедура исправления даты. х-адрес и имя файла оригинала, у- файл копии}
procedure PravkaDate(var x, y : string);
// исправление даты и времени создания файла
var
  origin, kopiya : Integer; // дескриптор
  DateOrigin: Integer; // Время создания
  begin
    try
      // открываем фаил
      origin:= FileOpen(x, fmOpenRead);
      kopiya:= FileOpen(x, fmOpenWrite);
      // получаем дату
      FileSetDate(kopiya, DateOrigin);
      finally
        FileClose(origin);
        FileClose(kopiya);
       end; // try
  end;  
procedure TfMain.myCopy();
var
  f1,f2 : file; //первый и второй фаил
  cop: array [1..2048] of Char; //буфер копирования
  sizefile, sizeread: Int64; // размер файла и размер прочитанного
  colRead, colWrite: Integer; // прочитанно и записанно
  fotkuda, fkuda : string; // адреса и мена файлов

begin
 //  даем компирятору директиву, чтобы не отслеживал ошибки ввода-вывода
 {$I-}
 // проверяем указаны ли файлы если нет выходим
 if (otruda.Text='') or (kuda.Text='') then begin
   ShowMessage('Укажите какой файл копировать\переносить, и куда');
   Exit;
 end; //if
 try
 //связываем файловык переменные
 AssignFile(f1, otruda.text);
 AssignFile(f2, kuda.Text);
 // открываем первый фаил для чтения
 Reset(f1, 1);
 // определяем его размер в переменную
 sizefile := FileSize(f1);
 // отображаем размер файла в килобайтах
 lbl1.Caption := 'Размер файла: '+ IntToStr(Round(sizefile/1024))+ ' Кб.';
 //создаем и перезаписываем второй файл
 Rewrite(f2, 1);
 // делаем пока не достигнут конец исходного файла
 colRead :=0;
 colWrite :=0;
 sizeread :=0;
 Screen.Cursor := crHourGlass; //песочные часы
 while colRead = colWrite do begin
   BlockRead(f1, cop, SizeOf(cop), colRead);
   if colRead = 0 then Break;
   // двигаем индикатор копирования
   BlockWrite(f2, cop, colRead, colWrite);
   sizeread := sizeread + colRead;
   g1.Progress := Round(100*sizeread/sizefile);

 end; //while
 Screen.Cursor := crDefault; // обычный вид курсора
 finally
   CloseFile(f1);
   CloseFile(f2);
 end; // try
 // исправляем дату
 fotkuda := otruda.Text;
 fkuda := kuda.Text;
 PravkaDate(fotkuda, fkuda);

 if IOResult <> 0 then
 Application.MessageBox('Ошибка при копировании файла!', 'Внимание!!!', MB_OK+MB_ICONERROR)
 else ShowMessage('Копирование файла завершено успешно!');
 //включаем обработчик компилятором ошибок
 {$I+}
end;

procedure TfMain.btn1Click(Sender: TObject);
begin
myCopy;
g1.Progress := 0;
end;

procedure TfMain.btn2Click(Sender: TObject);
begin
myCopy;
g1.Progress:= 0;
if (otruda.Text='') or (kuda.Text='') then Exit;
DeleteFile(otruda.Text);
end;
procedure TfMain.btn3Click(Sender: TObject);
var f: TFileStream;
begin
with dlgOpen1 do
if Execute then
begin
  otruda.Text := dlgOpen1.FileName;
  f:= TFileStream.Create(FileName, fmOpenRead);
  lbl4.Caption:= IntToStr(f.Size) + 'Кб';
  f.Free;
end;
end;

procedure TfMain.btn4Click(Sender: TObject);
begin
If dlgSave1.Execute then
kuda.Text := dlgSave1.FileName;
end;

end.
