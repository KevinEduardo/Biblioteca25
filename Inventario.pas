unit Inventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Global, Vcl.Menus, NovoLivro, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1id: TFDAutoIncField;
    FDTable1titulo: TWideMemoField;
    FDTable1autor: TWideMemoField;
    FDTable1grafica: TWideMemoField;
    FDTable1ano_publicado: TWideMemoField;
    FDTable1n_acervo: TIntegerField;
    FDTable1n_registro: TIntegerField;
    FDTable1data_reg: TWideMemoField;
    FDTable1n_paginas: TIntegerField;
    FDTable1classificacao: TWideMemoField;
    FDTable1origem: TWideMemoField;
    FDTable1categoria: TWideMemoField;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Deletar1: TMenuItem;
    Timer1: TTimer;
    procedure FDTable1tituloGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1autorGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1n_acervoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1n_registroGetText(Sender: TField; var Text: string;
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
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Deletar1Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Delete;
end;

procedure TForm9.FDTable1autorGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1autor.AsString;
end;

procedure TForm9.FDTable1n_acervoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1n_acervo.AsString;
end;

procedure TForm9.FDTable1n_registroGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1n_registro.AsString;
end;

procedure TForm9.FDTable1tituloGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1titulo.AsString;
end;

procedure TForm9.Novo1Click(Sender: TObject);
begin
with TForm4.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
FDTable1.Refresh;
end;

end.
