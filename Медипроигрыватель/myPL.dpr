program myPL;

uses
  Forms,
  myPlayer in 'myPlayer.pas' {fMain},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
