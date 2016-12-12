object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Biblioteca - Novo Livro'
  ClientHeight = 366
  ClientWidth = 503
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 106
  TextHeight = 14
  object SpeedButton1: TSpeedButton
    Left = 168
    Top = 313
    Width = 167
    Height = 40
    Caption = 'Salvar'
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 33
    Top = 59
    Width = 35
    Height = 14
    Caption = 'T'#237'tulo:'
  end
  object Label2: TLabel
    Left = 33
    Top = 87
    Width = 35
    Height = 14
    Caption = 'Autor:'
  end
  object Label3: TLabel
    Left = 33
    Top = 115
    Width = 40
    Height = 14
    Caption = 'Gr'#225'fica:'
  end
  object Label4: TLabel
    Left = 235
    Top = 55
    Width = 104
    Height = 14
    Caption = 'Ano de Publica'#231#227'o:'
  end
  object Label5: TLabel
    Left = 232
    Top = 82
    Width = 107
    Height = 14
    Caption = 'N'#250'mero do Acervo:'
  end
  object Label6: TLabel
    Left = 226
    Top = 111
    Width = 113
    Height = 14
    Caption = 'N'#250'mero do Registro:'
  end
  object Label7: TLabel
    Left = 226
    Top = 139
    Width = 109
    Height = 14
    Caption = 'N'#250'mero de P'#225'ginas:'
  end
  object Label8: TLabel
    Left = 272
    Top = 192
    Width = 55
    Height = 14
    Caption = 'Categoria:'
  end
  object Label9: TLabel
    Left = 272
    Top = 236
    Width = 68
    Height = 14
    Caption = 'Classifica'#231#227'o:'
  end
  object Edit1: TEdit
    Left = 81
    Top = 56
    Width = 121
    Height = 22
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 81
    Top = 84
    Width = 121
    Height = 22
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 81
    Top = 112
    Width = 121
    Height = 22
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 345
    Top = 52
    Width = 121
    Height = 22
    MaxLength = 4
    NumbersOnly = True
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 345
    Top = 80
    Width = 121
    Height = 22
    NumbersOnly = True
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 345
    Top = 108
    Width = 121
    Height = 22
    NumbersOnly = True
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 345
    Top = 136
    Width = 121
    Height = 22
    NumbersOnly = True
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 33
    Top = 184
    Width = 185
    Height = 105
    Caption = 'Origem'
    Items.Strings = (
      'Doado'
      'Comprado'
      'Governo')
    TabOrder = 7
  end
  object Edit8: TEdit
    Left = 272
    Top = 212
    Width = 177
    Height = 22
    TabOrder = 8
  end
  object Edit9: TEdit
    Left = 272
    Top = 256
    Width = 177
    Height = 22
    TabOrder = 9
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Biblioteca_SQLite')
    Left = 392
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from livros')
    Left = 344
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1titulo: TWideMemoField
      FieldName = 'titulo'
      Origin = 'titulo'
      Required = True
      BlobType = ftWideMemo
    end
    object FDQuery1autor: TWideMemoField
      FieldName = 'autor'
      Origin = 'autor'
      Required = True
      BlobType = ftWideMemo
    end
    object FDQuery1grafica: TWideMemoField
      FieldName = 'grafica'
      Origin = 'grafica'
      BlobType = ftWideMemo
    end
    object FDQuery1ano_publicado: TWideMemoField
      FieldName = 'ano_publicado'
      Origin = 'ano_publicado'
      BlobType = ftWideMemo
    end
    object FDQuery1n_acervo: TIntegerField
      FieldName = 'n_acervo'
      Origin = 'n_acervo'
    end
    object FDQuery1n_registro: TIntegerField
      FieldName = 'n_registro'
      Origin = 'n_registro'
    end
    object FDQuery1data_reg: TWideMemoField
      FieldName = 'data_reg'
      Origin = 'data_reg'
      BlobType = ftWideMemo
    end
    object FDQuery1n_paginas: TIntegerField
      FieldName = 'n_paginas'
      Origin = 'n_paginas'
    end
    object FDQuery1classificacao: TWideMemoField
      FieldName = 'classificacao'
      Origin = 'classificacao'
      BlobType = ftWideMemo
    end
    object FDQuery1origem: TWideMemoField
      FieldName = 'origem'
      Origin = 'origem'
      BlobType = ftWideMemo
    end
    object FDQuery1categoria: TWideMemoField
      FieldName = 'categoria'
      Origin = 'categoria'
      BlobType = ftWideMemo
    end
  end
end
