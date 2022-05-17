program Consultaprod;

uses
  Forms,
  Uconsultaprod in 'Uconsultaprod.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
