object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Bibliotec'#225'rios'
  ClientHeight = 245
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 14
  object Label1: TLabel
    Left = 40
    Top = 48
    Width = 35
    Height = 14
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 40
    Top = 68
    Width = 35
    Height = 14
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 35
    Height = 14
    Caption = 'Label1'
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 48
    Width = 121
    Height = 22
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 76
    Width = 121
    Height = 22
    DataField = 'username'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 112
    Width = 121
    Height = 22
    DataField = 'senha'
    DataSource = DataSource1
    PasswordChar = '*'
    TabOrder = 2
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 328
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 328
    Top = 184
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 192
    Top = 176
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery1nome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      OnGetText = FDQuery1nomeGetText
      BlobType = ftWideMemo
    end
    object FDQuery1username: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      OnGetText = FDQuery1usernameGetText
      BlobType = ftWideMemo
    end
    object FDQuery1senha: TWideMemoField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      OnGetText = FDQuery1senhaGetText
      BlobType = ftWideMemo
    end
    object FDQuery1cargo: TWideMemoField
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      BlobType = ftWideMemo
    end
    object FDQuery1data_reg: TWideMemoField
      FieldName = 'data_reg'
      Origin = 'data_reg'
      BlobType = ftWideMemo
    end
    object FDQuery1data_ua: TWideMemoField
      FieldName = 'data_ua'
      Origin = 'data_ua'
      BlobType = ftWideMemo
    end
  end
end
