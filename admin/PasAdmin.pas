unit PasAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrAdmin = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtIdUser: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button9: TButton;
    DBGrid1: TDBGrid;
    Button6: TButton;
    edtOutRep: TButton;
    edtStaffNama: TEdit;
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtOutRepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAdmin: TfrAdmin;

implementation

uses
  PasAdminLapStaff, PasLogin, modulDBPas, PasUserAdmin, PasStafAdmin, 
  PasDivAdmin, PasKlasAdmin, PasTujuanAdmin, PasInputSurat;

{$R *.dfm}

procedure TfrAdmin.Button9Click(Sender: TObject);
begin
//frAdminLapStaff.ShowModal;
modulDB.FrxrepAdminUser.ShowReport();
end;

procedure TfrAdmin.FormCreate(Sender: TObject);
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

procedure TfrAdmin.Button1Click(Sender: TObject);
begin
frUserAdmin.Show;
end;

procedure TfrAdmin.Button2Click(Sender: TObject);
begin
frStaffAdmin.Show;
end;

procedure TfrAdmin.Button3Click(Sender: TObject);
begin
frDIvisiAdmin.Show;
end;

procedure TfrAdmin.Button4Click(Sender: TObject);
begin
frTujuanAdmin.Show;
end;

procedure TfrAdmin.Button5Click(Sender: TObject);
begin
frKlasAdmin.Show;
end;

procedure TfrAdmin.Button6Click(Sender: TObject);
begin
frSurat.ShowModal;
end;

procedure TfrAdmin.FormActivate(Sender: TObject);
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

procedure TfrAdmin.edtOutRepClick(Sender: TObject);
begin
modulDB.FrxrepSuratList.ShowReport();
end;

end.
