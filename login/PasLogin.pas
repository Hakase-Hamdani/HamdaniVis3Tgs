unit PasLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask;

type
  TfrLogin = class(TForm)
    edtUserName: TEdit;
    MskPassword: TMaskEdit;
    btnLogin: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    btnSignIn: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSignInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;

implementation

uses
  modulDBPas, PasAdmin, pasRegUser, PasSignIn;

{$R *.dfm}

procedure TfrLogin.btnLoginClick(Sender: TObject);
var
  nama, password, level, querylogin, userid, sts: string;
begin
  //cukup jelas
  nama := edtUserName.Text;
  password := MskPassword.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM user WHERE user_name = :nama AND `password` = :password';

  //clear properti SQL dan tambahkan querylogin
  modulDB.ZqLogin.SQL.Clear;
  modulDB.ZqLogin.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  modulDB.ZqLogin.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  modulDB.ZqLogin.ParamByName('password').AsString := password; //cukup jelas
  modulDB.ZqLogin.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (modulDB.ZqLogin.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := modulDB.ZqLogin.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 'aktif') then //memeriksa sts
        begin
          level := modulDB.ZqLogin.FieldValues['level'];
          if (level = 'admin') then
            begin
              userid := modulDB.ZqLogin.FieldValues['id']; //set userid berdasarkan sintaks di kanan
//              Label1.Caption := userid;
              Edit1.Text := userid;
              ShowMessage('Selamat Datang, Admin');
              frAdmin.ShowModal;
            end
          else
            begin
              userid := modulDB.ZqLogin.FieldValues['id']; //set userid berdasarkan sintaks di kanan
              Edit1.Text := userid;
              ShowMessage('Selamat Datang, User');
              frRegUser.ShowModal;
            end;
        end
      else
        begin
          ShowMessage('Anda Sudah non-aktif');
        end;
    end
  else //jika tidak
    begin
          ShowMessage('Data salah!/Anda tidak terdaftar'); //jalankan ini
    end;
end;
//  modulDB.ZqLogin.Close;


procedure TfrLogin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

procedure TfrLogin.btnSignInClick(Sender: TObject);
begin
frSignIn.ShowModal;
end;

end.
