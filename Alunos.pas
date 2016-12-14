unit Alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Menus, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Global, NovoAluno;

type
  TForm10 = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    FDTable1id: TFDAutoIncField;
    FDTable1nome: TWideMemoField;
    FDTable1turma: TWideMemoField;
    FDTable1turno: TWideMemoField;
    FDTable1telefone: TWideMemoField;
    FDTable1data: TWideMemoField;
    Novo1: TMenuItem;
    Deletar1: TMenuItem;
    procedure FDTable1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1turmaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1turnoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1telefoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1dataGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Novo1Click(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Deletar1Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Delete;
end;

procedure TForm10.FDTable1dataGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1data.AsString;
end;

procedure TForm10.FDTable1nomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1nome.AsString;
end;

procedure TForm10.FDTable1telefoneGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1telefone.AsString;
end;

procedure TForm10.FDTable1turmaGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1turma.AsString;
end;

procedure TForm10.FDTable1turnoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1turno.AsString;
if Text = '0' then
Text := 'Manhã';
if Text = '1' then
Text := 'Tarde';
if Text = '2' then
Text := 'Noite';
end;

procedure TForm10.Novo1Click(Sender: TObject);
begin
with TFormNAluno.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm10.Timer1Timer(Sender: TObject);
begin
FDTable1.Refresh;
end;

end.
