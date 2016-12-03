program Biblioteca25;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form1},
  Sistema in 'Sistema.pas' {Form2},
  NovaRetirada in 'NovaRetirada.pas' {Form3},
  Global in 'Global.pas',
  NovoLivro in 'NovoLivro.pas' {Form4},
  NovoAluno in 'NovoAluno.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
