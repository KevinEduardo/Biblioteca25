program Biblioteca25;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form1},
  Sistema in 'Sistema.pas' {Form2},
  NovaRetirada in 'NovaRetirada.pas' {Form3},
  Global in 'Global.pas',
  NovoLivro in 'NovoLivro.pas' {Form4},
  NovoAluno in 'NovoAluno.pas' {FormNAluno},
  Bibliotecario in 'Bibliotecario.pas' {Form6},
  Config in 'Config.pas' {Form5},
  EditarRetirada in 'EditarRetirada.pas' {Form7},
  Vcl.Themes,
  Vcl.Styles,
  Inventario in 'Inventario.pas' {Form9},
  NovoUsuario in 'NovoUsuario.pas' {Form8},
  Alunos in 'Alunos.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFormNAluno, FormNAluno);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
