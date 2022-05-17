unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, Placemnt, ComCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Esenha: TEdit;
    Image5: TImage;
    Label1: TLabel;
    Label2: TLabel;
    FormStorage1: TFormStorage;
    Animate1: TAnimate;
    Image6: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    procedure Verificasenha;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  erro : boolean;

implementation

uses UEtiqPima6181, Unit5, Unit3, UFIESPDB, UEtiqPima6182, Uajuste;

{$R *.DFM}


Procedure Tform4.Verificasenha;
var
Monta : string;
I, H, M : integer;
xave, resu : string;
begin

xave := 'FDEGRTSAWOPUYTVBCXSLKJHCXDR';

monta := form1.seriecri;

Resu := '';

for I:=1 to length(monta) do
begin
M := ord(monta[I]);
H := M + ord(xave[I]);
Resu := Resu+char(H);
end;


For I:=1 to length(resu) do
Begin

If not (resu[I] in ['A'..'Z', 'a'..'z', '0'..'9']) then
   begin
   resu[i] := xave[I];
   end;
end;

If Uppercase(resu) <> esenha.text then
   begin
   erro := true;
   end
   else
   begin
   erro := false;
   end;
end;


procedure TForm4.Image4Click(Sender: TObject);
begin
close;
end;

procedure TForm4.Image5Click(Sender: TObject);
begin
close;
end;

procedure TForm4.Image3Click(Sender: TObject);
var
monta : string;
begin


animate1.visible := true;
Image3.Enabled := false;



monta := uppercase(form1.seriecri);
If monta = '' then
    begin
    monta := 'D4SEFG23';
    form1.seriecri := 'D4SEFG23';
    end;

If Esenha.text = '' then
   Begin
   showmessage('Você deve ligar para a FIESP solicitando a autorização para a impressão'+#13#10+
               'Anote este código :'+monta+#13#10+
             'Informe o número acima ao atendente nos telefones'+#13#10+
             '(0xx11)3549-4226 e (0xx11)3549-4205');


   animate1.visible := false;
   Image3.Enabled := true;
   exit;
   end;



Verificasenha;



If erro then
   begin
   showmessage('Senha inválida');
   animate1.visible := false;
   Image3.Enabled := true;

   exit;
   end;



Fpima6181 := TFpima6181.create(self);
Fpima6181.quickrep1.preview;
Fpima6181.free;



animate1.visible := false;
Image3.Enabled := true;



end;

procedure TForm4.Image2Click(Sender: TObject);
var
monta : string;
begin


animate1.visible := true;
Image2.Enabled := false;



monta := uppercase(form1.seriecri);
If monta = '' then
    begin
    monta := 'D4SEFG23';
    form1.seriecri := 'D4SEFG23';
    end;

If Esenha.text = '' then
   Begin
   showmessage('Você deve ligar para a FIESP solicitando a autorização para a impressão'+#13#10+
               'Anote este código :'+monta+#13#10+
             'Informe o número acima ao atendente nos telefones'+#13#10+
             '(0xx11)3549-4226 e (0xx11)3549-4205');



   animate1.visible := false;
   Image2.Enabled := true;
   exit;
   end;



Verificasenha;



If erro then
   begin
   showmessage('Senha inválida');
   animate1.visible := false;
   Image2.Enabled := true;

   exit;
   end;







Form5 := Tform5.create(self);
form5.quickrep1.preview;
form5.free;


animate1.visible := false;
Image2.Enabled := true;




end;

procedure TForm4.FormShow(Sender: TObject);
begin


If Form1.fatorH > 0 then
   Begin

     Form4.Align := alnone;
     Form4.Windowstate := wsnormal;
     Form4.Width        := 808;
     Form4.Height       := 580;
     Form4.ClientHeight := 553;
     Form4.ClientWidth  := 800;

   end;

If Form1.fatorH = 0 then
   Begin
     Form4.Align := alclient;
   end;




label2.caption := inttostr(form3.Taux.recordcount)+' registros.';


end;

procedure TForm4.Image6Click(Sender: TObject);
var
monta : string;
begin


animate1.visible := true;
Image3.Enabled := false;



monta := uppercase(form1.seriecri);
If monta = '' then
    begin
    monta := 'D4SEFG23';
    form1.seriecri := 'D4SEFG23';
    end;

If Esenha.text = '' then
   Begin
   showmessage('Você deve ligar para a FIESP solicitando a autorização para a impressão'+#13#10+
               'Anote este código :'+monta+#13#10+
             'Informe o número acima ao atendente nos telefones'+#13#10+
             '(0xx11)3549-4226 e (0xx11)3549-4205');



   animate1.visible := false;
   Image3.Enabled := true;
   exit;
   end;



Verificasenha;



If erro then
   begin
   showmessage('Senha inválida');
   animate1.visible := false;
   Image3.Enabled := true;

   exit;
   end;





Fpima6182 := TFpima6182.create(self);
Fpima6182.quickrep1.preview;
Fpima6182.free;



animate1.visible := false;
Image3.Enabled := true;



end;

end.
