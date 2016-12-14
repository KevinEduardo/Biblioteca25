object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Biblioteca - Sistema'
  ClientHeight = 414
  ClientWidth = 614
  Color = clWhite
  Constraints.MaxWidth = 630
  Constraints.MinHeight = 449
  Constraints.MinWidth = 630
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 608
    Height = 351
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 600
      Height = 343
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
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
          FieldName = 'livro'
          Title.Alignment = taCenter
          Title.Caption = 'Livro'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'aluno'
          Title.Alignment = taCenter
          Title.Caption = 'Aluno'
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Title.Alignment = taCenter
          Title.Caption = 'Data de Retirada'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datadev'
          Title.Alignment = taCenter
          Title.Caption = 'Data de Devolu'#231#227'o'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 57
    Align = alTop
    Locked = True
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 7
      Top = 5
      Width = 113
      Height = 49
      Caption = 'Nova Retirada'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 126
      Top = 5
      Width = 113
      Height = 49
      Caption = 'Novo Aluno'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 245
      Top = 5
      Width = 113
      Height = 49
      Caption = 'Novo Livro'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 384
      Top = 5
      Width = 81
      Height = 49
      Caption = 'Invent'#225'rio'
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 471
      Top = 5
      Width = 81
      Height = 49
      Caption = 'Alunos'
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 558
      Top = 5
      Width = 54
      Height = 49
      Caption = 'Config'
      OnClick = SpeedButton6Click
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 459
    Top = 252
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'retiradas'
    TableName = 'retiradas'
    Left = 499
    Top = 148
    object FDTable1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1aluno: TWideMemoField
      FieldName = 'aluno'
      Origin = 'aluno'
      Required = True
      OnGetText = FDTable1alunoGetText
      BlobType = ftWideMemo
    end
    object FDTable1usuario: TWideMemoField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      BlobType = ftWideMemo
    end
    object FDTable1livro: TWideMemoField
      FieldName = 'livro'
      Origin = 'livro'
      OnGetText = FDTable1livroGetText
      BlobType = ftWideMemo
    end
    object FDTable1data: TWideMemoField
      FieldName = 'data'
      Origin = 'data'
      OnGetText = FDTable1dataGetText
      BlobType = ftWideMemo
    end
    object FDTable1datadev: TWideMemoField
      FieldName = 'datadev'
      Origin = 'datadev'
      OnGetText = FDTable1datadevGetText
      BlobType = ftWideMemo
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'ConnectionDef=Biblioteca_SQLite')
    Connected = True
    Left = 419
    Top = 132
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select nome from usuarios')
    Left = 331
    Top = 188
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 459
    Top = 308
  end
  object PopupMenu1: TPopupMenu
    Left = 323
    Top = 116
    object Editar1: TMenuItem
      Caption = 'Editar'
      Default = True
      OnClick = Editar1Click
    end
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      OnClick = Deletar1Click
    end
    object Atualizar1: TMenuItem
      Caption = 'Atualizar'
      OnClick = Atualizar1Click
    end
  end
end
