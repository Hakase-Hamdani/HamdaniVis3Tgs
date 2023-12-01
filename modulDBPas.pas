unit modulDBPas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TmodulDB = class(TForm)
    Zconnection: TZConnection;
    ZqTest: TZQuery;
    DsTest: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DsLogin: TDataSource;
    ZqLogin: TZQuery;
    GroupBox2: TGroupBox;
    ZqAdmin: TZQuery;
    DsAdmin: TDataSource;
    FrxdbAdmin: TfrxDBDataset;
    FrxrepAdminUser: TfrxReport;
    ZqLapStaff: TZQuery;
    DsLapStaff: TDataSource;
    GroupBox3: TGroupBox;
    ZqUserAdmin: TZQuery;
    DsUserAdmin: TDataSource;
    ZqUserAdminView: TZQuery;
    GroupBox4: TGroupBox;
    ZqStafAdmin: TZQuery;
    ZqStafAdminView: TZQuery;
    DsStafAdminView: TDataSource;
    ZqDivStaf: TZQuery;
    GroupBox5: TGroupBox;
    ZqDivAdmin: TZQuery;
    ZqDivAdminView: TZQuery;
    DsDivAdmin: TDataSource;
    GroupBox6: TGroupBox;
    ZqKlasAdmin: TZQuery;
    DsKlasAdmin: TDataSource;
    ZqKlasAdminView: TZQuery;
    GroupBox7: TGroupBox;
    ZqTujuanAdmin: TZQuery;
    DsTujuanAdmin: TDataSource;
    ZqTujuanAdminView: TZQuery;
    GroupBox9: TGroupBox;
    ZqSuratMain: TZQuery;
    DsSurat: TDataSource;
    ZqSuratView: TZQuery;
    GroupBox8: TGroupBox;
    ZqSuratList: TZQuery;
    DsSuratList: TDataSource;
    ZqUsr: TZQuery;
    FrxrepSurat: TfrxReport;
    FrxdbSurat: TfrxDBDataset;
    ZqSuratCetak: TZQuery;
    DsSuratCetak: TDataSource;
    FrxdbSuratList: TfrxDBDataset;
    FrxrepSuratList: TfrxReport;
    FrxdbStafView: TfrxDBDataset;
    FrxrepDsStafView: TfrxReport;
    ZqStaffNama: TZQuery;
    GroupBox10: TGroupBox;
    ZqIdUserPenerbit: TZQuery;
    GroupBox11: TGroupBox;
    ZqSignIn: TZQuery;
    ZqStafDivisiView: TZQuery;
    DsStafDivisi: TDataSource;
    FrxdbTujuanView: TfrxDBDataset;
    FrxrepTujuanView: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  modulDB: TmodulDB;

implementation

{$R *.dfm}

end.
