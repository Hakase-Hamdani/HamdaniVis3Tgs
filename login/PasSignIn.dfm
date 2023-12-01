object frSignIn: TfrSignIn
  Left = 800
  Top = 157
  Width = 332
  Height = 463
  Caption = 'Sign In'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 112
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object edtUsername: TEdit
    Left = 72
    Top = 112
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 144
    Width = 297
    Height = 97
    Caption = 'Password'
    TabOrder = 1
    object edtPswd1: TEdit
      Left = 16
      Top = 24
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object edtPswd2: TEdit
      Left = 16
      Top = 56
      Width = 265
      Height = 21
      TabOrder = 1
    end
  end
  object btnSignIn: TButton
    Left = 112
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Sign In'
    TabOrder = 2
    OnClick = btnSignInClick
  end
end
