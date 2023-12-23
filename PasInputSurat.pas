unit PasInputSurat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids;

type
  TfrSurat = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbxPenerbit: TComboBox;
    DateBerlaku: TDateTimePicker;
    MmDetail: TMemo;
    cbxStatus: TComboBox;
    DBGrid1: TDBGrid;
    btnSimpan: TButton;
    Button2: TButton;
    edtIdUser: TEdit;
    btnCetak: TButton;
    edtIdPenerbit: TEdit;
    edtIdSurat: TEdit;
    btnRefresh: TButton;
    Label7: TLabel;
    edtCari: TEdit;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    edtJenis: TEdit;
    edtTujuan: TEdit;
    edtKlasId: TEdit;
    edtTujuanId: TEdit;
    btnClr: TButton;
    btnRef: TButton;
    edtTgl: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure RbDefClick(Sender: TObject);
    procedure RbDescClick(Sender: TObject);
    procedure RbAscClick(Sender: TObject);
    procedure btnClrClick(Sender: TObject);
    procedure btnRefClick(Sender: TObject);
    procedure DateBerlakuChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSurat: TfrSurat;

implementation

uses
  modulDBPas, PasLogin, DB, DateUtils;

{$R *.dfm}

procedure TfrSurat.FormActivate(Sender: TObject);
var
  userid, kueriJoinUser : string;
begin
  //kode buat session
  kueriJoinUser := 'SELECT id FROM penerbit WHERE id_user = :id_user';
  userid  := frLogin.Edit1.Text;

  modulDB.ZqIdUserPenerbit.SQL.Text := '';
  modulDB.ZqIdUserPenerbit.SQL.Text := kueriJoinUser;
  modulDB.ZqIdUserPenerbit.ParamByName('id_user').AsString := userid;
  modulDB.ZqIdUserPenerbit.Open;
  edtIdPenerbit.Text := modulDB.ZqIdUserPenerbit.FieldByName('id').AsString;

  modulDB.ZqSuratView.SQL.Text := '';
  modulDB.ZqSuratView.SQL.Text := 'SELECT * FROM surat WHERE id_penerbit = :id_penerbit';
  modulDB.ZqSuratView.ParamByName('id_penerbit').AsString := edtIdPenerbit.Text;
  modulDB.ZqSuratView.Open;

  edtIdUser.Text := userid;
  modulDB.ZqUsr.SQL.Text := '';
  modulDB.ZqUsr.SQL.Text := 'SELECT id FROM user WHERE id = :id';
  modulDB.ZqUsr.ParamByName('id').AsString := userid;
  modulDB.ZqUsr.Open;
  edtIdUser.Text := modulDB.ZqUsr.FIeldByName('id').AsString;
//while not modulDB.ZqTujuanAdminView.Eof do //Tujuan
//  begin
//    cbxTujuan.Items.AddObject(modulDB.ZqTujuanAdminView.FieldByName('alamat').AsString, TObject(modulDB.ZqTujuanAdminView.FieldByName('id').AsInteger));
//    modulDB.ZqTujuanAdminView.Next;
//  end;
//while not modulDB.ZqKlasAdminView.Eof do
//  begin
//    cbxJenis.Items.AddObject(modulDB.ZqKlasAdminView.FieldByName('nama').AsString, TObject(modulDB.ZqKlasAdminView.FieldByName('id').AsInteger));
//    modulDB.ZqKlasAdminView.Next;
//  end;
end;

procedure TfrSurat.DateBerlakuChange(Sender: TObject);
var
  testdate : String;
begin
testdate := FormatDateTime('yyyy-mm-dd', DateBerlaku.Date);
edtTgl.Text := testdate;
end;

procedure TfrSurat.btnSimpanClick(Sender: TObject);
var
  id_penerbit, id_tujuan, id_jenis : Integer;
begin
if (edtIdPenerbit.Text = '') or (MmDetail.Text = '') or (cbxStatus.Text = '') or (cbxStatus.Text = '----') or (edtTujuanId.Text = '') or (edtKlasId.Text = '') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENAMBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqSuratMain.SQL.Text := '';
        modulDB.ZqSuratMain.SQL.Text := 'INSERT INTO surat (id_penerbit, id_tujuan, id_jenis, tgl_berlaku, detail, status) VALUES (:id_penerbit, :id_tujuan, :id_jenis, :tgl_berlaku, :detail, :status)';

//        id_tujuan := Integer(cbxTujuan.Items.Objects[cbxTujuan.ItemIndex]);
//        id_jenis := Integer(cbxJenis.Items.Objects[cbxTujuan.ItemIndex]);


        modulDB.ZqSuratMain.ParamByName('id_penerbit').Value := edtIdPenerbit.Text;
        modulDB.ZqSuratMain.ParamByName('id_tujuan').Value := edtTujuanId.Text;
        modulDB.ZqSuratMain.ParamByName('id_jenis').Value := edtKlasId.Text;

        modulDB.ZqSuratMain.ParamByName('tgl_berlaku').Value := edtTgl.Text;
        modulDB.ZqSuratMain.ParamByName('detail').Value := MmDetail.Text;
        modulDB.ZqSuratMain.ParamByName('status').Value := cbxStatus.Text;

        modulDB.ZqSuratMain.ExecSQL;
        modulDB.DsSurat.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Penambahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrSurat.DBGrid1CellClick(Column: TColumn);
var
  selectedDate  : TDateTime;
begin
if (DBGrid1.DataSource.DataSet <> nil) and (DBGrid1.DataSource.DataSet.RecNo > 0) then
  begin
    selectedDate := DBGrid1.DataSource.DataSet.FieldByName('tgl_berlaku').AsDateTime;
    DateBerlaku.Date := selectedDate;
  end;

edtIdSurat.Text := modulDB.ZqSuratView.Fields[0].AsString;
edtTujuanId.Text := modulDB.ZqSuratView.Fields[2].AsString;
edtKlasId.Text := modulDB.ZqSuratView.Fields[3].AsString;
MmDetail.Text := modulDB.ZqSuratView.Fields[5].AsString;
cbxStatus.Text := modulDB.ZqSuratView.Fields[6].AsString;
end;

procedure TfrSurat.Button2Click(Sender: TObject);
//var
//  id_penerbit, id_tujuan, id_jenis : Integer;
begin
if (edtIdPenerbit.Text = '') or (MmDetail.Text = '') or (cbxStatus.Text = '') or (cbxStatus.Text = '----') or (edtTujuanId.Text = '') or (edtKlasId.Text = '') then
  begin
    ShowMessage('Data Yang Akan Di UBAH Masih Belum Di Pilih!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGUBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqSuratMain.SQL.Clear;
        modulDB.ZqSuratMain.SQL.Text := 'UPDATE surat SET id_penerbit = :id_penerbit, id_tujuan = :id_tujuan, id_jenis = :id_jenis, tgl_berlaku = :tgl_berlaku, detail = :detail, status = :status WHERE id = :id';

        modulDB.ZqSuratMain.ParamByName('id_penerbit').Value := edtIdPenerbit.Text;
        modulDB.ZqSuratMain.ParamByName('id_tujuan').Value := edtTujuanId.Text;
        modulDB.ZqSuratMain.ParamByName('id_jenis').Value := edtKlasId.Text;

        modulDB.ZqSuratMain.ParamByName('tgl_berlaku').Value := edtTgl.Text;
        modulDB.ZqSuratMain.ParamByName('detail').Value := MmDetail.Lines.Text;
        modulDB.ZqSuratMain.ParamByName('status').Value := cbxStatus.Text;
        modulDB.ZqSuratMain.ParamByName('id').Value := edtIdSurat.Text;

//        modulDB.ZqSuratMain.ExecSQL;
//        modulDB.DsSurat.DataSet.Refresh;
        try
          modulDB.ZqSuratMain.ExecSQL;
          modulDB.DsSurat.DataSet.Refresh;
        except
          on E: Exception do
            ShowMessage('An error occurred: ' + E.Message);
        end;
      end
      else
      begin
        ShowMessage('Pengubahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrSurat.FormCreate(Sender: TObject);
var
  userid, kueriJoinUser : string;
begin
  Position := poScreenCenter;
  kueriJoinUser := 'SELECT id FROM penerbit WHERE id_user = :id_user';

  userid  := frLogin.Edit1.Text;

  modulDB.ZqIdUserPenerbit.SQL.Text := '';
  modulDB.ZqIdUserPenerbit.SQL.Text := kueriJoinUser;
  modulDB.ZqIdUserPenerbit.ParamByName('id_user').AsString := userid;
  modulDB.ZqIdUserPenerbit.Open;
  edtIdPenerbit.Text := modulDB.ZqIdUserPenerbit.FieldByName('id').AsString;

  userid  := frLogin.Edit1.Text;
  edtIdUser.Text := userid;
  modulDB.ZqUsr.SQL.Text := '';
  modulDB.ZqUsr.SQL.Text := 'SELECT id FROM user WHERE id = :id';
  modulDB.ZqUsr.ParamByName('id').AsString := userid; //assign var 'nama' ke :nama di kueri
  modulDB.ZqUsr.Open;
  edtIdUser.Text := modulDB.ZqUsr.FIeldByName('id').AsString;
end;

procedure TfrSurat.btnCetakClick(Sender: TObject);
var
  kueriJoin : string;
begin
kueriJoin :=
    'SELECT ' +
    '    surat.tgl_berlaku, ' +
    '    surat.detail, ' +
    '    surat.status AS surat_status, ' +
    '    tujuan.alamat AS tujuan_alamat, ' +
    '    tujuan.orang AS tujuan_orang, ' +
    '    tujuan.jabatan AS tujuan_jabatan, ' +
    '    tujuan.institusi AS tujuan_institusi, ' +
    '    klasifikasi.nama AS klasifikasi_nama, ' +
    '    klasifikasi.nomor AS klasifikasi_nomor, ' +
    '    penerbit.nama AS penerbit_nama, ' +
    '    penerbit.NIP AS penerbit_NIP, ' +
    '    penerbit.jabatan AS penerbit_jabatan, ' +
    '    divisi.nama_divisi ' +
    'FROM ' +
    '    surat ' +
    'JOIN ' +
    '    tujuan ON surat.id_tujuan = tujuan.id ' +
    'JOIN ' +
    '    klasifikasi ON surat.id_jenis = klasifikasi.id ' +
    'JOIN ' +
    '    penerbit ON surat.id_penerbit = penerbit.id ' +
    'JOIN ' +
    '    divisi ON penerbit.id_divisi = divisi.id ' +
    'WHERE ' +
    '    penerbit.id = :id_penerbit AND surat.id = :id_surat ';

    modulDB.ZqSuratCetak.SQL.Text := '';
    modulDB.ZqSuratCetak.SQL.Text := kueriJoin;
    modulDB.ZqSuratCetak.ParamByName('id_penerbit').AsString := edtIdPenerbit.Text;
    modulDB.ZqSuratCetak.ParamByName('id_surat').AsString := edtIdSurat.Text;
    modulDB.ZqSuratCetak.Open;

    modulDB.FrxrepSurat.ShowReport();
end;

procedure refreshData();
begin
modulDB.ZqSuratView.SQL.Clear;
modulDB.ZqSuratView.SQL.Text := '';
modulDB.ZqSuratView.SQL.Text := 'SELECT * FROM surat';
modulDB.ZqSuratView.Open;
modulDB.DsSurat.DataSet.Refresh;
end;

procedure TfrSurat.btnRefreshClick(Sender: TObject);
begin
refreshData;
end;

procedure TfrSurat.edtCariChange(Sender: TObject);
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
    modulDB.ZqSuratView.SQL.Clear;
    modulDB.ZqSuratView.SQL.Text := '';
    modulDB.ZqSuratView.SQL.Text := 'SELECT * FROM surat WHERE id_penerbit LIKE ''%' +cari+ '%'' OR id_tujuan LIKE ''%' +cari+ '%'' OR id_jenis LIKE ''%' +cari+ '%'' or tgl_berlaku LIKE ''%' +cari+ '%'' or `status` LIKE ''%' +cari+ '%''';
    modulDB.ZqSuratView.Open;
    modulDB.DsSurat.DataSet.Refresh;
  end;
end;

procedure TfrSurat.DBGrid2CellClick(Column: TColumn);
begin
edtCari.Text := modulDB.ZqStafAdminView.Fields[0].AsString;
end;

procedure TfrSurat.DBGrid4CellClick(Column: TColumn);
begin
edtKlasId.Text := modulDB.ZqKlasAdminView.Fields[0].AsString;
edtJenis.Text := modulDB.ZqKlasAdminView.Fields[1].AsString;
end;

procedure TfrSurat.DBGrid3CellClick(Column: TColumn);
begin
edtTujuan.Text := modulDB.ZqSuratAlamatAktifOnly.Fields[1].AsString;
edtTujuanId.Text := modulDB.ZqSuratAlamatAktifOnly.Fields[0].AsString;
end;

procedure TfrSurat.RbDefClick(Sender: TObject);
begin
refreshData;
end;

procedure TfrSurat.RbDescClick(Sender: TObject);
begin
modulDB.ZqSuratView.SQL.Clear;
modulDB.ZqSuratView.SQL.Text := '';
modulDB.ZqSuratView.SQL.Text := 'SELECT * FROM surat ORDER BY tgl_berlaku DESC';
modulDB.ZqSuratView.Open;
modulDB.DsSurat.DataSet.Refresh;
end;

procedure TfrSurat.RbAscClick(Sender: TObject);
begin
modulDB.ZqSuratView.SQL.Clear;
modulDB.ZqSuratView.SQL.Text := '';
modulDB.ZqSuratView.SQL.Text := 'SELECT * FROM surat ORDER BY tgl_berlaku ASC';
modulDB.ZqSuratView.Open;
modulDB.DsSurat.DataSet.Refresh;
end;

procedure TfrSurat.btnClrClick(Sender: TObject);
begin
cbxStatus.Text := '----';
edtTujuan.Text := '';
edtTujuanId.Text := '';
edtJenis.Text := '';
edtKlasId.Text := '';
MmDetail.Text := '';
end;

procedure TfrSurat.btnRefClick(Sender: TObject);
begin
refreshData;
end;

end.
