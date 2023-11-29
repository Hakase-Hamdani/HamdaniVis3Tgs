unit PasStafAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrStaffAdmin = class(TForm)
    cbxUser: TComboBox;
    cbxDiv: TComboBox;
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
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
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
while not modulDB.ZqDivStaf.Eof do
  begin
    cbxDiv.Items.AddObject(modulDB.ZqDivStaf.FieldByName('nama_divisi').AsString, TObject(modulDB.ZqDivStaf.FieldByName('id').AsInteger));
    modulDB.ZqDivStaf.Next;
  end;
while not modulDB.ZqUserAdminView.Eof do
  begin
    cbxUser.Items.AddObject(modulDB.ZqUserAdminView.FieldByName('user_name').AsString, TObject(modulDB.ZqUserAdminView.FieldByName('id').AsInteger));
    modulDB.ZqUserAdminView.Next;
  end;
end;

procedure TfrStaffAdmin.FormActivate(Sender: TObject);
begin
while not modulDB.ZqDivStaf.Eof do
  begin
    cbxDiv.Items.AddObject(modulDB.ZqDivStaf.FieldByName('nama_divisi').AsString, TObject(modulDB.ZqDivStaf.FieldByName('id').AsInteger));
    modulDB.ZqDivStaf.Next;
  end;
while not modulDB.ZqUserAdminView.Eof do
  begin
    cbxUser.Items.AddObject(modulDB.ZqUserAdminView.FieldByName('user_name').AsString, TObject(modulDB.ZqUserAdminView.FieldByName('id').AsInteger));
    modulDB.ZqUserAdminView.Next;
  end;
end;

procedure TfrStaffAdmin.btnSimpanClick(Sender: TObject);
var
  id_user, id_divisi : Integer;
begin
modulDB.ZqStafAdmin.SQL.Clear;
modulDB.ZqStafAdmin.SQL.Text := '';
modulDB.ZqStafAdmin.SQL.Text := 'INSERT INTO penerbit (id_user, id_divisi, nama, NIP, jabatan, `status`) VALUES (:id_user, :id_divisi, :nama, :NIP, :jabatan, :status)';

id_user := Integer(cbxUser.Items.Objects[cbxUser.ItemIndex]);
id_divisi := Integer(cbxDiv.Items.Objects[cbxDiv.ItemIndex]);

modulDB.ZqStafAdmin.ParamByName('id_user').Value := id_user;
modulDB.ZqStafAdmin.ParamByName('id_divisi').Value := id_divisi;
modulDB.ZqStafAdmin.ParamByName('nama').Value := edtNama.Text;
modulDB.ZqStafAdmin.ParamByName('nip').Value := edtNip.Text;
modulDB.ZqStafAdmin.ParamByName('status').Value := cbxSts.Text;

modulDB.ZqStafAdmin.ExecSQL;
modulDB.DsStafAdminView.DataSet.Refresh;
end;

procedure TfrStaffAdmin.DBGrid1CellClick(Column: TColumn);
begin
edtId.Text := modulDB.ZqStafAdminView.Fields[0].AsString;

cbxUser.Text := modulDB.ZqStafAdminView.Fields[1].AsString;
cbxDiv.Text := modulDB.ZqStafAdminView.Fields[2].AsString;

edtNama.Text := modulDB.ZqStafAdminView.Fields[3].AsString;
edtNip.Text := modulDB.ZqStafAdminView.Fields[4].AsString;
edtJabatan.Text := modulDB.ZqStafAdminView.Fields[5].AsString;
cbxSts.Text := modulDB.ZqStafAdminView.Fields[6].AsString;
end;

procedure TfrStaffAdmin.btnUbahClick(Sender: TObject);
var
  id_user, id_divisi : Integer;
begin
modulDB.ZqStafAdmin.SQL.Clear;
modulDB.ZqStafAdmin.SQL.Text := '';
modulDB.ZqStafAdmin.SQL.Text := 'UPDATE penerbit SET id_user = :id_user, id_divisi = :id_divisi, nama = :nama, NIP = :NIP WHERE id = :id';

id_user := Integer(cbxUser.Items.Objects[cbxUser.ItemIndex]);
id_divisi := Integer(cbxDiv.Items.Objects[cbxDiv.ItemIndex]);

modulDB.ZqStafAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqStafAdmin.ParamByName('id_user').Value := id_user;
modulDB.ZqStafAdmin.ParamByName('id_divisi').Value := id_divisi;
modulDB.ZqStafAdmin.ParamByName('nama').Value := edtNama.Text;
modulDB.ZqStafAdmin.ParamByName('NIP').Value := edtNip.Text;
modulDB.ZqStafAdmin.ParamByName('status').Value := cbxSts.Text;

modulDB.ZqStafAdmin.ExecSQL;
modulDB.DsStafAdminView.DataSet.Refresh;
end;

end.
