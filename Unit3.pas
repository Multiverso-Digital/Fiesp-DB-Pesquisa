unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, GIFImage, ComCtrls, Db,
  DBTables;

type
  TForm3 = class(TForm)
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Image2: TImage;
    Image3: TImage;
    Image7: TImage;
    Image6: TImage;
    Image8: TImage;
    Image9: TImage;
    Image4: TImage;
    Image10: TImage;
    Image5: TImage;
    CheckBox1: TCheckBox;
    PB: TProgressBar;
    Edit1: TEdit;
    Taux: TTable;
    TauxRaz: TStringField;
    TauxCnpj: TStringField;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure PoenoBanco;
    procedure PoeImagem;
    { Private declarations }
  public
    CbCnpj, CbImprime : TstringList;
    { Public declarations }
  end;

var
  Form3: TForm3;
  parar : boolean;


implementation

uses Ufiespdb, Unit4, Uajuste;


{$R *.DFM}


Procedure Tform3.poenoBanco;
var
achou : integer;
begin

If Not Taux.findkey([form1.q1raz.value,form1.q1Cnpj.value]) then
achou :=  -1 else achou := 1;

If achou = -1 then
   Begin
   image10.visible := false;
   Taux.append;
   Tauxraz.value := form1.q1raz.value;
   Tauxcnpj.value := form1.q1Cnpj.value;
   Taux.post;
   end
   else
   begin
   image10.visible := true;
   Taux.delete;
   end;
end;


Procedure Tform3.poeimagem;
begin
If Not Taux.findkey([form1.q1raz.value,form1.q1Cnpj.value]) then
   Begin
   image10.visible := true;
   end
   else
   begin
   image10.visible := false;
   end;
end;



procedure TForm3.SpeedButton1Click(Sender: TObject);
begin

form1.q1.first;
Edit1.text := Form1.q1nex.value+'/'+Form1.q1cex.value;
poeimagem;

end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
form1.q1.last;
Edit1.text := Form1.q1nex.value+'/'+Form1.q1cex.value;
poeimagem;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
form1.q1.next;
Edit1.text := Form1.q1nex.value+'/'+Form1.q1cex.value;
poeimagem;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
form1.q1.prior;
Edit1.text := Form1.q1nex.value+'/'+Form1.q1cex.value;
poeimagem;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
close;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
parar := true;
close;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin

Poenobanco;

end;

procedure TForm3.Image5Click(Sender: TObject);
begin

If Taux.recordcount = 0 then
   begin
   showmessage('Nenhum registro selecionado para o Banco de Impressão');
   exit;
   end;





Form4 := Tform4.create(self);
Form4.showmodal;
form4.free;


end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin

Pb.visible := true;
Parar      := false;
panel1.visible := true;

If CheckBox1.checked then
   begin
    Form1.q1.disablecontrols;
    form1.q1.first;
    Pb.max := Form1.q1.recordcount;
    Pb.position := 0;
    While not Form1.q1.eof do
    Begin
     application.processmessages;
     If parar then
      begin
      parar := false;
      break;
      end;
      Pb.position := Form1.q1.recno;
      panel1.caption := 'Reg: '+inttostr(Form1.q1.recno);
      panel1.refresh;
      PoenoBanco;
      Form1.q1.next;
     end;
   Form1.q1.first;
   Form1.q1.enablecontrols;
   end
   else
   begin
   If Taux.active then Taux.active := false;
   Taux.emptytable;
   Taux.Open;
   poeimagem;
   Parar := true;
   end;
Pb.visible := false;
panel1.visible := false;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
If Form1.fatorH > 0 then
   Begin

     Form3.Align := alnone;
     Form3.Windowstate := wsnormal;
     Form3.Width        := 808;
     Form3.Height       := 580;
     Form3.ClientHeight := 553;
     Form3.ClientWidth  := 800;

   end;

If Form1.fatorH = 0 then
   Begin
     Form3.Align := alclient;
   end;


Edit1.text := Form1.q1nex.value+'/'+Form1.q1cex.value;



end;

procedure TForm3.FormCreate(Sender: TObject);
begin
//cbcnpj    := TstringList.create;
//cbimprime := TstringList.create;

Taux.emptytable;
Taux.open;

end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//cbcnpj.clear;
//cbcnpj.free;

//cbimprime.clear;
//cbimprime.free;

Taux.close;


end;

end.
