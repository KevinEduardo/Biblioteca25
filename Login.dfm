object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Biblioteca - Login'
  ClientHeight = 260
  ClientWidth = 312
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 88
    Width = 84
    Height = 13
    Caption = 'Nome de usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 74
    Top = 136
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Button1: TButton
    Left = 90
    Top = 184
    Width = 121
    Height = 41
    Caption = 'Logar no Sistema'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 114
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 114
    Top = 133
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuarios;')
    Left = 56
    Top = 248
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 16
    Top = 248
  end
end
