unit URelfiesp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TFrelFiesp = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    qrl1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel41Print(sender: TObject; var Value: String);
    procedure QRLabel42Print(sender: TObject; var Value: String);
    procedure QRLabel44Print(sender: TObject; var Value: String);
    procedure QRLabel46Print(sender: TObject; var Value: String);
    procedure QRLabel48Print(sender: TObject; var Value: String);
    procedure QRLabel50Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrelFiesp: TFrelFiesp;

implementation

uses Uatualiza, UAtualiza1, UFIESPDB;

{$R *.DFM}

procedure TFrelFiesp.QRLabel5Print(sender: TObject; var Value: String);
begin
Value := Fatualiza.edit1.text;
end;

procedure TFrelFiesp.QRLabel6Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit2.text;
end;

procedure TFrelFiesp.QRLabel8Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit3.text;
end;

procedure TFrelFiesp.QRLabel10Print(sender: TObject; var Value: String);
begin

If Fatualiza.Rexpsim.checked then Value := 'Sim' else value := 'Não';


end;

procedure TFrelFiesp.QRLabel12Print(sender: TObject; var Value: String);
begin
If Fatualiza.RImpsim.checked then Value := 'Sim' else value := 'Não';

end;

procedure TFrelFiesp.QRLabel14Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit4.text;
end;

procedure TFrelFiesp.QRLabel16Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit5.text;

end;

procedure TFrelFiesp.QRLabel18Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit6.text;
end;

procedure TFrelFiesp.QRLabel20Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit7.text;
end;

procedure TFrelFiesp.QRLabel22Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit8.text;
end;

procedure TFrelFiesp.QRLabel24Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit9.text;
end;

procedure TFrelFiesp.QRLabel26Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit10.text;
end;

procedure TFrelFiesp.QRLabel28Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit11.text;
end;

procedure TFrelFiesp.QRLabel30Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit12.text;
end;

procedure TFrelFiesp.QRLabel32Print(sender: TObject; var Value: String);
begin
value := Fatualiza.edit13.text;
end;

procedure TFrelFiesp.QRLabel34Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit1.text;
end;

procedure TFrelFiesp.QRLabel36Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit2.text;
end;

procedure TFrelFiesp.QRLabel38Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit6.text;
end;

procedure TFrelFiesp.QRLabel40Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit3.text;
end;

procedure TFrelFiesp.QRLabel41Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit4.text;
end;

procedure TFrelFiesp.QRLabel42Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit5.text;
end;

procedure TFrelFiesp.QRLabel44Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit7.text;
end;

procedure TFrelFiesp.QRLabel46Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit9.text;
end;

procedure TFrelFiesp.QRLabel48Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit8.text;
end;

procedure TFrelFiesp.QRLabel50Print(sender: TObject; var Value: String);
begin
value := Fatualiza1.edit10.text;
end;

end.
