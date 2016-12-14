object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Biblioteca - Invent'#225'rio de Livros'
  ClientHeight = 346
  ClientWidth = 755
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 749
    Height = 340
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'titulo'
        Title.Caption = 'T'#237'tulo'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'autor'
        Title.Caption = 'Autor'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n_registro'
        Title.Caption = 'N'#186' Registro'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n_acervo'
        Title.Caption = 'N'#186' Acervo'
        Width = 117
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 240
    Top = 96
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'livros'
    TableName = 'livros'
    Left = 320
    Top = 120
    object FDTable1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1titulo: TWideMemoField
      FieldName = 'titulo'
      Origin = 'titulo'
      Required = True
      OnGetText = FDTable1tituloGetText
      BlobType = ftWideMemo
    end
    object FDTable1autor: TWideMemoField
      FieldName = 'autor'
      Origin = 'autor'
      Required = True
      OnGetText = FDTable1autorGetText
      BlobType = ftWideMemo
    end
    object FDTable1grafica: TWideMemoField
      FieldName = 'grafica'
      Origin = 'grafica'
      BlobType = ftWideMemo
    end
    object FDTable1ano_publicado: TWideMemoField
      FieldName = 'ano_publicado'
      Origin = 'ano_publicado'
      BlobType = ftWideMemo
    end
    object FDTable1n_acervo: TIntegerField
      FieldName = 'n_acervo'
      Origin = 'n_acervo'
      OnGetText = FDTable1n_acervoGetText
    end
    object FDTable1n_registro: TIntegerField
      FieldName = 'n_registro'
      Origin = 'n_registro'
      OnGetText = FDTable1n_registroGetText
    end
    object FDTable1data_reg: TWideMemoField
      FieldName = 'data_reg'
      Origin = 'data_reg'
      BlobType = ftWideMemo
    end
    object FDTable1n_paginas: TIntegerField
      FieldName = 'n_paginas'
      Origin = 'n_paginas'
    end
    object FDTable1classificacao: TWideMemoField
      FieldName = 'classificacao'
      Origin = 'classificacao'
      BlobType = ftWideMemo
    end
    object FDTable1origem: TWideMemoField
      FieldName = 'origem'
      Origin = 'origem'
      BlobType = ftWideMemo
    end
    object FDTable1categoria: TWideMemoField
      FieldName = 'categoria'
      Origin = 'categoria'
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 392
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 224
    object Novo1: TMenuItem
      Caption = 'Novo'
      Default = True
      OnClick = Novo1Click
    end
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      OnClick = Deletar1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 680
    Top = 272
  end
end
