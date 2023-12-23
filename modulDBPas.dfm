object modulDB: TmodulDB
  Left = 256
  Top = 414
  Width = 1055
  Height = 629
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
    Top = 496
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
    Height = 201
    Caption = 'Admin'
    TabOrder = 2
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 344
    Width = 233
    Height = 137
    Caption = 'User Admin'
    TabOrder = 3
  end
  object GroupBox4: TGroupBox
    Left = 344
    Top = 8
    Width = 457
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
    Width = 401
    Height = 121
    Caption = 'SuratMain'
    TabOrder = 8
  end
  object GroupBox8: TGroupBox
    Left = 376
    Top = 416
    Width = 281
    Height = 105
    Caption = 'Surat List'
    TabOrder = 9
  end
  object GroupBox10: TGroupBox
    Left = 816
    Top = 16
    Width = 201
    Height = 249
    Caption = 'Misc Join'
    TabOrder = 10
  end
  object GroupBox11: TGroupBox
    Left = 672
    Top = 424
    Width = 185
    Height = 105
    Caption = 'Sign In'
    TabOrder = 11
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
    Top = 144
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
          Left = 124.724490000000000000
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
          Left = 457.323130000000000000
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
          Left = 536.693260000000000000
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
          Left = 219.212740000000000000
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
          Left = 325.039580000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = FrxdbAdmin
        DataSetName = 'frxDBDataset1'
        RowCount = 15
        object Memo8: TfrxMemoView
          Left = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
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
          Left = 457.323130000000000000
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
          Left = 536.693260000000000000
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
          Left = 219.212740000000000000
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
          Left = 325.039580000000000000
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
      '    p.NIP AS penerbit_NIP'
      'FROM'
      '    penerbit p'
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
    Top = 360
  end
  object DsUserAdmin: TDataSource
    DataSet = ZqUserAdminView
    Left = 112
    Top = 360
  end
  object ZqUserAdminView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 56
    Top = 424
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
    Left = 472
    Top = 32
  end
  object ZqDivStaf: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM divisi')
    Params = <>
    Left = 656
    Top = 24
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
    Top = 296
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
    Left = 512
    Top = 304
  end
  object DsSurat: TDataSource
    DataSet = ZqSuratView
    Left = 568
    Top = 304
  end
  object ZqSuratView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM surat')
    Params = <>
    Left = 520
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
      '    s.tgl_berlaku'
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
    Left = 88
    Top = 144
  end
  object FrxrepSurat: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.672071354200000000
    ReportOptions.LastChange = 45261.672071354200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 832
    Top = 304
    Datasets = <
      item
        DataSet = FrxdbSurat
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
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SURAT RESMI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 937.323440000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = FrxdbSurat
        DataSetName = 'frxDBDataset1'
        RowCount = 1
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Kepada:')
        end
        object Memo3: TfrxMemoView
          Left = 45.354360000000000000
          Top = 120.944960000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxDBDataset1."tujuan_orang"]')
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 166.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Di:')
        end
        object Memo5: TfrxMemoView
          Left = 45.354360000000000000
          Top = 185.196970000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tujuan_institusi'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tujuan_institusi"]')
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Perihal Surat:')
        end
        object Memo7: TfrxMemoView
          Left = 45.354360000000000000
          Top = 22.677180000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'klasifikasi_nama'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."klasifikasi_nama"]')
        end
        object Memo8: TfrxMemoView
          Left = 45.354360000000000000
          Top = 207.874150000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tujuan_alamat'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tujuan_alamat"]')
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Berlaku Sejak:')
        end
        object Memo10: TfrxMemoView
          Left = 45.354360000000000000
          Top = 64.252010000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_berlaku'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_berlaku"]')
        end
        object Memo14: TfrxMemoView
          Left = 400.630180000000000000
          Top = 86.929190000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'penerbit_jabatan'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_jabatan"]')
        end
        object Memo15: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Dari:')
        end
        object Memo16: TfrxMemoView
          Left = 400.630180000000000000
          Top = 22.677180000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'penerbit_nama'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_nama"]')
        end
        object Memo18: TfrxMemoView
          Left = 366.614410000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NIP:')
        end
        object Memo19: TfrxMemoView
          Left = 400.630180000000000000
          Top = 64.252010000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'penerbit_nama'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_nama"]')
        end
        object Memo20: TfrxMemoView
          Left = 45.354360000000000000
          Top = 143.622140000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tujuan_jabatan'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tujuan_jabatan"]')
        end
        object Memo11: TfrxMemoView
          Left = 41.574830000000000000
          Top = 264.567100000000000000
          Width = 612.283860000000000000
          Height = 491.338900000000000000
          ShowHint = False
          DataField = 'detail'
          DataSet = FrxdbSurat
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."detail"]')
        end
      end
    end
  end
  object FrxdbSurat: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsSuratCetak
    BCDToCurrency = False
    Left = 776
    Top = 312
  end
  object ZqSuratCetak: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '    surat.tgl_berlaku,'
      '    surat.detail,'
      '    surat.status AS surat_status,'
      '    tujuan.alamat AS tujuan_alamat,'
      '    tujuan.orang AS tujuan_orang,'
      '    tujuan.jabatan AS tujuan_jabatan,'
      '    tujuan.institusi AS tujuan_institusi,'
      '    klasifikasi.nama AS klasifikasi_nama,'
      '    klasifikasi.nomor AS klasifikasi_nomor,'
      '    penerbit.nama AS penerbit_nama,'
      '    penerbit.NIP AS penerbit_NIP,'
      '    penerbit.jabatan AS penerbit_jabatan,'
      '    divisi.nama_divisi'
      'FROM'
      '    surat'
      'JOIN'
      '    tujuan ON surat.id_tujuan = tujuan.id'
      'JOIN'
      '    klasifikasi ON surat.id_jenis = klasifikasi.id'
      'JOIN'
      '    penerbit ON surat.id_penerbit = penerbit.id'
      'JOIN'
      '    divisi ON penerbit.id_divisi = divisi.id;')
    Params = <>
    Left = 656
    Top = 304
  end
  object DsSuratCetak: TDataSource
    DataSet = ZqSuratCetak
    Left = 728
    Top = 296
  end
  object FrxdbSuratList: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsSuratList
    BCDToCurrency = False
    Left = 528
    Top = 448
  end
  object FrxrepSuratList: TfrxReport
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
    Left = 608
    Top = 448
    Datasets = <
      item
        DataSet = FrxdbSuratList
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
          Left = 268.346630000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DAFTAR SURAT KELUAR')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NAMA PENERBIT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JABATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DIVISI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TUJUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'INSTITUSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL BERLAKU')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 60.472480000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = FrxdbSuratList
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Width = 113.385900000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 113.385900000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_NIP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 196.535560000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_jabatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 279.685220000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_divisi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 362.834880000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tujuan_alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 445.984540000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tujuan_institusi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 529.134200000000000000
          Width = 86.929190000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."klasifikasi_nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_berlaku"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FrxdbStafView: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsStafDivisi
    BCDToCurrency = False
    Left = 528
    Top = 16
  end
  object FrxrepDsStafView: TfrxReport
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
    Left = 584
    Top = 32
    Datasets = <
      item
        DataSet = FrxdbStafView
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
          Left = 272.126160000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DAFTAR STAFF')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Width = 158.740260000000000000
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
        object Memo2: TfrxMemoView
          Left = 170.078850000000000000
          Width = 124.724490000000000000
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
        object Memo3: TfrxMemoView
          Left = 294.803340000000000000
          Width = 109.606370000000000000
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
        object Memo4: TfrxMemoView
          Left = 612.283860000000000000
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
            'STATUS')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 404.409710000000000000
          Width = 109.606370000000000000
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
            'NAMA DIVISI')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 514.016080000000000000
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
            'KODE DIVISI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = FrxdbStafView
        DataSetName = 'frxDBDataset1'
        RowCount = 15
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Width = 158.740260000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'penerbit_nama'
          DataSet = FrxdbStafView
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
        object Memo6: TfrxMemoView
          Left = 170.078850000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'penerbit_NIP'
          DataSet = FrxdbStafView
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
        object Memo7: TfrxMemoView
          Left = 294.803340000000000000
          Width = 109.606370000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'penerbit_jabatan'
          DataSet = FrxdbStafView
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
        object Memo8: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'penerbit_status'
          DataSet = FrxdbStafView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit_status"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 404.409710000000000000
          Width = 109.606370000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'nama_divisi'
          DataSet = FrxdbStafView
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
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kode_divisi'
          DataSet = FrxdbStafView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kode_divisi"]')
          ParentFont = False
        end
      end
    end
  end
  object ZqStaffNama: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT nama FROM penerbit')
    Params = <>
    Left = 56
    Top = 280
  end
  object ZqIdUserPenerbit: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '    surat.id AS surat_id,'
      '    surat.id_penerbit,'
      '    penerbit.id AS penerbit_id,'
      '    user.id AS user_id'
      'FROM'
      '    surat'
      'JOIN'
      '    penerbit ON surat.id_penerbit = penerbit.id'
      'JOIN'
      '    user ON penerbit.id_user = user.id;')
    Params = <>
    Left = 840
    Top = 56
  end
  object ZqSignIn: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 704
    Top = 456
  end
  object ZqStafDivisiView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '    penerbit.nama AS penerbit_nama,'
      '    penerbit.NIP AS penerbit_NIP,'
      '    penerbit.jabatan AS penerbit_jabatan,'
      '    penerbit.status AS penerbit_status,'
      '    divisi.nama_divisi,'
      '    divisi.kode_divisi'
      'FROM'
      '    penerbit'
      'JOIN'
      '    divisi ON penerbit.id_divisi = divisi.id;')
    Params = <>
    Left = 480
    Top = 88
  end
  object DsStafDivisi: TDataSource
    DataSet = ZqStafDivisiView
    Left = 536
    Top = 80
  end
  object FrxdbTujuanView: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsTujuanAdmin
    BCDToCurrency = False
    Left = 360
    Top = 344
  end
  object FrxrepTujuanView: TfrxReport
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
    Left = 424
    Top = 320
    Datasets = <
      item
        DataSet = FrxdbTujuanView
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
          Left = 317.480520000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DAFTAR ALAMAT')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 52.913420000000000000
          Width = 158.740260000000000000
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
            'ALAMAT')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 211.653680000000000000
          Width = 124.724490000000000000
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
            'ORANG')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 336.378170000000000000
          Width = 109.606370000000000000
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
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Width = 109.606370000000000000
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
            'INSTITUSI')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 563.149970000000000000
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
            'STATUS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 75.590600000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = FrxdbTujuanView
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 52.913420000000000000
          Width = 158.740260000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = FrxdbTujuanView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 211.653680000000000000
          Width = 124.724490000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'orang'
          DataSet = FrxdbTujuanView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."orang"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 336.378170000000000000
          Width = 109.606370000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'jabatan'
          DataSet = FrxdbTujuanView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jabatan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 445.984540000000000000
          Width = 109.606370000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'institusi'
          DataSet = FrxdbTujuanView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."institusi"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 563.149970000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = FrxdbTujuanView
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object DsDivStafView: TDataSource
    DataSet = ZqStafDivisiView
    Left = 712
    Top = 32
  end
  object DsUserStafView: TDataSource
    DataSet = ZqStafAdminSetView
    Left = 712
    Top = 88
  end
  object ZqStafAdminSetView: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT id, user_name, status, level FROM user')
    Params = <>
    Left = 656
    Top = 80
  end
  object DsSuratAlamatAktifOnly: TDataSource
    DataSet = ZqSuratAlamatAktifOnly
    Left = 648
    Top = 352
  end
  object ZqSuratAlamatAktifOnly: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM tujuan WHERE `status`='#39'aktif'#39';')
    Params = <>
    Left = 584
    Top = 360
  end
end
