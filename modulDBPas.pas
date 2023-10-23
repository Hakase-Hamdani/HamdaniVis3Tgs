unit modulDBPas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

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
