unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TForm1 = class(TForm)
    strngrd1: TStringGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
// ��������� ���������� ������ ������
strngrd1.Cells[0,1]:= '������';
strngrd1.Cells[0,2]:= '������';
strngrd1.Cells[0,3]:= '��������';
strngrd1.Cells[0,4]:= '����';

//��������� ���������� ������ �������
strngrd1.Cells[1,0]:= '��� ����.';
strngrd1.Cells[2,0]:= '����� ����.';
strngrd1.Cells[3,0]:= '��������';
strngrd1.Cells[4,0]:= '�������� ���������';

//������ ������ �������
strngrd1.ColWidths[4]:=120;
strngrd1.ColWidths[3]:=90;
strngrd1.ColWidths[2]:=90;
end;

end.
