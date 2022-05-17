unit UEtiqPima6181;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables;

type
  TFpima6181 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    Tcad: TTable;
    Taux: TTable;
    DataSource1: TDataSource;
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
    TauxRaz: TStringField;
    TauxCnpj: TStringField;
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public

  

    { Public declarations }
  end;

var
  Fpima6181: TFpima6181;

implementation

uses Unit3, UFIESPDB;



{$R *.DFM}

procedure TFpima6181.QRDBText6Print(sender: TObject; var Value: String);
var
monta1, monta2 : string;
begin


monta1 := copy(value,1,5);
monta2 := copy(value,6,3);

value := monta1+'-'+monta2;


end;

procedure TFpima6181.FormCreate(Sender: TObject);
var
I : integer;
M : string;
begin

Taux.open;
Tcad.open;



{
M := '''';

If query1.active then query1.active := false;

query1.sql.Add('WHERE');

For I:=0 to form3.cbcnpj.count - 1 do
Begin
query1.sql.Add('(CNPJ = '+M+form3.cbcnpj.strings[I]+M+')');
query1.sql.Add('OR');
end;
query1.SQL.Delete(query1.sql.count-1);
query1.SQL.add('ORDER BY RAZ');


query1.active := true;   }
end;




procedure TFpima6181.QRDBText4Print(sender: TObject; var Value: String);
begin

value := value + '-'+Tcadest.value;

end;

procedure TFpima6181.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Tcad.close;
Taux.close;
end;

end.
