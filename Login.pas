unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, Sistema, Global;

type
  TForm1 = class(TForm)
    Button1: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

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

procedure TForm1.Button1Click(Sender: TObject);
var
user : Boolean;
senha : Boolean;
Form2: TForm2;
begin
// username
FDQuery1.IndexFieldNames := 'username';
FDQuery1.SetKey;
FDQuery1.FieldByName('username').AsString := Edit1.Text;
if FDQuery1.GotoKey then
begin
  user := True;
end else
  user := False;
// senha
FDQuery1.IndexFieldNames := 'senha';
FDQuery1.SetKey;
FDQuery1.FieldByName('senha').AsString := Edit2.Text;
if FDQuery1.GotoKey then
begin
  senha := true;
end else
  senha := false;
// verifica senha e user
if (user = true) And (senha = true) then
begin
  UserLogado := Edit1.Text;
  UserCargo := FDQuery1.FieldByName('cargo').AsString;
  Form1.Hide;
  FDQuery1.Free;
  with TForm2.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end else
  Mensagem('Login incorreto');
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
     Edit2.SetFocus;
   end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then begin
     Button1.Click;
   end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
