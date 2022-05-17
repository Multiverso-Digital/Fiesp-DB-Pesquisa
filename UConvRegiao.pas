unit UConvRegiao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBTables, Db, Grids, DBGrids, ADODB;

type
  TForm1 = class(TForm)
    AD: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADNGA: TWideStringField;
    ADMCP: TWideStringField;
    ADEST: TWideStringField;
    TR: TTable;
    Button1: TButton;
    TRMCP: TStringField;
    TRRegiao: TStringField;
    Tcad: TTable;
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
    TcadRegadm: TStringField;
    TcadImprimir: TBooleanField;
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
monta, montax : string;
begin

Tr.emptytable;
ad.active := true;
TR.active := true;

ad.first;
While not ad.eof do
Begin
TR.append;
Trmcp.asstring := Admcp.asstring;

monta := adnga.asstring;

montaX := stringreplace(monta, 'REGIAO ADMINISTRATIVA', 'REG. ADM.',[rfReplaceAll, rfIgnoreCase]);
monta  := stringreplace(montaX, 'REGIAO METROPOLITANA', 'REG. METROP.',[rfReplaceAll, rfIgnoreCase]);



Trregiao.asstring := monta;


Tr.post;
Ad.next;
end;

ad.active := false;
TR.first;

Tcad.open;
Tcad.first;
While not Tcad.eof do
Begin

If Tr.findkey([Tcadmcp.value]) then
   begin
   Tcad.edit;
   Tcadregadm.value := Trregiao.value;
   Tcadimprimir.value := False;
   Tcad.post;
   end
   else
   begin
   showmessage('N�o achou : '+ Tcadmcp.value);
   end;

Tcad.next;

end;

Tr.active := false;
Tcad.close;



end;

end.
