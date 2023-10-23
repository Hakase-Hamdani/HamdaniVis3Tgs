program mainPr;

uses
  Forms,
  modulDBPas in 'modulDBPas.pas' {modulDB},
  PasLogin in 'login\PasLogin.pas' {frLogin},
  PasAdmin in 'admin\PasAdmin.pas' {frAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TmodulDB, modulDB);
  Application.CreateForm(TfrAdmin, frAdmin);
  Application.Run;
end.
