unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lst1: TListBox;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure lst1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.lst1Click(Sender: TObject);
begin
 edt1.Text:= lst1.Items.Strings[lst1.ItemIndex];
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
lst1.Items.Add(edt1.Text);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
lst1.Items.Delete(lst1.ItemIndex);
end;

end.
