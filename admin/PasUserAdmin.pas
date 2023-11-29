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
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
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
var
  username, pswd, sts, lvl: string;
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
end;

procedure TfrUserAdmin.btnHapusClick(Sender: TObject);
begin
modulDB.ZqUserAdmin.SQL.Clear;
modulDB.ZqUserAdmin.SQL.Text := '';
modulDB.ZqUserAdmin.SQL.Text := 'DELETE FROM user where id = :id';
modulDB.ZqUserAdmin.ParamByName('id').Value := edtId.Text;
modulDB.ZqUserAdmin.ExecSQL;
modulDB.DsUserAdmin.DataSet.Refresh;
end;

end.
