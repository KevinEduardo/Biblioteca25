object Form10: TForm10
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Biblioteca - Alunos'
  ClientHeight = 383
  ClientWidth = 581
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
    Width = 575
    Height = 377
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        ReadOnly = True
        Title.Caption = 'Nome'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'turma'
        ReadOnly = True
        Title.Caption = 'Turma'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'turno'
        ReadOnly = True
        Title.Caption = 'Turno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        ReadOnly = True
        Title.Caption = 'Telefone'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        ReadOnly = True
        Title.Caption = 'Data de Registro'
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 432
    Top = 280
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'alunos'
    TableName = 'alunos'
    Left = 312
    Top = 288
    object FDTable1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1nome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      OnGetText = FDTable1nomeGetText
      BlobType = ftWideMemo
    end
    object FDTable1turma: TWideMemoField
      FieldName = 'turma'
      Origin = 'turma'
      Required = True
      OnGetText = FDTable1turmaGetText
      BlobType = ftWideMemo
    end
    object FDTable1turno: TWideMemoField
      FieldName = 'turno'
      Origin = 'turno'
      Required = True
      OnGetText = FDTable1turnoGetText
      BlobType = ftWideMemo
    end
    object FDTable1telefone: TWideMemoField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      OnGetText = FDTable1telefoneGetText
      BlobType = ftWideMemo
    end
    object FDTable1data: TWideMemoField
      FieldName = 'data'
      Origin = 'data'
      OnGetText = FDTable1dataGetText
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 480
    Top = 224
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 528
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 232
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
end
