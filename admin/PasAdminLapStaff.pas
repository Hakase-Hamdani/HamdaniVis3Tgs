unit PasAdminLapStaff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrAdminLapStaff = class(TForm)
    Label1: TLabel;
    btnLap: TButton;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLapClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAdminLapStaff: TfrAdminLapStaff;

implementation

uses
  modulDBPas;

{$R *.dfm}

procedure TfrAdminLapStaff.FormActivate(Sender: TObject);
var
  queryjoin: string;
begin
queryjoin := 'SELECT u.user_name, u.status AS user_status, u.level AS user_level, ' +
             'p.nama AS penerbit_nama, p.NIP AS penerbit_NIP, ' +
             'p.jabatan AS penerbit_jabatan, d.nama_divisi, d.kode_divisi ' +
             'FROM penerbit p JOIN divisi d ON p.id_divisi = d.id JOIN user u ON p.id_user = u.id';

modulDB.ZqAdmin.SQL.Clear;
modulDB.ZqAdmin.SQL.Add(queryjoin);
modulDB.ZqAdmin.Open;
end;

procedure TfrAdminLapStaff.FormCreate(Sender: TObject);
var
queryjoin: string;

begin
//queryjoin := 'SELECT u.user_name, u.status AS user_status, u.level AS user_level, ' +
//             'p.nama AS penerbit_nama, p.NIP AS penerbit_NIP, ' +
//             'p.jabatan AS penerbit_jabatan, d.nama_divisi, d.kode_divisi ' +
//             'FROM penerbit p JOIN divisi d ON p.id_divisi = d.id JOIN user u ON p.id_user = u.id';
queryjoin :=  'SELECT u.user_name, u.status AS user_status, u.level AS user_level, p.nama AS penerbit_nama, ' +
              'p.NIP AS penerbit_NIP, p.jabatan AS penerbit_jabatan, d.nama_divisi, d.kode_divisi FROM penerbit p ' +
              'JOIN divisi d ON p.id_divisi = d.id JOIN user u ON p.id_user = u.id';

modulDB.ZqAdmin.SQL.Clear;
modulDB.ZqAdmin.SQL.Add(queryjoin);
modulDB.ZqAdmin.Open;

//modulDB.DsAdmin.DataSet(modulDB.ZqRepUser);
end;

procedure TfrAdminLapStaff.btnLapClick(Sender: TObject);
begin
modulDB.FrxrepAdminUser.ShowReport();
end;

end.
