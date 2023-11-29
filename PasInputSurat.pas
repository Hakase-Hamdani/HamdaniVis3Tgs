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
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSurat: TfrSurat;

implementation

uses
  modulDBPas, PasLogin;

{$R *.dfm}

end.
