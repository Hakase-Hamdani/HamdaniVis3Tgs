program mainPr;

uses
  Forms,
  modulDBPas in 'modulDBPas.pas' {modulDB},
  PasLogin in 'login\PasLogin.pas' {frLogin},
  PasAdmin in 'admin\PasAdmin.pas' {frAdmin},
  PasAdminLapStaff in 'admin\PasAdminLapStaff.pas' {frAdminLapStaff},
  PasUserAdmin in 'admin\PasUserAdmin.pas' {frUserAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TmodulDB, modulDB);
  Application.CreateForm(TfrAdmin, frAdmin);
  Application.CreateForm(TfrAdminLapStaff, frAdminLapStaff);
  Application.CreateForm(TfrUserAdmin, frUserAdmin);
  Application.Run;
end.
