unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfMain = class(TForm)
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    medt1: TMaskEdit;
    lbl3: TLabel;
    cbb2: TComboBox;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
    myTFSprav = record
    TelNum: string[15]; // номер телефона
    Mobil: Boolean; // мобильник да? нет?
    Imya: string[20];// имя
    familiy: string[20];// фамилия
    otchestvo: string[20];//отчестов
    adress: string[50];// адрес
    end;    // record

var
  fMain: TfMain;
  sprav: array of myTFSprav;// объявляем динамический массив нашей записи


implementation

{$R *.dfm}
procedure ChangeCombo;
var i:integer;
begin
  // если массив пустой то выходим
  if Length(sprav)=0 then Exit;
  // если что то есть то сначала очистим бокс
  fMain.cbb1.Items.Clear;
  // затем добавим в него нужный номер телефона из массива
  for i := 0 to High(sprav) do
  fMain.cbb1.Items.Add(sprav[i].TelNum);
end;

procedure TfMain.btn2Click(Sender: TObject);
begin
close;
end;

procedure TfMain.btn1Click(Sender: TObject);
var i:Integer;
begin
 {проверяем обязательные параметры}
 //если номерв телефона нет
if medt1.text = '8(   )-   -  -  ' then begin
  ShowMessage('Впишите номер телефона');
  medt1.setfocus;
  Exit;
end; // if

//если имени нет выходим
if Edt1.Text = '' then begin
  ShowMessage('Впишите номер телефона');
  Edt1.SetFocus;
  Exit;
end; //if

 //действительно ли пользователь хочет сохранить телефон
 if Application.MessageBox('Вы уверены, что хотите сохранить этот телефон?',
 'Внимание!', MB_YESNOCANCEL+MB_ICONQUESTION)<>IDYES then Exit;

 {Ползователь указал номер телефона и имя, и желает сохранить телефон
   в список}
   //проверяем номер телефона на совпадение с имеющимися номерами, 
  //если там есть записи. Для проверки используем цикл, сверяем каждую запись.
  //Если такая запись уже есть, сообщаем об этом и выходим из процедуры:
    if Length(sprav) > 0 then
    for i := Low(sprav) to High(sprav) do
    if sprav[i].TelNum = medt1.text then begin
      ShowMessage (' Такой номер уже есть!');
      Exit;
    end;  //if

    // добавляем новый элемент к массиву
    SetLength(sprav, Length(sprav)+1);
    // записываем новый телефон в список
    sprav[High(sprav)].TelNum:=Medt1.Text;
    if   cbb2.ItemIndex = 0 then
     sprav[High(sprav)].Mobil := True
    else
     sprav[High(sprav)].Mobil := False;
      sprav[High(sprav)].TelNum:= medt1.Text;
      sprav[High(sprav)].familiy:=edt2.text;
      sprav[High(sprav)].Otchestvo:=edt3.text;
      sprav[High(sprav)].Adress:=edt4.text;
      // очищаем поля ввода
      medt1.Text:= '8(   )-   -  -  ';
      cbb2.ItemIndex :=0;
      edt1.Text := '';
      edt2.Text := '';
      edt3.Text := '';
      edt4.Text := '';
    ShowMessage('Телефон '+sprav[High(sprav)].TelNum + 'добавлен!');
    ChangeCombo;
  end;
end.





