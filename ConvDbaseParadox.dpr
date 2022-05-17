program ConvDbaseParadox;

uses
  Forms,
  UConvDbaseParadox in 'UConvDbaseParadox.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
