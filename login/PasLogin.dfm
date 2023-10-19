object frLogin: TfrLogin
  Left = 1031
  Top = 194
  Width = 335
  Height = 461
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 120
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label3: TLabel
    Left = 14
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblId: TLabel
    Left = 16
    Top = 376
    Width = 3
    Height = 13
    Transparent = True
    Visible = False
  end
  object edtUserName: TEdit
    Left = 73
    Top = 116
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object MskPassword: TMaskEdit
    Left = 73
    Top = 148
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 122
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
