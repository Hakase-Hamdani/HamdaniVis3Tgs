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
    edtOrang: TEdit;
    edtJabatan: TEdit;
    edtInstitusi: TEdit;
    DBGrid1: TDBGrid;
    btsSimpan: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    edtId: TEdit;
    btnRepTujuan: TButton;
    btnClr: TButton;
    cbxSts: TComboBox;
    mmAlamat: TMemo;
    Label6: TLabel;
    edtCari: TEdit;
    btnRefresh: TButton;
    procedure btsSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnRepTujuanClick(Sender: TObject);
    procedure btnClrClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
if (mmAlamat.Text = '') or (edtOrang.Text = '') or (edtJabatan.Text = '') or (edtInstitusi.Text = '') or (cbxSts.Text = '') or (cbxSts.Text = '----') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin menambah data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqTujuanAdmin.SQL.Clear;
        modulDB.ZqTujuanAdmin.SQL.Text := '';
        modulDB.ZqTujuanAdmin.SQL.Text := 'INSERT INTO tujuan (alamat, orang, jabatan, institusi, status) VALUES (:alamat, :orang, :jabatan, :institusi, :status)';

        modulDB.ZqTujuanAdmin.ParamByName('alamat').Value := mmAlamat.Text;
        modulDB.ZqTujuanAdmin.ParamByName('orang').Value := edtOrang.Text;
        modulDB.ZqTujuanAdmin.ParamByName('jabatan').Value := edtJabatan.Text;
        modulDB.ZqTujuanAdmin.ParamByName('institusi').Value := edtInstitusi.Text;
        modulDB.ZqTujuanAdmin.ParamByName('status').Value := cbxSts.Text;

        modulDB.ZqTujuanAdmin.ExecSQL;
        modulDB.DsTujuanAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Penambahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrTujuanAdmin.DBGrid1CellClick(Column: TColumn);
begin
edtId.Text := modulDB.ZqTujuanAdminView.Fields[0].AsString;
mmAlamat.Text := modulDB.ZqTujuanAdminView.Fields[1].AsString;
edtOrang.Text := modulDB.ZqTujuanAdminView.Fields[2].AsString;
edtJabatan.Text := modulDB.ZqTujuanAdminView.Fields[3].AsString;
edtInstitusi.Text := modulDB.ZqTujuanAdminView.Fields[4].AsString;
cbxSts.Text := modulDB.ZqTujuanAdminView.Fields[5].AsString;
end;

procedure TfrTujuanAdmin.btnUbahClick(Sender: TObject);
begin
if (mmAlamat.Text = '') or (edtOrang.Text = '') or (edtJabatan.Text = '') or (edtInstitusi.Text = '') or (cbxSts.Text = '') or (cbxSts.Text = '----') or (edtId.Text = '') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin mengubah data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqTujuanAdmin.SQL.Clear;
        modulDB.ZqTujuanAdmin.SQL.Text := '';
        modulDB.ZqTujuanAdmin.SQL.Text := 'UPDATE tujuan SET alamat = :alamat, orang = :orang, jabatan = :jabatan, institusi = :institusi, status = :status WHERE id = :id';

        modulDB.ZqTujuanAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqTujuanAdmin.ParamByName('alamat').Value := mmAlamat.Text;
        modulDB.ZqTujuanAdmin.ParamByName('orang').Value := edtOrang.Text;
        modulDB.ZqTujuanAdmin.ParamByName('jabatan').Value := edtJabatan.Text;
        modulDB.ZqTujuanAdmin.ParamByName('institusi').Value := edtInstitusi.Text;
        modulDB.ZqTujuanAdmin.ParamByName('status').Value := cbxSts.Text;

        modulDB.ZqTujuanAdmin.ExecSQL;
        modulDB.DsTujuanAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Pengubahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrTujuanAdmin.btnHapusClick(Sender: TObject);
begin
if (mmAlamat.Text = '') or (edtOrang.Text = '') or (edtJabatan.Text = '') or (edtInstitusi.Text = '') or (cbxSts.Text = '') or (cbxSts.Text = '----') or (edtId.Text = '') then
  begin
    ShowMessage('Data Belum Di Pilih!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin menghapus data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqTujuanAdmin.SQL.Clear;
        modulDB.ZqTujuanAdmin.SQL.Text := '';
        modulDB.ZqTujuanAdmin.SQL.Text := 'DELETE FROM tujuan where id = :id';
        modulDB.ZqTujuanAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqTujuanAdmin.ExecSQL;
        modulDB.DsTujuanAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Operasi Di Batalkan.');
      end;
  end;
end;

procedure TfrTujuanAdmin.btnRepTujuanClick(Sender: TObject);
begin
modulDB.FrxrepTujuanView.ShowReport();
end;

procedure TfrTujuanAdmin.btnClrClick(Sender: TObject);
begin
edtId.Text := '';
mmAlamat.Text := '';
edtOrang.Text := '';
edtJabatan.Text := '';
edtInstitusi.Text := '';
cbxSts.Text := '----';
end;

procedure refreshData();
begin
modulDB.ZqTujuanAdminView.SQL.Clear;
modulDB.ZqTujuanAdminView.SQL.Text := '';
modulDB.ZqTujuanAdminView.SQL.Text := 'SELECT * FROM tujuan';
modulDB.ZqTujuanAdminView.Open;
modulDB.DsTujuanAdmin.DataSet.Refresh;
end;
procedure TfrTujuanAdmin.edtCariChange(Sender: TObject);
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
    modulDB.ZqTujuanAdminView.SQL.Clear;
    modulDB.ZqTujuanAdminView.SQL.Text := '';
    modulDB.ZqTujuanAdminView.SQL.Text := 'SELECT * FROM tujuan WHERE alamat LIKE ''%' +cari+ '%'' OR orang LIKE ''%'+cari+'%'' OR jabatan LIKE ''%'+cari+'%'' OR institusi LIKE ''%'+cari+'%'' OR status LIKE ''%'+cari+'%''';
    modulDB.ZqTujuanAdminView.Open;
    modulDB.DsTujuanAdmin.DataSet.Refresh;
  end;
end;

procedure TfrTujuanAdmin.btnRefreshClick(Sender: TObject);
begin
refreshData;
end;

procedure TfrTujuanAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
DBGrid1.Columns[0].Width := 32;
DBGrid1.Columns[1].Width := 250;
DBGrid1.Columns[2].Width := 150;
DBGrid1.Columns[3].Width := 150;
DBGrid1.Columns[4].Width := 150;
DBGrid1.Columns[5].Width := 60;
end;

end.
