unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, shellapi;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses UFIESPDB;

{$R *.DFM}

procedure TForm6.Image3Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Image2Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Image4Click(Sender: TObject);
var
monta : string;
begin

  monta := 'http://www.fiesp.org.br/pesquisa.nsf/formatcad';
   Try
   ShellExecute(handle, 'open', pchar(monta), nil, nil, SW_SHOW);
   except
   end;

end;

procedure TForm6.Image5Click(Sender: TObject);
var
monta : string;
begin

  monta := 'mailto:ccadastro@fiesp.org.br';
   Try
   ShellExecute(handle, 'open', pchar(monta), nil, nil, SW_SHOW);
   except
   end;

end;

procedure TForm6.FormShow(Sender: TObject);
begin
If Form1.fatorH > 0 then
   Begin

     Form6.Align := alnone;
     Form6.Windowstate := wsnormal;
     Form6.Width        := 808;
     Form6.Height       := 580;
     Form6.ClientHeight := 553;
     Form6.ClientWidth  := 800;

   end;

If Form1.fatorH  = 0 then
   Begin
     Form6.Align := alclient;
   end;



end;

end.
