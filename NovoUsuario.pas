unit NovoUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm8 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    FDTable1id: TFDAutoIncField;
    FDTable1nome: TWideMemoField;
    FDTable1username: TWideMemoField;
    FDTable1senha: TWideMemoField;
    FDTable1cargo: TWideMemoField;
    FDTable1data_reg: TWideMemoField;
    FDTable1data_ua: TWideMemoField;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FDTable1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1usernameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1senhaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

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

procedure TForm8.FDTable1nomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1nome.AsString;
end;

procedure TForm8.FDTable1senhaGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1senha.AsString;
end;

procedure TForm8.FDTable1usernameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := FDTable1username.AsString;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
FDTable1.Append;
end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
var
podse : integer;
begin
podse := 0;
if Trim(DBEdit1.Text) = '' then
Mensagem('Nome não preenchido!')
else
podse := podse + 1;

if Trim(DBEdit2.Text) = '' then
Mensagem('Nome de Usuário não preenchido!')
else
podse := podse + 1;

if Trim(DBEdit3.Text) = '' then
Mensagem('Senha não preenchida!')
else
podse := podse + 1;

if DBRadioGroup1.ItemIndex = -1 then
Mensagem('Cargo não preenchido!')
else
podse := podse + 1;

if podse = 4 then
begin
FDTable1.FieldByName('data_reg').AsString := DateToStr(Now);
FDTable1.FieldByName('data_ua').AsString := '01/01/2001';
FDTable1.Post;
Mensagem('Criado com sucesso!');
Close;
end;
end;

end.
