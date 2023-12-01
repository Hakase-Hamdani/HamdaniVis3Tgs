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
    cbxTujuan: TComboBox;
    cbxJenis: TComboBox;
    DateBerlaku: TDateTimePicker;
    MmDetail: TMemo;
    cbxStatus: TComboBox;
    DBGrid1: TDBGrid;
    btnSimpan: TButton;
    Button2: TButton;
    edtIdUser: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSurat: TfrSurat;

implementation

uses
  modulDBPas, PasLogin, DB;

{$R *.dfm}

procedure TfrSurat.FormActivate(Sender: TObject);
var
  userid : string;
begin

//userid  := frLogin.Edit1.Text;
//edtIdUser.Text := userid;

//modulDB.ZqStafAdminView.SQL.Text := '';
//modulDB.ZqStafAdminView.SQL.Text := 'SELECT nama FROM penerbit WHERE id_user = :id_user';
//modulDB.ZqStafAdminView.ParamByName('id_user').AsString := userid;
//modulDB.ZqStafAdminView.Open;


//modulDB.ZqUsr.SQL.Text := '';
//modulDB.ZqUsr.SQL.Text := 'SELECT id FROM user WHERE id = :id';
//modulDB.ZqUsr.ParamByName('id').AsString := userid; //assign var 'nama' ke :nama di kueri
//modulDB.ZqUsr.Open;

//edtIdUser.Text := modulDB.ZqUsr.FIeldByName('id').AsString;
//cbxPenerbit.Text := modulDB.ZqStafAdminView.FieldByName('nama').AsString;

while not modulDB.ZqStafAdminView.Eof do //Penerbit
  begin
    cbxPenerbit.Items.AddObject(modulDB.ZqStafAdminView.FieldByName('nama').AsString, TObject(modulDB.ZqStafAdminView.FieldByName('id').AsInteger));
    modulDB.ZqStafAdminView.Next;
  end;
while not modulDB.ZqTujuanAdminView.Eof do //Tujuan
  begin
    cbxTujuan.Items.AddObject(modulDB.ZqTujuanAdminView.FieldByName('alamat').AsString, TObject(modulDB.ZqTujuanAdminView.FieldByName('id').AsInteger));
    modulDB.ZqTujuanAdminView.Next;
  end;
while not modulDB.ZqKlasAdminView.Eof do
  begin
    cbxJenis.Items.AddObject(modulDB.ZqKlasAdminView.FieldByName('nama').AsString, TObject(modulDB.ZqKlasAdminView.FieldByName('id').AsInteger));
    modulDB.ZqKlasAdminView.Next;
  end;
end;

procedure TfrSurat.btnSimpanClick(Sender: TObject);
var
  id_penerbit, id_tujuan, id_jenis : Integer;
begin
modulDB.ZqSuratMain.SQL.Clear;
modulDB.ZqSuratMain.SQL.Text := 'INSERT INTO surat (id_penerbit, id_tujuan, id_jenis, tgl_berlaku, detail, status) VALUES (:id_penerbit, :id_tujuan, :id_jenis, :tgl_berlaku, :detail, :status)';

id_penerbit := Integer(cbxPenerbit.Items.Objects[cbxPenerbit.ItemIndex]);
id_tujuan := Integer(cbxTujuan.Items.Objects[cbxTujuan.ItemIndex]);
id_jenis := Integer(cbxJenis.Items.Objects[cbxTujuan.ItemIndex]);


modulDB.ZqSuratMain.ParamByName('id_penerbit').Value := id_penerbit;
modulDB.ZqSuratMain.ParamByName('id_tujuan').Value := id_tujuan;
modulDB.ZqSuratMain.ParamByName('id_jenis').Value := id_jenis;

modulDB.ZqSuratMain.ParamByName('tgl_berlaku').Value := DateBerlaku.Date;
modulDB.ZqSuratMain.ParamByName('detail').Value := MmDetail.Text;
modulDB.ZqSuratMain.ParamByName('status').Value := cbxStatus.Text;

modulDB.ZqSuratView.ExecSQL;
modulDB.DsSurat.DataSet.Refresh;
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

edtIdUser.Text := modulDB.ZqSuratView.Fields[0].AsString;
MmDetail.Text := modulDB.ZqSuratView.Fields[5].AsString;
cbxStatus.Text := modulDB.ZqSuratView.Fields[6].AsString;
end;

procedure TfrSurat.Button2Click(Sender: TObject);
var
  id_penerbit, id_tujuan, id_jenis : Integer;
begin
modulDB.ZqSuratMain.SQL.Clear;
modulDB.ZqSuratMain.SQL.Text := 'UPDATE surat SET id_penerbit = :id_penerbit, id_tujuan = :id_tujuan, id_jenis = :id_jenis, detail = :detail, status = :status WHERE id = :id';

id_penerbit := Integer(cbxPenerbit.Items.Objects[cbxPenerbit.ItemIndex]);
id_tujuan := Integer(cbxTujuan.Items.Objects[cbxTujuan.ItemIndex]);
id_jenis := Integer(cbxJenis.Items.Objects[cbxTujuan.ItemIndex]);


modulDB.ZqSuratMain.ParamByName('id_penerbit').Value := id_penerbit;
modulDB.ZqSuratMain.ParamByName('id_tujuan').Value := id_tujuan;
modulDB.ZqSuratMain.ParamByName('id_jenis').Value := id_jenis;

modulDB.ZqSuratMain.ParamByName('tgl_berlaku').Value := DateBerlaku.Date;
modulDB.ZqSuratMain.ParamByName('detail').Value := MmDetail.Text;
modulDB.ZqSuratMain.ParamByName('status').Value := cbxStatus.Text;

modulDB.ZqSuratView.ExecSQL;
modulDB.DsSurat.DataSet.Refresh;
end;

procedure TfrSurat.FormCreate(Sender: TObject);
var
  userid : string;
begin
  userid  := frLogin.Edit1.Text;
  edtIdUser.Text := userid;
  modulDB.ZqUsr.SQL.Text := '';
  modulDB.ZqUsr.SQL.Text := 'SELECT id FROM user WHERE id = :id';
  modulDB.ZqUsr.ParamByName('id').AsString := userid; //assign var 'nama' ke :nama di kueri
  modulDB.ZqUsr.Open;
  edtIdUser.Text := modulDB.ZqUsr.FIeldByName('id').AsString;
end;

end.
