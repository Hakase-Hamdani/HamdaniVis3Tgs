unit pasRegUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrRegUser = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    edtIdUser: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtStaffNama: TEdit;
    GroupBox2: TGroupBox;
    btnTujuan: TButton;
    btnTambahSurat: TButton;
    btnCetak: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnTujuanClick(Sender: TObject);
    procedure btnTambahSuratClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frRegUser: TfrRegUser;

implementation

uses
  PasLogin, modulDBPas, PasTujuanAdmin, PasInputSurat;

{$R *.dfm}

procedure TfrRegUser.FormCreate(Sender: TObject);
var
  userid : string;
begin
  Position := poScreenCenter;
  BorderStyle := bsDialog;
  userid  := frLogin.Edit1.Text;
  
  //edtIdUser.Text := userid;
  modulDB.ZqUsr.SQL.Text := '';
  modulDB.ZqUsr.SQL.Text := 'SELECT user_name FROM user WHERE id = :id';
  modulDB.ZqUsr.ParamByName('id').AsString := userid;
  modulDB.ZqUsr.Open;
  edtIdUser.Text := modulDB.ZqUsr.FIeldByName('user_name').AsString;

  modulDB.ZqStaffNama.SQL.Text := '';
  modulDB.ZqStaffNama.SQL.Text := 'SELECT nama FROM penerbit WHERE id_user = :id_user';
  modulDB.ZqStaffNama.ParamByName('id_user').AsString := userid;
  modulDB.ZqStaffNama.Open;
  edtStaffNama.Text := modulDB.ZqStaffNama.FieldByName('nama').AsString;
end;

procedure TfrRegUser.FormActivate(Sender: TObject);
var
  userid : string;
begin
  //buat session because delphi can't do session
  userid  := frLogin.Edit1.Text;
  
  //edtIdUser.Text := userid;
  modulDB.ZqUsr.SQL.Text := '';
  modulDB.ZqUsr.SQL.Text := 'SELECT user_name FROM user WHERE id = :id';
  modulDB.ZqUsr.ParamByName('id').AsString := userid;
  modulDB.ZqUsr.Open;
  edtIdUser.Text := modulDB.ZqUsr.FIeldByName('user_name').AsString;

  modulDB.ZqStaffNama.SQL.Text := '';
  modulDB.ZqStaffNama.SQL.Text := 'SELECT nama FROM penerbit WHERE id_user = :id_user';
  modulDB.ZqStaffNama.ParamByName('id_user').AsString := userid;
  modulDB.ZqStaffNama.Open;
  edtStaffNama.Text := modulDB.ZqStaffNama.FieldByName('nama').AsString;
end;

procedure TfrRegUser.btnTujuanClick(Sender: TObject);
begin
frTujuanAdmin.Show;
end;

procedure TfrRegUser.btnTambahSuratClick(Sender: TObject);
begin
frSurat.Show;
end;

end.
