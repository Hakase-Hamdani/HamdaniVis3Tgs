unit pasRegUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    edtIdUser: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtStaff: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  PasLogin;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  userid : string;
begin
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

procedure TForm1.FormActivate(Sender: TObject);
var
  userid : string;
begin
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

end.
