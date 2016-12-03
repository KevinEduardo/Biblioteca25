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
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Global, Bibliotecario;

type
  TForm5 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
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
    Button1: TButton;
    Button3: TButton;
    procedure FDTable1nomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1usernameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

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

end.
