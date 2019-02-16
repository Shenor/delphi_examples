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
{��������� ����������� ����. �-����� � ��� ����� ���������, �- ���� �����}
procedure PravkaDate(var x, y : string);
// ����������� ���� � ������� �������� �����
var
  origin, kopiya : Integer; // ����������
  DateOrigin: Integer; // ����� ��������
  begin
    try
      // ��������� ����
      origin:= FileOpen(x, fmOpenRead);
      kopiya:= FileOpen(x, fmOpenWrite);
      // �������� ����
      FileSetDate(kopiya, DateOrigin);
      finally
        FileClose(origin);
        FileClose(kopiya);
       end; // try
  end;  
procedure TfMain.myCopy();
var
  f1,f2 : file; //������ � ������ ����
  cop: array [1..2048] of Char; //����� �����������
  sizefile, sizeread: Int64; // ������ ����� � ������ ������������
  colRead, colWrite: Integer; // ���������� � ���������
  fotkuda, fkuda : string; // ������ � ���� ������

begin
 //  ���� ����������� ���������, ����� �� ���������� ������ �����-������
 {$I-}
 // ��������� ������� �� ����� ���� ��� �������
 if (otruda.Text='') or (kuda.Text='') then begin
   ShowMessage('������� ����� ���� ����������\����������, � ����');
   Exit;
 end; //if
 try
 //��������� �������� ����������
 AssignFile(f1, otruda.text);
 AssignFile(f2, kuda.Text);
 // ��������� ������ ���� ��� ������
 Reset(f1, 1);
 // ���������� ��� ������ � ����������
 sizefile := FileSize(f1);
 // ���������� ������ ����� � ����������
 lbl1.Caption := '������ �����: '+ IntToStr(Round(sizefile/1024))+ ' ��.';
 //������� � �������������� ������ ����
 Rewrite(f2, 1);
 // ������ ���� �� ��������� ����� ��������� �����
 colRead :=0;
 colWrite :=0;
 sizeread :=0;
 Screen.Cursor := crHourGlass; //�������� ����
 while colRead = colWrite do begin
   BlockRead(f1, cop, SizeOf(cop), colRead);
   if colRead = 0 then Break;
   // ������� ��������� �����������
   BlockWrite(f2, cop, colRead, colWrite);
   sizeread := sizeread + colRead;
   g1.Progress := Round(100*sizeread/sizefile);

 end; //while
 Screen.Cursor := crDefault; // ������� ��� �������
 finally
   CloseFile(f1);
   CloseFile(f2);
 end; // try
 // ���������� ����
 fotkuda := otruda.Text;
 fkuda := kuda.Text;
 PravkaDate(fotkuda, fkuda);

 if IOResult <> 0 then
 Application.MessageBox('������ ��� ����������� �����!', '��������!!!', MB_OK+MB_ICONERROR)
 else ShowMessage('����������� ����� ��������� �������!');
 //�������� ���������� ������������ ������
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
  lbl4.Caption:= IntToStr(f.Size) + '��';
  f.Free;
end;
end;

procedure TfMain.btn4Click(Sender: TObject);
begin
If dlgSave1.Execute then
kuda.Text := dlgSave1.FileName;
end;

end.
