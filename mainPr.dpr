program mainPr;

uses
  Forms,
  modulDBPas in 'modulDBPas.pas' {modulDB},
  PasLogin in 'login\PasLogin.pas' {frLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TmodulDB, modulDB);
  Application.Run;
end.
