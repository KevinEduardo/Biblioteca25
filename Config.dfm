object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Biblioteca - Configura'#231#245'es'
  ClientHeight = 239
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 387
    Height = 239
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 450
    ExplicitHeight = 322
    object TabSheet1: TTabSheet
      Caption = 'Bibliotec'#225'rio (a)'
      ExplicitWidth = 281
      ExplicitHeight = 164
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 366
        Height = 150
        DataSource = DataSource1
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'username'
            Title.Caption = 'Nome de Usu'#225'rio'
            Width = 155
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 3
        Top = 159
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 93
        Top = 159
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Categorias de Livros'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 164
    end
    object TabSheet3: TTabSheet
      Caption = 'Classifica'#231#227'o de Livros'
      ImageIndex = 2
      ExplicitWidth = 281
      ExplicitHeight = 164
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 260
    Top = 185
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'usuarios'
    TableName = 'usuarios'
    Left = 308
    Top = 185
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
    Left = 220
    Top = 185
  end
end
