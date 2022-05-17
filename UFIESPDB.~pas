unit UFIESPDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, Buttons, StdCtrls, BmAlias, kbmMemTable, Db, DBTables,
  RxLookup, ComCtrls, DCPcrypt, Blowfish, registry, base64, MSystemInfo;

type
  TForm1 = class(TForm)
    Image1: TImage;
    EBusca: TEdit;
    ERazao: TEdit;
    EProduto: TEdit;
    Ecnpj: TEdit;
    CBPorte: TComboBox;
    CBRegiao: TComboBox;
    BmAlias1: TBmAlias;
    Tramo: TTable;
    q1: TQuery;
    DataSource1: TDataSource;
    q1Raz: TStringField;
    q1Cnpj: TStringField;
    q1Ram_cod: TStringField;
    q1End: TStringField;
    q1Cep: TStringField;
    q1Mcp: TStringField;
    q1Est: TStringField;
    q1Fon: TStringField;
    q1Fax: TStringField;
    q1Ram: TStringField;
    q1Tam: TStringField;
    q1Nex: TStringField;
    q1Cex: TStringField;
    q1Email: TStringField;
    q1Homepage: TStringField;
    RxRamo: TRxDBLookupCombo;
    DataSource2: TDataSource;
    Tmcp: TTable;
    DataSource3: TDataSource;
    RXMCP: TRxDBLookupCombo;
    TmcpMCP: TStringField;
    TmcpEst: TStringField;
    Tbusca: TTable;
    TbuscaCnpj: TStringField;
    TbuscaTexto: TMemoField;
    Rexato: TRadioButton;
    Rigual: TRadioButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Tprod: TTable;
    TprodCodprod: TStringField;
    TprodDescprod: TMemoField;
    TramoDescramo: TStringField;
    TramoCodIni: TStringField;
    TramoCodFim: TStringField;
    PB: TProgressBar;
    q1Regadm: TStringField;
    Tregiao: TTable;
    TregiaoMCP: TStringField;
    TregiaoRegiao: TStringField;
    q1Imprimir: TBooleanField;
    Crip: TDCP_blowfish;
    MSystemInfo1: TMSystemInfo;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Taux: TTable;
    TauxCnpj: TStringField;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image11Click(Sender: TObject);
  private
    procedure Lereg;
    procedure Pesquisa01;
//    procedure PesquisaIgual;
//    procedure PesquisaExato;
    procedure Pesquisa02;
    procedure Pesquisa03;
    procedure MontaLista;
    procedure Montaquery1;
    procedure PesquisaRazao;
    procedure PesquisaProduto;
    Procedure PesquisaCnpj;


    function Decripta(S1:string):string;
    function Cripta(S1:string):string;


    { Private declarations }
  public

  datacri : string;
  seriecri: string;
  senha   : string;
  reso    : integer;
  FatorH   : integer;
  FatorV   : integer;
  Msup, Minf, Mdir, Mesq : double;

    { Public declarations }
  end;

var
  Form1: TForm1;
  dire : string;
  Lista, ListaProd: TstringList;
  Achados, AchadosProd: TstringList;

implementation

uses Unit2, Uatualiza, Unit6;



{$R *.DFM}


function TForm1.cripta(S1:string):string;
var
  i,J: integer;
  Cipher: TDCP_blockcipher;
  s: string;
begin





  Cipher:= TDCP_blockcipher(crip);
  Cipher.InitStr('1');    // initialize the cipher with the key
  s:= S1;
  Cipher.EncryptCFB(s[1],s[1],Length(s));  // encrypt all of the strings
  try
  Result:= B64Encode(s);
  except
  Result := '';
  exit;
  end;        // Base64 encode the string to ensure all characters are printable
// Result := S;
  Cipher.Reset;         // we are using CFB chaining mode so we must reset after each block of encrypted/decrypts
  Cipher.Burn;
end;



function TForm1.Decripta(S1:string):string;
var
  i,j: integer;
  Cipher: TDCP_blockcipher;
  S    : string;
begin
  Cipher:= TDCP_blockcipher(crip);
  Cipher.InitStr('1');    // initialize the cipher with the key
 try
  s:= B64Decode(S1);
 except
  Result := '';
  exit;
 end;
           // decode the Base64 encoded string
 // s:= S1;
  Cipher.DecryptCFB(S[1],S[1],Length(S));  // decrypt all of the strings
  Result:= s;
  Cipher.Reset;         // we are using CFB chaining mode so we must reset after each block of encrypted/decrypts
  Cipher.Burn;
end;




function procura(s:string;oque:string):integer;
var
J : integer;
K : string;
begin

K := trimleft(oque);
oque := K;

result := 0;

 For J:= 1 to (length(s)-length(oque)+1) do
     begin
     IF copy(s,J,length(oque)) = oque then
        begin
        If   (J = 1) and ((copy(s,J+length(oque),1) = '$') or (copy(s,J+length(oque),1) = ' ')) then   result := J;
        If (J = (length(s)-length(oque)+1)) and ((copy(s,J-1,1) = '$') or (copy(s,J-1,1) = ' ')) then result := J;
        If ((copy(s,j-1,1) = '$') or (copy(s,j-1,1) = ' ')) and ((copy(s,J+length(oque),1) = '$') or (copy(s,J+length(oque),1) = ' ')) then result := J;
        end;
     end;


end;



Procedure Tform1.Lereg;
var
Regini : Tregistry;
datareg, vezes, senhax, monta : string;
begin


try
MSystemInfo1.Disk.Drive := 'C:';
MSystemInfo1.Disk.GetInfo;
except
end;


monta     := MSystemInfo1.Disk.SerialNumber;
seriecri  := stringreplace(monta,'.','',[rfReplaceAll, rfIgnoreCase]);
monta     := stringreplace(seriecri,'/','',[rfReplaceAll, rfIgnoreCase]);
seriecri  := stringreplace(monta,',','',[rfReplaceAll, rfIgnoreCase]);
monta     := stringreplace(seriecri,'\','',[rfReplaceAll, rfIgnoreCase]);
seriecri  := stringreplace(monta,' ','',[rfReplaceAll, rfIgnoreCase]);
monta     := stringreplace(seriecri,'=','',[rfReplaceAll, rfIgnoreCase]);
seriecri  := stringreplace(monta,'-','',[rfReplaceAll, rfIgnoreCase]);
monta     := stringreplace(seriecri,'_','',[rfReplaceAll, rfIgnoreCase]);

seriecri := monta;

try
Regini     := TreginiFile.create;;
Regini.RootKey := HKEY_LOCAL_MACHINE;
RegIni.Openkey('Software\FIESPDB', true);
datareg := regini.Readstring('Data');
senhax  := regini.Readstring('Network');

If datareg = '' then
   Begin
   RegIni.WriteString('Data', cripta(datetostr(date)));
   Regini.WriteString('Network',cripta(' '));
   datacri  := datetostr(date);
   senha    := ' ';
   end
   else
   begin
   datacri := decripta(datareg);
   senha   := decripta(senhax);
   end;
Regini.free;

except
end;





end;




Procedure Tform1.MontaLista;
begin


Tbusca.open;

Lista := TstringList.create;
Tbusca.first;
While not Tbusca.eof do
Begin


Lista.Add(Tbuscatexto.value);

Tbusca.next;

end;

Tbusca.close;


Tprod.open;
Listaprod := TstringList.create;
Tprod.first;
While not Tprod.eof do
Begin
Listaprod.add(Tprodcodprod.value+' '+Tproddescprod.value);
Tprod.next;
end;

Tprod.close;



end;






Procedure Tform1.Montaquery1;
var
M : string;
I : integer;
begin
If q1.active then q1.active := false;
panel1.caption := 'Aguarde...';
panel1.refresh;

q1.sql.clear;
q1.sql.add('SELECT Fiespdb.Raz, Fiespdb.Cnpj, Fiespdb.Ram_cod, Fiespdb."End", Fiespdb.Cep, Fiespdb.Mcp, Fiespdb.Est, Fiespdb.Fon, Fiespdb.Fax, Fiespdb.Ram, Fiespdb.Tam, Fiespdb.Nex, Fiespdb.Cex, Fiespdb.Email, Fiespdb.Homepage, Fiespdb.Regadm, Fiespdb.Imprimir');
q1.sql.add('FROM "FIESPDB.db" Fiespdb');
q1.sql.add('   INNER JOIN "Taux.DB" Taux');
q1.sql.add('   ON  (Taux.Cnpj = Fiespdb.Cnpj)');
q1.sql.add('ORDER BY Fiespdb.Raz, Fiespdb.Cnpj');




q1.active := true;
Pb.position := 0;
pb.visible := false;
panel1.caption := '';
panel1.visible := false;
end;








Procedure Tform1.Pesquisa01;
var
I, J, achou, tama : integer;
palavra, monta : string;
begin


If taux.active then Taux.active := false;
Taux.emptyTable;
Taux.open;

achados.clear;


Pb.max       := lista.count;
Pb.position  := 0;
pb.visible   := true;
panel1.visible := true;

For I:=0 to lista.count - 1 do
begin

  Pb.Position := I+1;
  panel1.refresh;
  panel1.caption := 'Reg: '+inttostr(I+1);

  If Rigual.checked then
  achou := pos(trim(ebusca.text), lista.strings[i]) else achou := procura(lista.strings[i], trim(ebusca.text));

 If achou > 0 then
    begin
    If Not Taux.findkey([copy(lista.strings[i],1,14)]) then
       begin

       Taux.append;
       Tauxcnpj.value := copy(lista.strings[i],1,14);
       Taux.post;
       end;
//    achados.add(copy(lista.strings[i],1,14));
    end;


end;


end;



{
Procedure Tform1.PesquisaExato;
var
I, achou, tama, tamabusca : integer;
monta : string;
begin


achados.clear;


For I:=0 to lista.count - 1 do
begin



   achou := procura(lista.strings[i],trim(ebusca.text));
   If achou > 0 then achados.add(copy(lista.strings[i],1,14));




end;
end;  }


Procedure Tform1.PesquisaProduto;
var
I, J, achou  : integer;
monta, montaX : string;
begin


Pb.max       := listaprod.count;
Pb.position  := 0;
pb.visible   := true;
panel1.visible := true;


For I:=0 to listaprod.count - 1 do
begin

  pb.position := I+1;
  panel1.Caption := 'Reg: '+inttostr(I+1);
  panel1.refresh;

  If Rigual.checked then
  achou := pos(trim(eproduto.text), listaprod.strings[i]) else achou := procura(listaprod.strings[i], trim(eproduto.text));

 If achou > 0 then
    begin
    If achadosprod.IndexOf (copy(listaprod.strings[i],1,5)) = -1 then
    achadosprod.add(copy(listaprod.strings[i],1,5));
    end;
end;
end;


Procedure Tform1.PesquisaCnpj;
var
I, J, achou  : integer;
monta, montaX : string;
begin


Pb.max       := lista.count;
Pb.position  := 0;
pb.visible   := true;
panel1.visible := true;


For I:=0 to lista.count - 1 do
begin

  pb.position := I+1;
  panel1.Caption := 'Reg: '+inttostr(I+1);
  panel1.refresh;

  If length(trimleft(ecnpj.text)) = 8 then
     Begin
     monta := copy(lista.strings[i],1,8);
     end
     else
     begin
     monta := copy(lista.strings[i],1,14);
     end;
    If monta = ecnpj.text then
    begin
    If achados.IndexOf(copy(lista.strings[i],1,14)) = -1 then
    achados.add(copy(lista.strings[i],1,14));
    end;
end;
end;



Procedure Tform1.PesquisaRazao;
var
I, J, achou  : integer;
monta, montaX : string;
begin


Pb.max       := lista.count;
Pb.position  := 0;
pb.visible   := true;
panel1.visible := true;


For I:=0 to lista.count - 1 do
begin

  Pb.position := I + 1;
  panel1.Caption := 'Reg: '+inttostr(I+1);
  panel1.refresh;


  monta := copy(lista.strings[i],16,60);



  for J:=1 to 60 do
  begin
    If monta[J] = '$' then
    begin
    montaX := copy(monta,1,J);
  //  showmessage(montax);
    break;
    end;
  end;

  If Rigual.checked then
  achou := pos(erazao.text, montax) else achou := procura(montax,erazao.text);

 If achou > 0 then
    begin
    If achados.IndexOf (copy(lista.strings[i],1,14)) = -1 then
    achados.add(copy(lista.strings[i],1,14));
    end;
end;
end;


Procedure Tform1.Pesquisa02;
var
I : integer;
M : string;
Begin





If (erazao.text = '') and (eproduto.text = '')  and (ecnpj.text = '') then exit;





If Ecnpj.text <> '' then
   begin
   If length(Ecnpj.text) <> Ecnpj.MaxLength then
      begin
      showmessage('Quantidade de dígitos do CNPJ difere');
      exit;
      end;
      erazao.Clear;
      eproduto.clear;
      end;




Achados.clear;
achadosprod.clear;

M := '''';

If Q1.active then Q1.active := false;
Q1.sql.clear;
Q1.sql.add('SELECT Cnpj, Raz, Fiespdb."End", Cep, Mcp, Est, Fon, Fax, Ram, Ram_cod, Tam, Nex, Cex, Email, Homepage,regadm,imprimir');
Q1.sql.add('FROM "FIESPDB.db" Fiespdb');
Q1.sql.add('WHERE');


If Erazao.text   <> '' then pesquisaRazao;
If eproduto.text <> '' then pesquisaProduto;
If eCnpj.text    <> '' then
   begin
   If (length(trimleft(ecnpj.text)) <> 8)  and
   (length(trimleft(ecnpj.text)) <> 14) then
   Begin
   showmessage('Quantidade de dígitos diferente de 8 ou 12');
   exit;
   end;
   pesquisaCNPJ;
   end;


For I:=0 to achados.count -1 do
Begin
Q1.sql.add('CNPJ = '+M+achados.strings[I]+M);
Q1.sql.add('OR');
end;

For I:=0 to achadosprod.count -1 do
Begin
Q1.sql.add('Ram_cod = '+M+achadosprod.strings[I]+M);
Q1.sql.add('OR');
end;

If (achados.count > 0) or (achadosprod.count > 0) then
   Begin
   Q1.sql.Delete(Q1.sql.count-1);
   end
   else
   Q1.sql.add('CNPJ = '+M+'00000000000000'+M);
   begin

   end;


Q1.sql.add('ORDER BY RAZ');

//Q1.RequestLive := true;

Q1.active := true;

Pb.visible := false;

panel1.visible := false;



Form2 := Tform2.create(self);
form2.showmodal;
form2.free;



end;


Procedure Tform1.Pesquisa03;
var
M : string;
Begin

Panel1.visible := true;
panel1.caption := 'Aguarde...';
panel1.refresh;

M := '''';

If Q1.active then Q1.active := false;
Q1.sql.clear;
Q1.sql.add('SELECT Cnpj, Raz, Fiespdb."End", Cep, Mcp, Est, Fon, Fax, Ram, Ram_cod, Tam, Nex, Cex, Email, Homepage, regadm, imprimir');
Q1.sql.add('FROM "FIESPDB.db" Fiespdb');
Q1.sql.add('WHERE');

If  Rxramo.displayvalue <> '' then
    Begin
    Q1.sql.add('(Ram_cod >= '+M+Tramocodini.value+M+') AND (Ram_cod <= '+M+Tramocodfim.value+M+')');
    Q1.sql.add('AND');
    end
    else
    begin
    end;
If  CBporte.text <> '<TODOS>' then
    begin
    Q1.sql.add('(TAM = '+M+uppercase(Cbporte.text)+M+')');
    Q1.sql.add('AND');
    end
    else
    begin
    end;

If  CBregiao.text <> '<TODAS REGIOES>' then
    begin
    Q1.sql.add('(regadm = '+M+Cbregiao.text+M+')');
    Q1.sql.add('AND');
    end
    else
    begin
    end;



If  RxMCP.displayvalue <> '' then
    Begin
    Q1.sql.add('(MCP = '+M+Tmcpmcp.value+M+')');
    Q1.sql.add('AND');
    end
    else
    begin
    end;

Q1.sql.delete(q1.sql.count -1);

Q1.sql.add('ORDER BY RAZ');


//Q1.RequestLive := true;

Q1.active := true;

//Q1.edit;


panel1.visible := false;
Pb.visible := false;

Form2 := Tform2.create(self);
Form2.showmodal;
Form2.free;




end;



procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
I : integer;
begin

Dire       := ExtractFileDir(ParamStr(0));


IF NOT BmAlias1.IsAlias('FIESP')    then
   Begin
   Bmalias1.Alias  := 'FIESP';
   Bmalias1.Driver := drvPARADOX;
   Bmalias1.Path   := dire+'\dados';
   I:= BmAlias1.Add;
   end;



LeReg;



montalista;

achados      := Tstringlist.create;
achadosprod  := Tstringlist.create;


Tmcp.open;
Tramo.open;
Tregiao.open;
Tregiao.first;

Cbregiao.items.clear;
cbregiao.Items.add('<TODAS REGIOES>');

while not Tregiao.eof do
Begin

If CBregiao.items.indexof(Tregiaoregiao.value) = -1 then
   begin
   CBregiao.items.add(Tregiaoregiao.value);
   end;

Tregiao.next;
end;

Tregiao.close;

Taux.emptyTable;
Taux.open;


end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin


If ebusca.text = '' then
   begin
   exit;
   end;



Pesquisa01;
Montaquery1;

Pb.visible := false;
form2 := Tform2.create(self);
form2.showmodal;
form2.free;

end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin

Ebusca.clear;
Erazao.clear;
Ecnpj.clear;
Eproduto.clear;

Rxramo.DisplayValue := '';
CBporte.text        := '<TODOS>';
CBregiao.text       := '<TODAS REGIOES>';
RXMCP.displayvalue  := '';
Ecnpj.Visible       := false;

If q1.active then q1.active := false;
q1.SQL.clear;


end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Pesquisa02;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin


Pesquisa03;



end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Lista.clear;
Lista.free;

Listaprod.clear;
Listaprod.free;

Achados.clear;
achados.free;

Achadosprod.clear;
achadosprod.free;

Tmcp.close;
Tramo.close;

if taux.active then Taux.close;


If q1.active then q1.active := false;


end;

procedure TForm1.Image9Click(Sender: TObject);
begin


Ecnpj.MaxLength := 8;
Ecnpj.visible := true;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin

Ecnpj.MaxLength := 14;
Ecnpj.visible := true;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin

Fatualiza := TFatualiza.create(self);
Fatualiza.showmodal;
Fatualiza.free;


end;

procedure TForm1.FormShow(Sender: TObject);
begin

Try
Msysteminfo1.Display.GetInfo;
reso := Msysteminfo1.Display.HorzRes;
fatorH := Reso - 800;
reso := Msysteminfo1.Display.VertRes;
fatorV := Reso - 600;
except

fatorH := 0;
FatorV := 0;
end;




If FatorH > 0 then
   Begin
     Form1.Align        := alnone;
     form1.repaint;
     Form1.Width        := 808;
     Form1.Height       := 580;
     Form1.ClientWidth  := 800;
     Form1.ClientHeight := 553;
   end;

If FatorH = 0 then
   Begin
     Form1.Align := alclient;
   end;

If FatorH < 0 then
   Begin
     Showmessage('Este programa só opera em resoluções igual ou superior a 800 x 600 pixeis');
     application.terminate;
   end;

end;

procedure TForm1.Image11Click(Sender: TObject);
begin

Form6 := Tform6.create(self);
form6.showmodal;
form6.free;

end;

end.
