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
if (edtNama.Text = '') or (edtKode.Text = '') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
else
  begin
    if MessageDlg('Apa Anda yakin ingin mengubah data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      modulDB.ZqDivAdmin.SQL.Clear;
      modulDB.ZqDivAdmin.SQL.Text := '';
      modulDB.ZqDivAdmin.SQL.Text := 'INSERT INTO divisi (nama_divisi, kode_divisi) VALUES (:nama_divisi, :kode_divisi)';

      modulDB.ZqDivAdmin.ParamByName('nama_divisi').Value := edtNama.Text;
      modulDB.ZqDivAdmin.ParamByName('kode_divisi').Value := edtKode.Text;

      modulDB.ZqDivAdmin.ExecSQL;
      modulDB.DsDivAdmin.DataSet.Refresh;
      ShowMessage('Data Sudah Disimpan.');
    end
    else
    begin
      ShowMessage('Data Tidak Jadi Di Simpan.');
    end;
  end;
end;

procedure TfrDIvisiAdmin.DBGrid1CellClick(Column: TColumn);
begin
  edtId.Text := modulDB.ZqDivAdminView.Fields[0].AsString;
  edtNama.Text := modulDB.ZqDivAdminView.Fields[1].AsString;
  edtKode.Text := modulDB.ZqDivAdminView.Fields[2].AsString;
end;

procedure TfrDIvisiAdmin.btnEditClick(Sender: TObject);
begin
if (edtNama.Text = '') or (edtKode.Text = '') then
  begin
     ShowMessage('Ada Data Yang Kosong!');
  end
else
  begin
    if MessageDlg('Apa Anda yakin ingin mengubah data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqDivAdmin.SQL.Clear;
        modulDB.ZqDivAdmin.SQL.Text := '';
        modulDB.ZqDivAdmin.SQL.Text := 'UPDATE divisi SET nama_divisi = :nama_divisi, kode_divisi = :kode_divisi WHERE id = :id';

        modulDB.ZqDivAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqDivAdmin.ParamByName('nama_divisi').Value := edtNama.Text;
        modulDB.ZqDivAdmin.ParamByName('kode_divisi').Value := edtKode.Text;

        modulDB.ZqDivAdmin.ExecSQL;
        modulDB.DsDivAdmin.DataSet.Refresh;
        ShowMessage('Data Sudah Di Ubah.');
      end
      else
      begin
        ShowMessage('Operasi Di Batalkan.');
      end;
  end;

end;

procedure TfrDIvisiAdmin.edtHapusClick(Sender: TObject);
begin
if (edtNama.Text = '') or (edtKode.Text = '') then
  begin

  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin menghapus data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqDivAdmin.SQL.Clear;
        modulDB.ZqDivAdmin.SQL.Text := '';
        modulDB.ZqDivAdmin.SQL.Text := 'DELETE FROM divisi where id = :id';
        modulDB.ZqDivAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqDivAdmin.ExecSQL;
        modulDB.DsDivAdmin.DataSet.Refresh;
        ShowMessage('Data Sudah Di Hapus.');
      end
      else
      begin
        ShowMessage('Penghapusan Di Batalkan.');
      end;
  end;
end;

end.
