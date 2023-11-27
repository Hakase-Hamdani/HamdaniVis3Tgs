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
