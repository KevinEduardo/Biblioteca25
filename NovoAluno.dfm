object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Biblioteca - Novo Aluno'
  ClientHeight = 170
  ClientWidth = 464
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 43
    Top = 43
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 40
    Top = 83
    Width = 34
    Height = 13
    Caption = 'Turma:'
  end
  object Label3: TLabel
    Left = 28
    Top = 127
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Edit1: TEdit
    Left = 80
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 247
    Top = 35
    Width = 185
    Height = 105
    Caption = 'Turno'
    Items.Strings = (
      'Manh'#227
      'Tarde'
      'Noite')
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 80
    Top = 124
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
