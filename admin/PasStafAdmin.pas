unit PasStafAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrStaffAdmin = class(TForm)
    edtNama: TEdit;
    edtNip: TEdit;
    edtJabatan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbxSts: TComboBox;
    btnSimpan: TButton;
    btnUbah: TButton;
    DBGrid1: TDBGrid;
    btnHapus: TButton;
    edtId: TEdit;
    btnStaffRep: TButton;
    btnClr: TButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label7: TLabel;
    edtRefresh: TButton;
    edtCari: TEdit;
    edtIdUser: TEdit;
    edtDiv: TEdit;
    btnRefresh: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
    procedure btnStaffRepClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnClrClick(Sender: TObject);
    procedure edtRefreshClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frStaffAdmin: TfrStaffAdmin;

implementation

uses
  modulDBPas, DB;

{$R *.dfm}

procedure TfrStaffAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
DBGrid1.Columns[0].Width := 32;
DBGrid1.Columns[1].Width := 40;
DBGrid1.Columns[2].Width := 50;
DBGrid1.Columns[3].Width := 150;
DBGrid1.Columns[4].Width := 175;
DBGrid1.Columns[5].Width := 120;
DBGrid1.Columns[6].Width := 64;

DBGrid2.Columns[0].Width := 32;
DBGrid2.Columns[1].Width := 125;
DBGrid2.Columns[2].Width := 32;

DBGrid3.Columns[0].Width := 32;
DBGrid3.Columns[1].Width := 150;
DBGrid3.Columns[2].Width := 32;

//while not modulDB.ZqDivStaf.Eof do
//  begin
//    cbxDiv.Items.AddObject(modulDB.ZqDivStaf.FieldByName('nama_divisi').AsString, TObject(modulDB.ZqDivStaf.FieldByName('id').AsInteger));
//    modulDB.ZqDivStaf.Next;
//  end;
//while not modulDB.ZqUserAdminView.Eof do
//  begin
//    cbxUser.Items.AddObject(modulDB.ZqUserAdminView.FieldByName('user_name').AsString, TObject(modulDB.ZqUserAdminView.FieldByName('id').AsInteger));
//    modulDB.ZqUserAdminView.Next;
//  end;
end;

procedure TfrStaffAdmin.FormActivate(Sender: TObject);
begin
//while not modulDB.ZqDivStaf.Eof do
//  begin
//    cbxDiv.Items.AddObject(modulDB.ZqDivStaf.FieldByName('nama_divisi').AsString, TObject(modulDB.ZqDivStaf.FieldByName('id').AsInteger));
//    modulDB.ZqDivStaf.Next;
//  end;
//while not modulDB.ZqUserAdminView.Eof do
//  begin
//    cbxUser.Items.AddObject(modulDB.ZqUserAdminView.FieldByName('user_name').AsString, TObject(modulDB.ZqUserAdminView.FieldByName('id').AsInteger));
//    modulDB.ZqUserAdminView.Next;
//  end;
end;

procedure refreshData();
begin
modulDB.ZqStafAdminView.SQL.Clear;
modulDB.ZqStafAdminView.SQL.Text := '';
modulDB.ZqStafAdminView.SQL.Text := 'SELECT * FROM penerbit';
modulDB.ZqStafAdminView.Open;
modulDB.DsStafAdminView.DataSet.Refresh;
end;

procedure TfrStaffAdmin.btnSimpanClick(Sender: TObject);
var
  id_user, id_divisi : Integer;
begin
if (edtIdUser.Text = '') or (edtDiv.Text = '') or (edtNama.Text = '') or (edtNip.Text = '') or (cbxSts.Text = '') or (cbxSts.Text = '----') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENAMBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqStafAdmin.SQL.Clear;
        modulDB.ZqStafAdmin.SQL.Text := '';
        modulDB.ZqStafAdmin.SQL.Text := 'INSERT INTO penerbit (id_user, id_divisi, nama, NIP, jabatan, `status`) VALUES (:id_user, :id_divisi, :nama, :NIP, :jabatan, :status)';

        modulDB.ZqStafAdmin.ParamByName('id_user').Value := edtIdUser.Text;
        modulDB.ZqStafAdmin.ParamByName('id_divisi').Value := edtDiv.Text;
        modulDB.ZqStafAdmin.ParamByName('nama').Value := edtNama.Text;
        modulDB.ZqStafAdmin.ParamByName('nip').Value := edtNip.Text;
        modulDB.ZqStafAdmin.ParamByName('jabatan').Value := edtJabatan.Text;
        modulDB.ZqStafAdmin.ParamByName('status').Value := cbxSts.Text;

        modulDB.ZqStafAdmin.ExecSQL;
        modulDB.DsStafAdminView.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Penambahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrStaffAdmin.DBGrid1CellClick(Column: TColumn);
var
  id_user : integer;
begin
edtId.Text := modulDB.ZqStafAdminView.Fields[0].AsString;

edtIdUser.Text := modulDB.ZqStafAdminView.Fields[1].AsString;
edtDiv.Text := modulDB.ZqStafAdminView.Fields[2].AsString;

edtNama.Text := modulDB.ZqStafAdminView.Fields[3].AsString;
edtNip.Text := modulDB.ZqStafAdminView.Fields[4].AsString;
edtJabatan.Text := modulDB.ZqStafAdminView.Fields[5].AsString;
cbxSts.Text := modulDB.ZqStafAdminView.Fields[6].AsString;
end;

procedure TfrStaffAdmin.btnUbahClick(Sender: TObject);
var
  id_user, id_divisi : Integer;
begin
if (edtIdUser.Text = '') or (edtDiv.Text = '') or (edtNama.Text = '') or (edtNip.Text = '') or (cbxSts.Text = '') or (cbxSts.Text = '----') or (edtId.Text = '') then
  begin
    ShowMessage('Data Yang Akan Di UBAH Belum Di Pilih!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGUBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqStafAdmin.SQL.Clear;
        modulDB.ZqStafAdmin.SQL.Text := '';
        modulDB.ZqStafAdmin.SQL.Text := 'UPDATE penerbit SET id_user = :id_user, id_divisi = :id_divisi, nama = :nama, NIP = :NIP, jabatan = :jabatan, `status` = :status WHERE id = :id';

        modulDB.ZqStafAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqStafAdmin.ParamByName('id_user').Value := edtIdUser.Text;
        modulDB.ZqStafAdmin.ParamByName('id_divisi').Value := edtDiv.Text;
        modulDB.ZqStafAdmin.ParamByName('nama').Value := edtNama.Text;
        modulDB.ZqStafAdmin.ParamByName('NIP').Value := edtNip.Text;
        modulDB.ZqStafAdmin.ParamByName('jabatan').Value := edtJabatan.Text;
        modulDB.ZqStafAdmin.ParamByName('status').Value := cbxSts.Text;

        modulDB.ZqStafAdmin.ExecSQL;
        modulDB.DsStafAdminView.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Pengubahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrStaffAdmin.btnStaffRepClick(Sender: TObject);
begin
modulDB.FrxrepDsStafView.ShowReport();
end;

procedure TfrStaffAdmin.btnHapusClick(Sender: TObject);
//var
//  id_user, id_divisi : Integer;
begin
if (edtIdUser.Text = '') or (edtDiv.Text = '') or (edtId.Text = '') then
  begin
    ShowMessage('Data Yang Akan Di HAPUS Belum Di Pilih!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGHAPUS data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqStafAdmin.SQL.Clear;
        modulDB.ZqStafAdmin.SQL.Text := '';
        modulDB.ZqStafAdmin.SQL.Text := 'DELETE FROM penerbit WHERE id = :id AND id_user = :id_user';

        modulDB.ZqStafAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqStafAdmin.ParamByName('id_user').Value := edtIdUser.Text;

        modulDB.ZqStafAdmin.ExecSQL;
        modulDB.DsStafAdminView.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Penghapusan Di Batalkan.');
      end;
  end;
end;

procedure TfrStaffAdmin.btnClrClick(Sender: TObject);
begin
edtId.Text := '';
edtIdUser.Text := '';
edtDiv.Text := '';
cbxSts.Text := '----';
edtNama.Text := '';
edtNip.Text := '';
edtJabatan.Text := ''
end;

procedure TfrStaffAdmin.edtRefreshClick(Sender: TObject);
begin
refreshData;
end;

procedure TfrStaffAdmin.edtCariChange(Sender: TObject);
var
  cari : string;
begin
if (edtCari.Text = '') then
  begin
    refreshData;
  end
  else
  begin
    cari := edtCari.Text;
    modulDB.ZqStafAdminView.SQL.Clear;
    modulDB.ZqStafAdminView.SQL.Text := '';
    modulDB.ZqStafAdminView.SQL.Text := 'SELECT * FROM penerbit WHERE nama LIKE ''%' +cari+ '%'' OR NIP LIKE  ''%' +cari+ '%'' OR jabatan LIKE ''%' +cari+ '%'' OR status LIKE ''%' +cari+ '%''';
    modulDB.ZqStafAdminView.Open;
    modulDB.DsStafAdminView.DataSet.Refresh;
  end;
end;

procedure TfrStaffAdmin.DBGrid2CellClick(Column: TColumn);
begin
edtIdUser.Text := modulDB.ZqStafAdminSetView.Fields[0].AsString;
end;

procedure TfrStaffAdmin.DBGrid3CellClick(Column: TColumn);
begin
edtDiv.Text := modulDB.ZqDivAdminView.Fields[0].AsString;
end;

procedure TfrStaffAdmin.btnRefreshClick(Sender: TObject);
begin
refreshData;
end;

end.
