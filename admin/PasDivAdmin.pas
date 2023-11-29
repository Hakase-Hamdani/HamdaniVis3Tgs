unit PasDivAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrDIvisiAdmin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtNama: TEdit;
    edtKode: TEdit;
    btnSimpan: TButton;
    btnEdit: TButton;
    DBGrid1: TDBGrid;
    edtId: TEdit;
    edtHapus: TButton;
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure edtHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDIvisiAdmin: TfrDIvisiAdmin;

implementation

uses
  modulDBPas, DB;

{$R *.dfm}

procedure TfrDIvisiAdmin.btnSimpanClick(Sender: TObject);
begin
modulDB.ZqDivAdmin.SQL.Clear;
modulDB.ZqDivAdmin.SQL.Text := '';
modulDB.ZqDivAdmin.SQL.Text := 'INSERT INTO divisi (nama_divisi, kode_divisi) VALUES (:nama_divisi, :kode_divisi)';

modulDB.ZqDivAdmin.ParamByName('nama_divisi').Value := edtNama.Text;
modulDB.ZqDivAdmin.ParamByName('kode_divisi').Value := edtKode.Text;

modulDB.ZqDivAdminView.ExecSQL;
modulDB.DsDivAdmin.DataSet.Refresh;
end;

procedure TfrDIvisiAdmin.DBGrid1CellClick(Column: TColumn);
begin
edtId.Text := modulDB.ZqDivAdmin.Fields[0].AsString;
edtNama.Text := modulDB.ZqDivAdmin.Fields[1].AsString;
edtKode.Text := modulDB.ZqDivAdmin.Fields[2].AsString;
end;

procedure TfrDIvisiAdmin.btnEditClick(Sender: TObject);
begin
modulDB.ZqDivAdmin.SQL.Clear;
modulDB.ZqDivAdmin.SQL.Text := '';
modulDB.ZqDivAdmin.SQL.Text := 'UPDATE divisi SET nama_divisi = :nama_divisi, kode_divisi = :kode_divisi WHERE id = :id';

modulDB.ZqDivAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqDivAdmin.ParamByName('nama_divisi').Value := edtNama.Text;
modulDB.ZqDivAdmin.ParamByName('kode_divisi').Value := edtKode.Text;

modulDB.ZqDivAdminView.ExecSQL;
modulDB.DsDivAdmin.DataSet.Refresh;
end;

procedure TfrDIvisiAdmin.edtHapusClick(Sender: TObject);
begin
modulDB.ZqDivAdmin.SQL.Clear;
modulDB.ZqDivAdmin.SQL.Text := '';
modulDB.ZqDivAdmin.SQL.Text := 'DELETE FROM divisi where id = :id';
modulDB.ZqDivAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqDivAdmin.ExecSQL;
modulDB.DsDivAdmin.DataSet.Refresh;
end;

end.
