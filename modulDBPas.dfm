object modulDB: TmodulDB
  Left = 178
  Top = 180
  Width = 397
  Height = 480
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
  object Ztest: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 48
    Top = 56
  end
  object ZqTest: TZQuery
    Params = <>
    Left = 128
    Top = 56
  end
  object DsTest: TDataSource
    Left = 48
    Top = 128
  end
end
