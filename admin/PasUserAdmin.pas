unit PasUserAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrUserAdmin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    DBGrid1: TDBGrid;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    cbxSts: TComboBox;
    cbxLvl: TComboBox;
    edtId: TEdit;
    Label5: TLabel;
    edtCari: TEdit;
    btnRefresh: TButton;
    btnClr: TButton;
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frUserAdmin: TfrUserAdmin;

implementation

uses
  modulDBPas;

{$R *.dfm}

procedure TfrUserAdmin.btnSimpanClick(Sender: TObject);
begin
if (edtUsername.Text = '') or (edtPassword.Text = '') or (cbxSts.Text = '----') or (cbxSts.Text = '') or (cbxLvl.Text='----') or (cbxSts.Text='') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENAMBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqUserAdmin.SQL.Clear;
        modulDB.ZqUserAdmin.SQL.Text := '';
        modulDB.ZqUserAdmin.SQL.Text := 'INSERT INTO user (user_name, `password`, `status`, `level`) VALUES (:user_name, :password, :status, :level)';

        modulDB.ZqUserAdmin.ParamByName('user_name').Value := edtUsername.Text;
        modulDB.ZqUserAdmin.ParamByName('password').Value := edtPassword.Text;
        modulDB.ZqUserAdmin.ParamByName('status').Value := cbxSts.Text;
        modulDB.ZqUserAdmin.ParamByName('level').Value := cbxLvl.Text;

        modulDB.ZqUserAdmin.ExecSQL;
        modulDB.DsUserAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Data Tidak Jadi Disimpan.');
      end;
  end;
end;

procedure TfrUserAdmin.DBGrid1CellClick(Column: TColumn);
begin
edtId.Text:= modulDB.ZqUserAdminView.Fields[0].AsString;
edtUsername.Text := modulDB.ZqUserAdminView.Fields[1].AsString;
edtPassword.Text := modulDB.ZqUserAdminView.Fields[2].AsString;
cbxSts.Text := modulDB.ZqUserAdminView.Fields[3].AsString;
cbxLvl.Text := modulDB.ZqUserAdminView.Fields[4].AsString;
end;

procedure TfrUserAdmin.btnEditClick(Sender: TObject);
begin
if (edtUsername.Text = '') or (edtPassword.Text = '') or (cbxSts.Text = '----') or (cbxSts.Text = '') or (cbxLvl.Text='----') or (cbxSts.Text='') then
  begin
    ShowMessage('Ada Data Yang Kosong!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGUBAH data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqUserAdmin.SQL.Clear;
        modulDB.ZqUserAdmin.SQL.Text := '';
        modulDB.ZqUserAdmin.SQL.Text := 'UPDATE user SET user_name = :user_name, `password` = :password, `status` = :status, `level` = :level WHERE id = :id';

        modulDB.ZqUserAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqUserAdmin.ParamByName('user_name').Value := edtUsername.Text;
        modulDB.ZqUserAdmin.ParamByName('password').Value := edtPassword.Text;
        modulDB.ZqUserAdmin.ParamByName('status').Value := cbxSts.Text;
        modulDB.ZqUserAdmin.ParamByName('level').Value := cbxLvl.Text;

        modulDB.ZqUserAdmin.ExecSQL;
        modulDB.DsUserAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Pengubahan Data Di Batalkan.');
      end;
  end;
end;

procedure TfrUserAdmin.btnHapusClick(Sender: TObject);
begin
if (edtId.Text = '') then
  begin
    ShowMessage('Data Yang Akan di HAPUS Belum Di Isi!');
  end
  else
  begin
    if MessageDlg('Apa Anda yakin ingin MENGHAPUS data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        modulDB.ZqUserAdmin.SQL.Clear;
        modulDB.ZqUserAdmin.SQL.Text := '';
        modulDB.ZqUserAdmin.SQL.Text := 'DELETE FROM user where id = :id';
        modulDB.ZqUserAdmin.ParamByName('id').Value := edtId.Text;
        modulDB.ZqUserAdmin.ExecSQL;
        modulDB.DsUserAdmin.DataSet.Refresh;
      end
      else
      begin
        ShowMessage('Operasi Di Batalkan.');
      end;
  end;
end;

procedure refreshData();
begin
  //jika kolom pencarian kosong, kembalikan ZqDivAdminView seperti semula
    modulDB.ZqUserAdminView.SQL.Clear;
    modulDB.ZqUserAdminView.SQL.Text := '';
    modulDB.ZqUserAdminView.SQL.Text := 'SELECT * FROM user';
    modulDB.ZqUserAdminView.Open;
    modulDB.DsDivAdmin.DataSet.Refresh;
end;

procedure TfrUserAdmin.edtCariChange(Sender: TObject);
var
  cari : String;
begin
if (edtCari.Text = '') then
  begin
    refreshData;
  end
  else
  begin
    //jika kolom pencarian ada isinya, lakukan pencarian secara keseluruhan
    cari := edtCari.Text;
    modulDB.ZqUserAdminView.SQL.Clear;
    modulDB.ZqUserAdminView.SQL.Text := '';
    modulDB.ZqUserAdminView.SQL.Text := 'SELECT * FROM user WHERE user_name LIKE ''%'+cari+'%'' OR status LIKE ''%'+cari+'%'' OR level LIKE ''%' +cari+'%''';
    modulDB.ZqUserAdminView.Open;
    modulDB.DsDivAdmin.DataSet.Refresh;
  end;
end;

procedure TfrUserAdmin.btnRefreshClick(Sender: TObject);
begin
  refreshData;
end;

procedure TfrUserAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
DBGrid1.Columns[0].Width := 32;
DBGrid1.Columns[1].Width := 124;
DBGrid1.Columns[2].Width := 124;
DBGrid1.Columns[3].Width := 80;
DBGrid1.Columns[4].Width := 50;
end;

procedure TfrUserAdmin.btnClrClick(Sender: TObject);
begin
edtId.Text := '';
edtUsername.Text := '';
edtPassword.Text := '';
cbxSts.Text := '----';
cbxLvl.Text := '----';
end;

end.
