program ConvRegiao;

uses
  Forms,
  UConvRegiao in 'UConvRegiao.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
