object modulDB: TmodulDB
  Left = 206
  Top = 59
  Width = 734
  Height = 571
  Caption = 'modulDB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 432
    Width = 320
    Height = 88
    DataSource = DsLogin
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 144
    Top = 8
    Width = 185
    Height = 105
    Caption = 'login'
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 136
    Width = 233
    Height = 129
    Caption = 'Admin'
    TabOrder = 2
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 280
    Width = 233
    Height = 137
    Caption = 'User Admin'
    TabOrder = 3
  end
  object GroupBox4: TGroupBox
    Left = 344
    Top = 8
    Width = 329
    Height = 129
    Caption = 'Staf Admin'
    TabOrder = 4
  end
  object GroupBox5: TGroupBox
    Left = 280
    Top = 144
    Width = 185
    Height = 129
    Caption = 'Divisi Admin'
    TabOrder = 5
  end
  object GroupBox6: TGroupBox
    Left = 488
    Top = 144
    Width = 185
    Height = 121
    Caption = 'Klasifikasi Admin'
    TabOrder = 6
  end
  object GroupBox7: TGroupBox
    Left = 280
    Top = 288
    Width = 185
    Height = 121
    Caption = 'Tujuan Admin'
    TabOrder = 7
  end
  object GroupBox9: TGroupBox
    Left = 488
    Top = 288
    Width = 185
    Height = 121
    Caption = 'SuratMain'
    TabOrder = 8
  end
  object GroupBox8: TGroupBox
    Left = 376
    Top = 416
    Width = 185
    Height = 105
    Caption = 'Surat List'
    TabOrder = 9
  end
  object Zconnection: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 3306
    Database = '2110010302visual3tugas'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\TASem5\libmysql.' +
      'dll'
    Left = 24
    Top = 8
  end
  object ZqTest: TZQuery
    Connection = Zconnection
    SQL.Strings = (
      
        'SELECT p.nama AS penerbit_nama, p.NIP, p.jabatan, d.nama_divisi,' +
        ' d.kode_divisi, t.alamat, t.`dinas-orang`, k.nama AS klasifikasi' +
        '_nama, k.nomor, s.tgl, s.detail'
      'FROM surat s'
      'JOIN penerbit p ON s.id_penerbit = p.id'
      'JOIN tujuan t ON s.id_tujuan = t.id'
      'JOIN klasifikasi k ON s.id_jenis = k.id'
      'JOIN divisi d ON p.id_divisi = d.id;')
    Params = <>
    Left = 88
    Top = 8
  end
  object DsTest: TDataSource
    DataSet = ZqTest
    Left = 24
    Top = 64
  end
  object DsLogin: TDataSource
    DataSet = ZqLogin
    Left = 248
    Top = 32
  end
  object ZqLogin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 176
    Top = 32
  end
  object ZqAdmin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM penerbit')
    Params = <>
    Left = 48
    Top = 152
  end
  object DsAdmin: TDataSource
    DataSet = ZqAdmin
    Left = 128
    Top = 152
  end
  object FrxdbAdmin: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsLapStaff
    BCDToCurrency = False
    Left = 48
    Top = 208
  end
  object FrxrepAdminUser: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45222.492986412000000000
    ReportOptions.LastChange = 45222.492986412000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 128
    Top = 208
    Datasets = <
      item
        DataSet = FrxdbAdmin
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 238.110390000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DAFTAR STAFF DAN USER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'USER NAME')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS USER')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 200.315090000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LEVEL USER')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 272.126160000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIP')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JABATAN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 589.606680000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DIVISI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = FrxdbAdmin
        DataSetName = 'frxDBDataset1'
        RowCount = 15
        object Memo8: TfrxMemoView
          Left = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'user_name'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."user_name"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'user_status'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."user_status"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 200.315090000000000000
          Width = 71.811070000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'user_level'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."user_level"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 272.126160000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'penerbit_nama'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_nama"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 377.953000000000000000
          Width = 117.165430000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'penerbit_NIP'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_NIP"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'penerbit_jabatan'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_jabatan"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 589.606680000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'nama_divisi'
          DataSet = FrxdbAdmin
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_divisi"]')
          ParentFont = False
        end
      end
    end
  end
  object ZqLapStaff: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '    u.user_name,'
      '    u.status AS user_status,'
      '    u.level AS user_level,'
      #9' p.nama AS penerbit_nama,'
      '    p.NIP AS penerbit_NIP,'
      '    p.jabatan AS penerbit_jabatan,'
      '    d.nama_divisi,'
      '    d.kode_divisi'
      'FROM'
      '    penerbit p'
      'JOIN divisi d ON p.id_divisi = d.id'
      'JOIN user u ON p.id_user = u.id;')
    Params = <>
    Left = 200
    Top = 152
  end
  object DsLapStaff: TDataSource
    DataSet = ZqLapStaff
    Left = 200
    Top = 208
  end
  object ZqUserAdmin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 40
    Top = 296
  end
  object DsUserAdmin: TDataSource
    DataSet = ZqUserAdminView
    Left = 112
    Top = 296
  end
  object ZqUserAdminView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 56
    Top = 360
  end
  object ZqStafAdmin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 400
    Top = 24
  end
  object ZqStafAdminView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM penerbit')
    Params = <>
    Left = 400
    Top = 80
  end
  object DsStafAdminView: TDataSource
    DataSet = ZqStafAdminView
    Left = 560
    Top = 64
  end
  object ZqDivStaf: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM divisi')
    Params = <>
    Left = 472
    Top = 56
  end
  object ZqDivAdmin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM divisi')
    Params = <>
    Left = 296
    Top = 160
  end
  object ZqDivAdminView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM divisi')
    Params = <>
    Left = 296
    Top = 216
  end
  object DsDivAdmin: TDataSource
    DataSet = ZqDivAdminView
    Left = 360
    Top = 176
  end
  object ZqKlasAdmin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM klasifikasi')
    Params = <>
    Left = 520
    Top = 160
  end
  object DsKlasAdmin: TDataSource
    DataSet = ZqKlasAdminView
    Left = 584
    Top = 176
  end
  object ZqKlasAdminView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM klasifikasi')
    Params = <>
    Left = 520
    Top = 216
  end
  object ZqTujuanAdmin: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM tujuan')
    Params = <>
    Left = 296
    Top = 296
  end
  object DsTujuanAdmin: TDataSource
    DataSet = ZqTujuanAdminView
    Left = 360
    Top = 312
  end
  object ZqTujuanAdminView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM tujuan')
    Params = <>
    Left = 296
    Top = 352
  end
  object ZqSuratMain: TZQuery
    Connection = Zconnection
    SQL.Strings = (
      'SELECT * FROM surat')
    Params = <>
    Left = 504
    Top = 296
  end
  object DsSurat: TDataSource
    DataSet = ZqSuratView
    Left = 568
    Top = 312
  end
  object ZqSuratView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM surat')
    Params = <>
    Left = 504
    Top = 352
  end
  object ZqSuratList: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '    p.nama AS penerbit_nama,'
      '    p.NIP AS penerbit_NIP,'
      '    p.jabatan AS penerbit_jabatan,'
      '    d.nama_divisi,'
      '    t.alamat AS tujuan_alamat,'
      '    t.orang AS tujuan_orang,'
      '    t.institusi AS tujuan_institusi,'
      '    k.nama AS klasifikasi_nama,'
      '    k.nomor AS klasifikasi_nomor,'
      '    s.tgl_berlaku,'
      '    s.detail'
      'FROM surat s'
      'JOIN penerbit p ON s.id_penerbit = p.id'
      'JOIN divisi d ON p.id_divisi = d.id'
      'JOIN tujuan t ON s.id_tujuan = t.id'
      'JOIN klasifikasi k ON s.id_jenis = k.id;')
    Params = <>
    Left = 384
    Top = 448
  end
  object DsSuratList: TDataSource
    DataSet = ZqSuratList
    Left = 456
    Top = 448
  end
  object ZqUsr: TZQuery
    Connection = Zconnection
    SQL.Strings = (
      'SELECT user_name FROM user')
    Params = <>
    Left = 80
    Top = 152
  end
end
