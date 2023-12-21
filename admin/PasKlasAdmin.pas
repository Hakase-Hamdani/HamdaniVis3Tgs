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
    btnClr: TButton;
    btnRefresh: TButton;
    Label4: TLabel;
    edtCari: TEdit;
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
    procedure edtHapusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClrClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
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
if (edtNama.Text := '') or (edtNo.Text := '') or (cbxSts.Text := '') or (cbxSts.Text := '') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENAMBAHKAN data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqKlasAdmin.SQL.Clear;
        modulDB.ZqKlasAdmin.SQL.Text := '';
        modulDB.ZqKlasAdmin.SQL.Text := 'INSERT INTO klasifikasi (nama, nomor, status) VALUES (:nama, :nomor, :status)';

        modulDB.ZqKlasAdmin.ParamByName('nama').Value := edtNama.Text;
        modulDB.ZqKlasAdmin.ParamByName('nomor').Value := edtNo.Text;
        modulDB.ZqKlasAdmin.ParamByName('status').Value := cbxSts.Text;

        modulDB.ZqKlasAdmin.ExecSQL;
        modulDB.DsKlasAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Penambahan Data Di Batalkan.');
      end;
  end;
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
if (edtId.Text := '') or (edtNama.Text := '') or (edtNo.Text := '') then
  begin
    ShowMessage('Data Yang Akan Di UBAH Belum Di Pilih!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGUBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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
      end
      else
      begin
        ShowMessage('Pengubahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrKlasAdmin.edtHapusClick(Sender: TObject);
begin
if (edtId.Text := '') then
  begin
    ShowMessage('Data Yang Akan Di HAPUS Belum Di Pilih!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGHAPUS data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqKlasAdmin.SQL.Clear;
        modulDB.ZqKlasAdmin.SQL.Text := '';
        modulDB.ZqKlasAdmin.SQL.Text := 'DELETE FROM klasifikasi where id = :id';
        modulDB.ZqKlasAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqKlasAdmin.ExecSQL;
        modulDB.DsKlasAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Penghapusan Di Batalkan.');
      end;
  end;
end;

procedure TfrKlasAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
DBGrid1.Columns[0].Width := 32;
DBGrid1.Columns[1].Width := 150;
DBGrid1.Columns[2].Width := 64;
DBGrid1.Columns[3].Width := 64;
end;

procedure TfrKlasAdmin.btnClrClick(Sender: TObject);
begin
edtId.Text := '';
edtNama.Text := '';
edtNo.Text := '';
cbxSts.Text := '----';
end;

procedure refreshData();
begin
modulDB.ZqKlasAdminView.SQL.Clear;
modulDB.ZqKlasAdminView.SQL.Text := '';
modulDB.ZqKlasAdminView.SQL.Text := 'SELECT * FROM klasifikasi';
modulDB.ZqKlasAdminView.Open;
modulDB.DsKlasAdmin.DataSet.Refresh;
end;

procedure TfrKlasAdmin.edtCariChange(Sender: TObject);
var
  cari : string;
begin
if (edtCari.Text = '') then
  begin
    //jika kolom pencarian kosong, kembalikan ZqDivAdminView seperti semula
    refreshData;
  end
  else
  begin
    //jika kolom pencarian ada isinya, lakukan pencarian secara keseluruhan
    cari := edtCari.Text;
    modulDB.ZqKlasAdminView.SQL.Clear;
    modulDB.ZqKlasAdminView.SQL.Text := '';
    modulDB.ZqKlasAdminView.SQL.Text := 'SELECT * FROM klasifikasi WHERE nama LIKE ''%' +cari+ '%'' OR nomor LIKE ''%' +cari+ '%'' OR status LIKE ''%' +cari+ '%''';
    modulDB.ZqKlasAdminView.Open;
    modulDB.DsKlasAdmin.DataSet.Refresh;
  end;
end;

end.
