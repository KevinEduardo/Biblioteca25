unit Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Global, Bibliotecario,
  Vcl.Menus, NovoUsuario, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1id: TFDAutoIncField;
    FDTable1nome: TWideMemoField;
    FDTable1username: TWideMemoField;
    FDTable1senha: TWideMemoField;
    FDTable1cargo: TWideMemoField;
    FDTable1data_reg: TWideMemoField;
    FDTable1data_ua: TWideMemoField;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PopupMenu1: TPopupMenu;
    Deletar1: TMenuItem;
    Novo1: TMenuItem;
    Timer1: TTimer;
    procedure FDTable1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1usernameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FDTable1cargoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Novo1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

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

procedure TForm5.Button1Click(Sender: TObject);
begin
EditandoB:= 'false';
with TForm6.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
EditandoB:= DBGrid1.SelectedIndex.ToString();
with TForm6.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm5.Deletar1Click(Sender: TObject);
begin
if DBGrid1.DataSource.DataSet.FieldByName('cargo').AsString = '4' then
begin
Mensagem('Não é possível deletar o desenvolvedor! :S');
end else
DBGrid1.DataSource.DataSet.Delete;
end;

procedure TForm5.FDTable1cargoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if FDTable1cargo.AsString = '1' then
Text := 'Bibliotecário (a)';
if FDTable1cargo.AsString = '2' then
Text := 'Coordenação';
if FDTable1cargo.AsString = '4' then
Text := 'Desenvolvedor';
end;

procedure TForm5.FDTable1nomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable1nome.AsString, 1, 50);
end;

procedure TForm5.FDTable1usernameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable1username.AsString, 1, 50);
end;

procedure TForm5.Novo1Click(Sender: TObject);
begin
with TForm8.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
FDTable1.Refresh();
end;

end.
