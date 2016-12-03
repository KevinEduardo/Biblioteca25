unit NovoLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    FDConnection1: TFDConnection;
    SpeedButton1: TSpeedButton;
    FDQuery1: TFDQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    FDQuery1id: TFDAutoIncField;
    FDQuery1titulo: TWideMemoField;
    FDQuery1autor: TWideMemoField;
    FDQuery1grafica: TWideMemoField;
    FDQuery1ano_publicado: TWideMemoField;
    FDQuery1n_acervo: TIntegerField;
    FDQuery1n_registro: TIntegerField;
    FDQuery1data_reg: TWideMemoField;
    FDQuery1n_paginas: TIntegerField;
    FDQuery1classificacao: TWideMemoField;
    FDQuery1origem: TWideMemoField;
    FDQuery1categoria: TWideMemoField;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure Mensagem(Msg: String);
begin
  with CreateMessageDialog(Msg, mtInformation, [mbOk]) do
  try
    Caption := 'Biblioteca - Informação';
    ShowModal;
  finally
    Free
  end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
FDQuery1.Open;
FDQuery1.Append;
FDQuery1.FieldByName('titulo').AsString := Edit1.Text;
FDQuery1.FieldByName('autor').AsString := Edit2.Text;
FDQuery1.FieldByName('grafica').AsString := Edit3.Text;
FDQuery1.FieldByName('ano_publicado').AsString := Edit4.Text;
FDQuery1.FieldByName('n_acervo').AsString := Edit5.Text;
FDQuery1.FieldByName('n_registro').AsString := Edit6.Text;
FDQuery1.FieldByName('n_paginas').AsString := Edit7.Text;
FDQuery1.FieldByName('origem').AsString := RadioGroup1.ItemIndex.ToString;
FDQuery1.FieldByName('categoria').AsString := Edit8.Text;
FDQuery1.FieldByName('classificacao').AsString := Edit9.Text;
FDQuery1.Post;
Mensagem('Registrado com sucessso!');
end;

end.
