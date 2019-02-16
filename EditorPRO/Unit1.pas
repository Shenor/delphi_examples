unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TfMain = class(TForm)
    mmo1: TMemo;
    mm1: TMainMenu;
    pm1: TPopupMenu;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    dlgFont1: TFontDialog;
    dlgColor1: TColorDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure mmo1Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    izmen: Boolean;
    myfile: string;
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}
{Процедура открытия файла}
procedure Otkrivaem;
begin
  with fMain do begin  // делать вместе с формой
  if dlgOpen1.Execute then begin // если диалог выполнен
  myfile := dlgOpen1.FileName;

  //Читаем этот фаил в меню
  mmo1.Lines.LoadFromFile(myfile);
  izmen:= False; // фаил только открыт изменения нет
  end;// if
  end;// with

end;

{Сохранение}
procedure sohranyaem;
begin
  with fMain do begin
    //Если изменений не было выходи ничего не делая
    if not izmen then Exit;
  //Если фаил уже открывлся  и в переменную myfile перезаписываем
  if myfile <> '' then begin
    mmo1.Lines.SaveToFile(myfile);
    izmen:=False;
    Exit; // выходим после сохранения
end;// ig
        {Фаил новый, переменну myfile еще пуста. Дальше есть два варианта пользователь выборет или укажет в диалоге}
        // если выберет
        if dlgSave1.Execute then begin
          // прописываем адрес и имя в переменную
          myfile:= dlgSave1.FileName;
          // если нет расширения .txt то добаволяем его
          if Copy(myfile, Length(myfile)-3, 4) <> '.txt' then
          myfile := myfile + '.txt';
          // Сохраняем в указанный фаил memo
          mmo1.Lines.SaveToFile(myfile);
          // фаил сох изм нет
          izmen:= False;
        end// if
        else ShowMessage('Вы не указали имя файла, фаил не сохранен!');
        end; // with
end;

procedure TfMain.mmo1Change(Sender: TObject);
begin
izmen:= True;
end;

procedure TfMain.N2Click(Sender: TObject);
begin
Otkrivaem;
end;

procedure TfMain.N12Click(Sender: TObject);
begin
Otkrivaem;
end;

procedure TfMain.N13Click(Sender: TObject);
begin
sohranyaem;
end;

procedure TfMain.N6Click(Sender: TObject);
begin
Close;
end;

procedure TfMain.N16Click(Sender: TObject);
begin
Close;
end;

procedure TfMain.N3Click(Sender: TObject);
begin
sohranyaem;
end;

procedure TfMain.N8Click(Sender: TObject);
begin
if dlgFont1.Execute then
mmo1.Font := dlgFont1.Font;
end;

procedure TfMain.N9Click(Sender: TObject);
begin
if dlgColor1.Execute then
mmo1.Color := dlgColor1.Color;
end;

procedure TfMain.N4Click(Sender: TObject);
begin
{если фаил не сохранен то предупреждаем и если желает сохранить то вызываем процедуру сохранения}
if izmen then
if Application.MessageBox('Фаил изменен.Сохранить?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) = IDYES then sohranyaem;

// теперь закрываем текущий фаил
  mmo1.Clear;
  myfile := '';
  izmen:= False;
end;

procedure TfMain.N14Click(Sender: TObject);
begin
{если фаил не сохранен то предупреждаем и если желает сохранить то вызываем процедуру сохранения}
if izmen then
if Application.MessageBox('Фаил изменен.Сохранить?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) = IDYES then sohranyaem;

// теперь закрываем текущий фаил
  mmo1.Clear;
  myfile := '';
  izmen:= False;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{если фаил не сохранен то предупреждаем и если желает сохранить то вызываем процедуру сохранения}
if izmen then
if Application.MessageBox('Фаил изменен.Сохранить?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) = IDYES then sohranyaem;

// теперь закрываем текущий фаил
  mmo1.Clear;
  myfile := '';
  izmen:= False;
end;

end.





















