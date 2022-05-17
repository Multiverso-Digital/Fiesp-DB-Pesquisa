unit UEtiqPima6182;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, QuickRpt, Qrctrls, DBTables, ExtCtrls;

type
  TFpima6182 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    Taux: TTable;
    TauxRaz: TStringField;
    TauxCnpj: TStringField;
    DataSource1: TDataSource;
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
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpima6182: TFpima6182;

implementation

uses UFIESPDB;

{$R *.DFM}





procedure TFpima6182.QRDBText4Print(sender: TObject; var Value: String);
begin
value := value + '-'+Tcadest.value;
end;

procedure TFpima6182.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Tcad.close;
Taux.close;
end;

procedure TFpima6182.FormCreate(Sender: TObject);
begin
Taux.open;
Tcad.open;
end;

procedure TFpima6182.QRDBText6Print(sender: TObject; var Value: String);

var
monta1, monta2 : string;
begin







monta1 := copy(value,1,5);
monta2 := copy(value,6,3);
value := monta1+'-'+monta2;
end;

end.
