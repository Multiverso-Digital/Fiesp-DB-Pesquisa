unit UConvDbaseParadox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls;

type
  TForm1 = class(TForm)
    Te: TTable;
    TS: TTable;
    Button1: TButton;
    TSCnpj: TStringField;
    TSRaz: TStringField;
    TSEnd: TStringField;
    TSCep: TStringField;
    TSMcp: TStringField;
    TSEst: TStringField;
    TSFon: TStringField;
    TSFax: TStringField;
    TSRam: TStringField;
    TSRam_cod: TStringField;
    TSTam: TStringField;
    TSNex: TStringField;
    TSCex: TStringField;
    TSEmail: TStringField;
    TSHomepage: TStringField;
    TSRegadm: TStringField;
    TSImprimir: TBooleanField;
    TeCNPJ: TStringField;
    TeRAZ: TStringField;
    TeEND: TStringField;
    TeCEP: TStringField;
    TeMCP: TStringField;
    TeEST: TStringField;
    TeFON: TStringField;
    TeFAX: TStringField;
    TeRAM: TStringField;
    TeRAMO_COD: TStringField;
    TeTAM: TStringField;
    TeNEX: TStringField;
    TeCEX: TStringField;
    TeEMAIL: TStringField;
    TeHOMEPAGE: TStringField;
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
I : integer;
begin


Ts.open;
Te.open;

Te.first;
while not Te.eof do
Begin


If not Ts.findkey([Te.fields[0].value]) then
Begin
Ts.append;
For I:=0 to te.fields.count -1 do
Begin
 Ts.fields[i].value := Te.fields[i].value;
end;
Ts.post;

end;

Te.next;


end;

Te.close;
Ts.close;


end;

end.
