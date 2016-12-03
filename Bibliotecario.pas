unit Bibliotecario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1id: TFDAutoIncField;
    FDQuery1nome: TWideMemoField;
    FDQuery1username: TWideMemoField;
    FDQuery1senha: TWideMemoField;
    FDQuery1cargo: TWideMemoField;
    FDQuery1data_reg: TWideMemoField;
    FDQuery1data_ua: TWideMemoField;
    procedure FormShow(Sender: TObject);
    procedure FDQuery1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQuery1usernameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQuery1senhaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FDQuery1nomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDQuery1nome.AsString, 1, 50);
end;

procedure TForm6.FDQuery1senhaGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDQuery1senha.AsString, 1, 50);
end;

procedure TForm6.FDQuery1usernameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDQuery1username.AsString, 1, 50);
end;

procedure TForm6.FormShow(Sender: TObject);
begin
ShowMessage('ID do b:' + EditandoB);
if EditandoB <> 'false' then
begin
FDQuery1.SQL.Text := 'select * from usuarios where id = :idzinha';
FDQuery1.ParamByName('idzinha').AsString := EditandoB;
FDQuery1.Open;
end
end;

end.
