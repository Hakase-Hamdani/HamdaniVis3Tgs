program mainPr;

uses
  Forms,
  modulDBPas in 'modulDBPas.pas' {modulDB},
  PasLogin in 'login\PasLogin.pas' {frLogin},
  PasAdmin in 'admin\PasAdmin.pas' {frAdmin},
  PasAdminLapStaff in 'admin\PasAdminLapStaff.pas' {frAdminLapStaff},
  PasUserAdmin in 'admin\PasUserAdmin.pas' {frUserAdmin},
  PasStafAdmin in 'admin\PasStafAdmin.pas' {frStaffAdmin},
  PasDivAdmin in 'admin\PasDivAdmin.pas' {frDIvisiAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TmodulDB, modulDB);
  Application.CreateForm(TfrAdmin, frAdmin);
  Application.CreateForm(TfrAdminLapStaff, frAdminLapStaff);
  Application.CreateForm(TfrUserAdmin, frUserAdmin);
  Application.CreateForm(TfrStaffAdmin, frStaffAdmin);
  Application.CreateForm(TfrDIvisiAdmin, frDIvisiAdmin);
  Application.Run;
end.
