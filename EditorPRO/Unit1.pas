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
{��������� �������� �����}
procedure Otkrivaem;
begin
  with fMain do begin  // ������ ������ � ������
  if dlgOpen1.Execute then begin // ���� ������ ��������
  myfile := dlgOpen1.FileName;

  //������ ���� ���� � ����
  mmo1.Lines.LoadFromFile(myfile);
  izmen:= False; // ���� ������ ������ ��������� ���
  end;// if
  end;// with

end;

{����������}
procedure sohranyaem;
begin
  with fMain do begin
    //���� ��������� �� ���� ������ ������ �� �����
    if not izmen then Exit;
  //���� ���� ��� ���������  � � ���������� myfile ��������������
  if myfile <> '' then begin
    mmo1.Lines.SaveToFile(myfile);
    izmen:=False;
    Exit; // ������� ����� ����������
end;// ig
        {���� �����, ��������� myfile ��� �����. ������ ���� ��� �������� ������������ ������� ��� ������ � �������}
        // ���� �������
        if dlgSave1.Execute then begin
          // ����������� ����� � ��� � ����������
          myfile:= dlgSave1.FileName;
          // ���� ��� ���������� .txt �� ���������� ���
          if Copy(myfile, Length(myfile)-3, 4) <> '.txt' then
          myfile := myfile + '.txt';
          // ��������� � ��������� ���� memo
          mmo1.Lines.SaveToFile(myfile);
          // ���� ��� ��� ���
          izmen:= False;
        end// if
        else ShowMessage('�� �� ������� ��� �����, ���� �� ��������!');
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
{���� ���� �� �������� �� ������������� � ���� ������ ��������� �� �������� ��������� ����������}
if izmen then
if Application.MessageBox('���� �������.���������?', '��������!', MB_YESNO+MB_ICONQUESTION) = IDYES then sohranyaem;

// ������ ��������� ������� ����
  mmo1.Clear;
  myfile := '';
  izmen:= False;
end;

procedure TfMain.N14Click(Sender: TObject);
begin
{���� ���� �� �������� �� ������������� � ���� ������ ��������� �� �������� ��������� ����������}
if izmen then
if Application.MessageBox('���� �������.���������?', '��������!', MB_YESNO+MB_ICONQUESTION) = IDYES then sohranyaem;

// ������ ��������� ������� ����
  mmo1.Clear;
  myfile := '';
  izmen:= False;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{���� ���� �� �������� �� ������������� � ���� ������ ��������� �� �������� ��������� ����������}
if izmen then
if Application.MessageBox('���� �������.���������?', '��������!', MB_YESNO+MB_ICONQUESTION) = IDYES then sohranyaem;

// ������ ��������� ������� ����
  mmo1.Clear;
  myfile := '';
  izmen:= False;
end;

end.





















