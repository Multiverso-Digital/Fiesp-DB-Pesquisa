unit UGeraBusca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Tcad: TTable;
    Tbusca: TTable;
    TcadCnpj: TStringField;
    TcadRaz: TStringField;
    TcadEnd: TStringField;
    TcadCep: TStringField;
    TcadMcp: TStringField;
    TcadEst: TStringField;
    TcadFon: TStringField;
    TcadFax: TStringField;
    TcadRam: TStringField;
    TcadRam_cod: TStringField;
    TcadTam: TStringField;
    TcadNex: TStringField;
    TcadCex: TStringField;
    TcadEmail: TStringField;
    TcadHomepage: TStringField;
    TbuscaCnpj: TStringField;
    TbuscaTexto: TMemoField;
    Tprod: TTable;
    TprodCodprod: TStringField;
    TprodDescprod: TMemoField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
Monta, montax : string;
begin


Tbusca.emptytable;
Tprod.open;
Tcad.open;
Tbusca.open;
Tcad.first;
While not Tcad.eof do
Begin


Montax:= '';

If Not Tprod.findkey([TcadRam_cod.value]) then
   Begin
   showmessage('Não achou o produto'+TcadRam_cod.value);
   end
   else
   begin
   montaX := Tproddescprod.value;
   end;


monta := '';

monta := Tcadcnpj.value+'$'+Tcadraz.value+'$'+Tcadmcp.value+'$'+Tcadram.value+'$'+tcadtam.value+'$'+montax;

Tbusca.append;
Tbuscacnpj.value := Tcadcnpj.value;
Tbuscatexto.value := monta;
Try
Tbusca.Post;
except
showmessage('CNPJ: '+ Tcadcnpj.value);
end;
Tcad.next;




end;

Tcad.close;
Tbusca.close;
Tprod.close;
end;

end.
