unit PasAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrAdmin = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button9: TButton;
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAdmin: TfrAdmin;

implementation

uses
  PasAdminLapStaff, PasLogin, modulDBPas, PasUserAdmin;

{$R *.dfm}

procedure TfrAdmin.Button9Click(Sender: TObject);
begin
frAdminLapStaff.ShowModal;
end;

procedure TfrAdmin.FormCreate(Sender: TObject);
var
  userid, id: Integer;
begin
//  userid  := frLogin.Edit1.Text;
  modulDB.ZqAdmin.SQL.Add('SELECT * FROM user WHERE = :id');
  modulDB.ZqAdmin.ParamByName('id').AsInteger := id; //assign var 'nama' ke :nama di kueri

  
end;

procedure TfrAdmin.Button1Click(Sender: TObject);
begin
frUserAdmin.ShowModal;
end;

end.
