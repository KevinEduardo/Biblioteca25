object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Biblioteca - Configura'#231#245'es'
  ClientHeight = 218
  ClientWidth = 450
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 444
    Height = 212
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 434
    ExplicitHeight = 202
    object TabSheet1: TTabSheet
      Caption = 'Usu'#225'rios'
      ExplicitWidth = 426
      ExplicitHeight = 173
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 436
        Height = 183
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'username'
            Title.Caption = 'Nome de Usu'#225'rio'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cargo'
            Title.Caption = 'Cargo'
            Width = 116
            Visible = True
          end>
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 156
    Top = 145
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'usuarios'
    TableName = 'usuarios'
    Left = 116
    Top = 153
    object FDTable1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1nome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      OnGetText = FDTable1nomeGetText
      BlobType = ftWideMemo
    end
    object FDTable1username: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      OnGetText = FDTable1usernameGetText
      BlobType = ftWideMemo
    end
    object FDTable1senha: TWideMemoField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      BlobType = ftWideMemo
    end
    object FDTable1cargo: TWideMemoField
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      OnGetText = FDTable1cargoGetText
      BlobType = ftWideMemo
    end
    object FDTable1data_reg: TWideMemoField
      FieldName = 'data_reg'
      Origin = 'data_reg'
      BlobType = ftWideMemo
    end
    object FDTable1data_ua: TWideMemoField
      FieldName = 'data_ua'
      Origin = 'data_ua'
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 212
    Top = 145
  end
  object PopupMenu1: TPopupMenu
    Left = 303
    Top = 140
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
    Left = 375
    Top = 140
  end
end
