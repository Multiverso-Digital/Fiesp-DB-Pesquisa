unit UAtualiza1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, shellapi;

type
  TFAtualiza1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualiza1: TFAtualiza1;

implementation

uses URelfiesp, UFIESPDB;

{$R *.DFM}

procedure TFAtualiza1.Image4Click(Sender: TObject);
begin
close;
end;

procedure TFAtualiza1.Image2Click(Sender: TObject);
begin
close;
end;

procedure TFAtualiza1.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFAtualiza1.Image3Click(Sender: TObject);
begin

FrelFiesp  := TFrelFiesp.create(self);
FrelFiesp.quickrep1.preview;
FrelFiesp.free;


end;

procedure TFAtualiza1.FormShow(Sender: TObject);
begin
If Form1.fatorH > 0 then
   Begin

    Fatualiza1.Align := alnone;
     Fatualiza1.Windowstate := wsnormal;
     Fatualiza1.Width        := 808;
     Fatualiza1.Height       := 580;

     Fatualiza1.ClientHeight := 553;
     Fatualiza1.ClientWidth  := 800;



   end;

If Form1.fatorH = 0 then
   Begin
     Fatualiza1.Align := alclient;
   end;

end;

procedure TFAtualiza1.Image6Click(Sender: TObject);
var
monta : string;
begin

  monta := 'http://www.fiesp.org.br/pesquisa.nsf/formatcad';
   Try
   ShellExecute(handle, 'open', pchar(monta), nil, nil, SW_SHOW);
   except
   end;

end;

end.
