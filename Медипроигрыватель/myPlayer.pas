unit myPlayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, MPlayer, StdCtrls, ExtCtrls;

type
  TfMain = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    edt1: TEdit;
    MP: TMediaPlayer;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dlgOpen1: TOpenDialog;
    procedure N4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TfMain.N4Click(Sender: TObject);
begin
Close;
end;

procedure TfMain.FormDestroy(Sender: TObject);
begin
Close;
end;

procedure TfMain.N2Click(Sender: TObject);
begin
  if not dlgOpen1.Execute then exit;
  try
    edt1.Text := ExtractFileName(dlgOpen1.FileName);
    MP.FileName := dlgOpen1.FileName;
    MP.Open;
    MP.DisplayRect := Rect(0,0,pnl2.Width, pnl2.Height);
  except
    ShowMessage('Ошибка открытия');
    Exit;
    end;
end;

procedure TfMain.FormResize(Sender: TObject);
begin
 MP.DisplayRect := Rect(0,0,pnl2.Width, pnl2.Height);
end;

procedure TfMain.N6Click(Sender: TObject);
begin
Form1.ShowModal;
end;

end.
