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
    TelNum: string[15]; // ����� ��������
    Mobil: Boolean; // ��������� ��? ���?
    Imya: string[20];// ���
    familiy: string[20];// �������
    otchestvo: string[20];//��������
    adress: string[50];// �����
    end;    // record

var
  fMain: TfMain;
  sprav: array of myTFSprav;// ��������� ������������ ������ ����� ������


implementation

{$R *.dfm}
procedure ChangeCombo;
var i:integer;
begin
  // ���� ������ ������ �� �������
  if Length(sprav)=0 then Exit;
  // ���� ��� �� ���� �� ������� ������� ����
  fMain.cbb1.Items.Clear;
  // ����� ������� � ���� ������ ����� �������� �� �������
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
 {��������� ������������ ���������}
 //���� ������ �������� ���
if medt1.text = '8(   )-   -  -  ' then begin
  ShowMessage('������� ����� ��������');
  medt1.setfocus;
  Exit;
end; // if

//���� ����� ��� �������
if Edt1.Text = '' then begin
  ShowMessage('������� ����� ��������');
  Edt1.SetFocus;
  Exit;
end; //if

 //������������� �� ������������ ����� ��������� �������
 if Application.MessageBox('�� �������, ��� ������ ��������� ���� �������?',
 '��������!', MB_YESNOCANCEL+MB_ICONQUESTION)<>IDYES then Exit;

 {����������� ������ ����� �������� � ���, � ������ ��������� �������
   � ������}
   //��������� ����� �������� �� ���������� � ���������� ��������, 
  //���� ��� ���� ������. ��� �������� ���������� ����, ������� ������ ������.
  //���� ����� ������ ��� ����, �������� �� ���� � ������� �� ���������:
    if Length(sprav) > 0 then
    for i := Low(sprav) to High(sprav) do
    if sprav[i].TelNum = medt1.text then begin
      ShowMessage (' ����� ����� ��� ����!');
      Exit;
    end;  //if

    // ��������� ����� ������� � �������
    SetLength(sprav, Length(sprav)+1);
    // ���������� ����� ������� � ������
    sprav[High(sprav)].TelNum:=Medt1.Text;
    if   cbb2.ItemIndex = 0 then
     sprav[High(sprav)].Mobil := True
    else
     sprav[High(sprav)].Mobil := False;
      sprav[High(sprav)].TelNum:= medt1.Text;
      sprav[High(sprav)].familiy:=edt2.text;
      sprav[High(sprav)].Otchestvo:=edt3.text;
      sprav[High(sprav)].Adress:=edt4.text;
      // ������� ���� �����
      medt1.Text:= '8(   )-   -  -  ';
      cbb2.ItemIndex :=0;
      edt1.Text := '';
      edt2.Text := '';
      edt3.Text := '';
      edt4.Text := '';
    ShowMessage('������� '+sprav[High(sprav)].TelNum + '��������!');
    ChangeCombo;
  end;
end.





