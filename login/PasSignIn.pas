unit PasSignIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrSignIn = class(TForm)
    edtUsername: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    edtPswd1: TEdit;
    edtPswd2: TEdit;
    btnSignIn: TButton;
    procedure btnSignInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSignIn: TfrSignIn;

implementation

uses
  modulDBPas;

{$R *.dfm}

procedure TfrSignIn.btnSignInClick(Sender: TObject);
var
  cekRecord : Boolean;
begin
  modulDB.ZqSignIn.SQL.Text := '';
  modulDB.ZqSignIn.SQL.Text := 'SELECT * FROM user WHERE user_name = :user_name';
  modulDB.ZqSignIn.ParamByName('user_name').Value := edtUsername.Text;
  modulDB.ZqSignIn.Open;

  cekRecord := not modulDB.ZqSignIn.IsEmpty;

  if not cekRecord then
  begin
    if edtPswd1 = edtPswd2 then
    begin
      ShowMessage('Cek Ulang Password Anda!');
    end
    else
    begin
      modulDB.ZqSignIn.SQL.Text := '';
      modulDB.ZqSignIn.SQL.Text := 'INSERT INTO user (user_name, password, status, level) VALUES (:user_name, AES_ENCRYPT(:password, ''76jV60mkzU''), ''nonaktif'', ''user'')'; //gunakan fungsi AES_ENCRYPT dari MariaDB/MySQL 

      modulDB.ZqSignIn.ParamByName('user_name').Value := edtUsername.Text;
      modulDB.ZqSignIn.ParamByName('password').Value := edtPswd2.Text;
      modulDB.ZqSignIn.ExecSQL;
      ShowMessage('Setelah mendaftar, hubungi Admin untuk mendapatkan akses ke sistem!');
    end;
  end
  else
  begin
    ShowMessage('Username sudah ada!');
  end;
end;

end.
