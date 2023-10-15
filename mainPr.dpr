program mainPr;

uses
  Forms,
  modulDBPas in 'modulDBPas.pas' {modulDB};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TmodulDB, modulDB);
  Application.Run;
end.
