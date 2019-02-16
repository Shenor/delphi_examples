program Calc;

uses
  Forms,
  Unit2 in 'Unit2.pas' {fxExample};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfxExample, fxExample);
  Application.Run;
end.
