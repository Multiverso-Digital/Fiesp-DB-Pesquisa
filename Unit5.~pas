unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, QuickRpt, DBTables, ExtCtrls;

type
  TForm5 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Tcad: TTable;
    Taux: TTable;
    DataSource1: TDataSource;
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
  Form5: TForm5;

implementation

uses Unit3;

{$R *.DFM}

procedure TForm5.QRDBText6Print(sender: TObject; var Value: String);
var
monta1, monta2 : string;
begin


monta1 := copy(value,1,5);
monta2 := copy(value,6,3);

value := monta1+'-'+monta2;

end;

procedure TForm5.FormCreate(Sender: TObject);
var
I : integer;
M : string;
begin


Tcad.open;
Taux.open;



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
query1.active := true;  }


end;

procedure TForm5.QRDBText4Print(sender: TObject; var Value: String);
var
n1,n2,n3,n4,n5 : string;
begin

n1 := copy(value,1,2);
n2 := copy(value,3,3);
n3 := copy(value,6,3);
n4 := copy(value,9,4);
n5 := copy(value,13,2);

value := n1+'.'+n2+'.'+n3+'/'+n4+'-'+n5;





end;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Tcad.close;
Taux.close;
end;

end.
