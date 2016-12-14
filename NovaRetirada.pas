unit NovaRetirada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask, Global;

type
  TForm3 = class(TForm)
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1id: TFDAutoIncField;
    FDTable1nome: TWideMemoField;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit2: TEdit;
    FDTable2: TFDTable;
    DataSource2: TDataSource;
    FDTable2id: TFDAutoIncField;
    FDTable2titulo: TWideMemoField;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    FDQuery1: TFDQuery;
    IDAluno: TDBEdit;
    IDLivro: TDBEdit;
    procedure FDTable1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FDTable2tituloGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

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

procedure TForm3.DBLookupComboBox1Click(Sender: TObject);
begin
Edit1.Text := DBLookupComboBox1.Text;
end;

procedure TForm3.DBLookupComboBox2Click(Sender: TObject);
begin
Edit2.Text := DBLookupComboBox2.Text;
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

procedure TForm3.Edit1Change(Sender: TObject);
begin
ChangeDeTodos(Edit1,FDTable1,DBLookupComboBox1);
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
ChangeDeTodos(Edit2,FDTable2,DBLookupComboBox2);
end;

procedure TForm3.FDTable1nomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable1nome.AsString, 1, 50);
end;

procedure TForm3.FDTable2tituloGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable2titulo.AsString, 1, 50);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date := Now();
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
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
FDQuery1.Open;
FDQuery1.Append;
FDQuery1.FieldByName('aluno').AsString := IDAluno.Text;
FDQuery1.FieldByName('usuario').AsString := UserLogado;
FDQuery1.FieldByName('livro').AsString := IDLivro.Text;
FDQuery1.FieldByName('data').AsString := DateToStr(Now);
FDQuery1.FieldByName('datadev').AsString := DateToStr(DateTimePicker1.Date);
FDQuery1.Post;
Mensagem('Registrado com sucessso!');
Close;
end;

end;

end.
