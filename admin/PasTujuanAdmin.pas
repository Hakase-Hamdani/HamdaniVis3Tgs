unit PasTujuanAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrTujuanAdmin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtAlamat: TEdit;
    edtOrang: TEdit;
    edtJabatan: TEdit;
    edtInstitusi: TEdit;
    edtSts: TEdit;
    DBGrid1: TDBGrid;
    btsSimpan: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    edtId: TEdit;
    btnRepTujuan: TButton;
    procedure btsSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnRepTujuanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTujuanAdmin: TfrTujuanAdmin;

implementation

uses
  modulDBPas;

{$R *.dfm}

procedure TfrTujuanAdmin.btsSimpanClick(Sender: TObject);
begin
modulDB.ZqTujuanAdmin.SQL.Clear;
modulDB.ZqTujuanAdmin.SQL.Text := '';
modulDB.ZqTujuanAdmin.SQL.Text := 'INSERT INTO tujuan (alamat, orang, jabatan, institusi, status) VALUES (:alamat, :orang, :jabatan, :institusi, :status)';

modulDB.ZqTujuanAdmin.ParamByName('alamat').Value := edtAlamat.Text;
modulDB.ZqTujuanAdmin.ParamByName('orang').Value := edtOrang.Text;
modulDB.ZqTujuanAdmin.ParamByName('jabatan').Value := edtJabatan.Text;
modulDB.ZqTujuanAdmin.ParamByName('institusi').Value := edtInstitusi.Text;
modulDB.ZqTujuanAdmin.ParamByName('status').Value := edtSts.Text;

modulDB.ZqTujuanAdmin.ExecSQL;
modulDB.DsTujuanAdmin.DataSet.Refresh;
end;

procedure TfrTujuanAdmin.DBGrid1CellClick(Column: TColumn);
begin
edtId.Text := modulDB.ZqTujuanAdmin.Fields[0].AsString;
edtAlamat.Text := modulDB.ZqTujuanAdmin.Fields[1].AsString;
edtOrang.Text := modulDB.ZqTujuanAdmin.Fields[2].AsString;
edtJabatan.Text := modulDB.ZqTujuanAdmin.Fields[3].AsString;
edtInstitusi.Text := modulDB.ZqTujuanAdmin.Fields[4].AsString;
edtSts.Text := modulDB.ZqTujuanAdmin.Fields[5].AsString;
end;

procedure TfrTujuanAdmin.btnUbahClick(Sender: TObject);
begin
modulDB.ZqTujuanAdmin.SQL.Clear;
modulDB.ZqTujuanAdmin.SQL.Text := '';
modulDB.ZqTujuanAdmin.SQL.Text := 'UPDATE tujuan SET alamat = :tujuan, orang = :orang, jabatan = :jabatan, institusi = :institusi, status = :status WHERE id = :id';


modulDB.ZqTujuanAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqTujuanAdmin.ParamByName('alamat').Value := edtAlamat.Text;
modulDB.ZqTujuanAdmin.ParamByName('orang').Value := edtOrang.Text;
modulDB.ZqTujuanAdmin.ParamByName('jabatan').Value := edtJabatan.Text;
modulDB.ZqTujuanAdmin.ParamByName('institusi').Value := edtInstitusi.Text;
modulDB.ZqTujuanAdmin.ParamByName('status').Value := edtSts.Text;

modulDB.ZqTujuanAdmin.ExecSQL;
modulDB.DsTujuanAdmin.DataSet.Refresh;
end;

procedure TfrTujuanAdmin.btnHapusClick(Sender: TObject);
begin
modulDB.ZqTujuanAdmin.SQL.Clear;
modulDB.ZqTujuanAdmin.SQL.Text := '';
modulDB.ZqTujuanAdmin.SQL.Text := 'DELETE FROM tujuan where id = :id';
modulDB.ZqTujuanAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqTujuanAdmin.ExecSQL;
modulDB.DsTujuanAdmin.DataSet.Refresh;
end;

procedure TfrTujuanAdmin.btnRepTujuanClick(Sender: TObject);
begin
modulDB.FrxrepTujuanView.ShowReport();
end;

end.
