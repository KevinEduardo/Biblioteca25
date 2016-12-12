unit EditarRetirada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Global, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDQuery1id: TFDAutoIncField;
    FDQuery1aluno: TWideMemoField;
    FDQuery1usuario: TWideMemoField;
    FDQuery1livro: TWideMemoField;
    FDQuery1data: TWideMemoField;
    FDQuery1datadev: TWideMemoField;
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit2: TEdit;
    FDTable1: TFDTable;
    FDTable2: TFDTable;
    FDTable1id: TFDAutoIncField;
    FDTable1nome: TWideMemoField;
    FDTable1turma: TWideMemoField;
    FDTable1turno: TWideMemoField;
    FDTable1telefone: TWideMemoField;
    FDTable1data: TWideMemoField;
    FDTable2id: TFDAutoIncField;
    FDTable2titulo: TWideMemoField;
    FDTable2autor: TWideMemoField;
    FDTable2grafica: TWideMemoField;
    FDTable2ano_publicado: TWideMemoField;
    FDTable2n_acervo: TIntegerField;
    FDTable2n_registro: TIntegerField;
    FDTable2data_reg: TWideMemoField;
    FDTable2n_paginas: TIntegerField;
    FDTable2classificacao: TWideMemoField;
    FDTable2origem: TWideMemoField;
    FDTable2categoria: TWideMemoField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IDAluno: TDBEdit;
    IDLivro: TDBEdit;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FDTable1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable2tituloGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  Initz : Boolean;

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

Procedure filterr(Dataset: TDataSet; const FieldName, SearchTerm: string);
begin
  Assert(Assigned(Dataset), 'No dataset is assigned');

  if SearchTerm = '' then
    Dataset.Filtered := False
  else
  begin
    Dataset.Filter := FieldName + ' LIKE ' + QuotedStr('%' + SearchTerm + '%');
    Dataset.Filtered := True;
  end;
end;
Procedure filterexa(Dataset: TDataSet; const FieldName, SearchTerm: string);
begin
  Assert(Assigned(Dataset), 'No dataset is assigned');

  if SearchTerm = '' then
    Dataset.Filtered := False
  else
  begin
    Dataset.Filter := FieldName + ' = ' + SearchTerm;
    Dataset.Filtered := True;
  end;
end;

procedure ChangeDeTodos(Editzinho: TEdit; Tablezinha: TFDTable; DBL: TDBLookupComboBox);
begin
filterr(Tablezinha,DBL.ListField,Editzinho.Text);
if Editzinho.Text <> '' then
  DBL.DropDown
else
  DBL.CloseUp(True);
Editzinho.SetFocus;
end;

procedure TForm7.DBLookupComboBox1Click(Sender: TObject);
begin
Edit1.Text := DBLookupComboBox1.Text;
end;

procedure TForm7.DBLookupComboBox2Click(Sender: TObject);
begin
Edit2.Text := DBLookupComboBox2.Text;
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
if (Initz = False) then
ChangeDeTodos(Edit1,FDTable1,DBLookupComboBox1);
end;

procedure TForm7.Edit2Change(Sender: TObject);
begin
if (Initz = False) then
ChangeDeTodos(Edit2,FDTable2,DBLookupComboBox2);
end;

procedure TForm7.FDTable1nomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable1nome.AsString, 1, 50);
end;

procedure TForm7.FDTable2tituloGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable2titulo.AsString, 1, 50);
end;

procedure TForm7.FormActivate(Sender: TObject);
var
EVA: String;
EVL: String;
begin
Initz := True;
FDQuery1.SQL.Text := 'SELECT * FROM retiradas WHERE id = :Idzin';
FDQuery1.ParamByName('Idzin').AsString := IntToStr(EditandoR);
FDQuery1.Open();
EVA := FDQuery1.FieldByName('aluno').AsString;
EVL := FDQuery1.FieldByName('livro').AsString;
//ShowMessage('ID DO AL: ' + FDQuery1.FieldByName('aluno').AsString);
DateTimePicker1.Date := StrToDate(FDQuery1.FieldByName('datadev').AsString);
DateTimePicker2.Date := StrToDate(FDQuery1.FieldByName('data').AsString);
filterexa(FDTable1,'id', EVA);
FDTable1.First;
Edit1.Text := FDTable1nome.AsString;
filterexa(FDTable2,'id', EVL);
FDTable2.First;
Edit2.Text := FDTable2titulo.AsString;
Initz := false;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
var
podse : integer;
begin
podse := 0;
if Trim(Edit1.Text) = '' then
Mensagem('Nome do Aluno não preenchido!')
else
podse := podse + 1;

if Trim(Edit2.Text) = '' then
Mensagem('Nome do Livro não preenchido!')
else
podse := podse + 1;

if podse = 2 then
begin
FDQuery1.SQL.Text := 'SELECT * FROM retiradas WHERE id = :Idzin';
FDQuery1.ParamByName('Idzin').AsString := IntToStr(EditandoR);
FDQuery1.Open;
FDQuery1.Edit;
FDQuery1.FieldByName('aluno').AsString := IDAluno.Text;
FDQuery1.FieldByName('usuario').AsString := UserLogado;
FDQuery1.FieldByName('livro').AsString := IDLivro.Text;
FDQuery1.FieldByName('data').AsString := DateToStr(DateTimePicker2.Date);
FDQuery1.FieldByName('datadev').AsString := DateToStr(DateTimePicker1.Date);
FDQuery1.Post;
Mensagem('Editado com sucessso!');
Close;
end;
end;

end.
