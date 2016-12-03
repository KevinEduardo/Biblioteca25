unit Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, NovaRetirada, NovoLivro, Config;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
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

procedure TForm2.CreateParams(var Params: TCreateParams) ;
begin
inherited;
Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
Params.WndParent := GetDesktopWindow;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
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

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
with TForm4.Create(nil) do
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

end.
