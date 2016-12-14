unit Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, NovaRetirada, NovoLivro, Config, NovoAluno,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, EditarRetirada, Global, Inventario, Alunos;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDConnection1: TFDConnection;
    FDTable1id: TFDAutoIncField;
    FDTable1aluno: TWideMemoField;
    FDTable1usuario: TWideMemoField;
    FDTable1livro: TWideMemoField;
    FDTable1data: TWideMemoField;
    FDTable1datadev: TWideMemoField;
    FDQuery1: TFDQuery;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Deletar1: TMenuItem;
    Atualizar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FDTable1alunoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1livroGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1datadevGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDTable1dataGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams) ; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Atualizar1Click(Sender: TObject);
begin
FDTable1.Refresh();
DBGrid1.Refresh();
end;

procedure TForm2.CreateParams(var Params: TCreateParams) ;
begin
inherited;
Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
Params.WndParent := GetDesktopWindow;
end;

procedure TForm2.Deletar1Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Delete();
end;

procedure TForm2.Editar1Click(Sender: TObject);
begin
EditandoR := DBGrid1.DataSource.DataSet.FieldByName('id').Value;
//ShowMessage('ID DO SELECIONADO: ' + EditandoR.ToString);
with TForm7.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.FDTable1alunoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
FDQuery1.SQL.Text := 'SELECT nome FROM alunos WHERE id = :Idzin';
FDQuery1.ParamByName('Idzin').AsString := FDTable1aluno.AsString;
FDQuery1.Open();
Text := FDQuery1.FieldByName('nome').AsString;
FDQuery1.Close();
end;

procedure TForm2.FDTable1datadevGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable1datadev.AsString, 1, 50);
end;

procedure TForm2.FDTable1dataGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(FDTable1data.AsString, 1, 50);
end;

procedure TForm2.FDTable1livroGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
FDQuery1.SQL.Text := 'SELECT titulo FROM livros WHERE id = :Idzin';
FDQuery1.ParamByName('Idzin').AsString := FDTable1livro.AsString;
FDQuery1.Open();
Text := FDQuery1.FieldByName('titulo').AsString;
FDQuery1.Close();
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
FDManager.ResourceOptions.SilentMode := True;
if UserCargo = '1' then
SpeedButton6.Enabled := False;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
with TForm3.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
with TFormNAluno.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
with TForm4.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
with TForm9.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
with TForm10.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
with TForm5.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
FDTable1.Refresh();
end;

end.
