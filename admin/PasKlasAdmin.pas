unit PasKlasAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrKlasAdmin = class(TForm)
    btnSimpan: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNama: TEdit;
    edtNo: TEdit;
    cbxSts: TComboBox;
    btnUbah: TButton;
    DBGrid1: TDBGrid;
    edtId: TEdit;
    edtHapus: TButton;
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
    procedure edtHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frKlasAdmin: TfrKlasAdmin;

implementation

uses
  modulDBPas, DB;

{$R *.dfm}

procedure TfrKlasAdmin.btnSimpanClick(Sender: TObject);
begin
modulDB.ZqKlasAdmin.SQL.Clear;
modulDB.ZqKlasAdmin.SQL.Text := '';
modulDB.ZqKlasAdmin.SQL.Text := 'INSERT INTO klasifikasi (nama, nomor, status) VALUES (:nama, :nomor, :status)';

modulDB.ZqKlasAdmin.ParamByName('nama').Value := edtNama.Text;
modulDB.ZqKlasAdmin.ParamByName('nomor').Value := edtNo.Text;
modulDB.ZqKlasAdmin.ParamByName('status').Value := cbxSts.Text;

modulDB.ZqKlasAdmin.ExecSQL;
modulDB.DsKlasAdmin.DataSet.Refresh;
end;

procedure TfrKlasAdmin.DBGrid1CellClick(Column: TColumn);
begin
edtId.Text := modulDB.ZqKlasAdmin.Fields[0].AsString;
edtNama.Text := modulDB.ZqKlasAdmin.Fields[1].AsString;
edtNo.Text := modulDB.ZqKlasAdmin.Fields[2].AsString;
cbxSts.Text := modulDB.ZqKlasAdmin.Fields[3].AsString;
end;

procedure TfrKlasAdmin.btnUbahClick(Sender: TObject);
begin
modulDB.ZqKlasAdmin.SQL.Clear;
modulDB.ZqKlasAdmin.SQL.Text := '';
modulDB.ZqKlasAdmin.SQL.Text := 'UPDATE klasifikasi SET nama = :nama, nomor = :nomor, status = :status WHERE id = :id';

modulDB.ZqKlasAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqKlasAdmin.ParamByName('nama').Value := edtNama.Text;
modulDB.ZqKlasAdmin.ParamByName('nomor').Value := edtNo.Text;
modulDB.ZqKlasAdmin.ParamByName('status').Value := cbxSts.Text;

modulDB.ZqKlasAdmin.ExecSQL;
modulDB.DsKlasAdmin.DataSet.Refresh;
end;

procedure TfrKlasAdmin.edtHapusClick(Sender: TObject);
begin
modulDB.ZqKlasAdmin.SQL.Clear;
modulDB.ZqKlasAdmin.SQL.Text := '';
modulDB.ZqKlasAdmin.SQL.Text := 'DELETE FROM klasifikasi where id = :id';
modulDB.ZqKlasAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqKlasAdmin.ExecSQL;
modulDB.DsKlasAdmin.DataSet.Refresh;
end;

end.
