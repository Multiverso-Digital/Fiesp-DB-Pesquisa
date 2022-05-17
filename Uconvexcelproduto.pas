unit Uconvexcelproduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    AT: TADOTable;
    DataSource1: TDataSource;
    Tr: TTable;
    ATCodigo: TWideStringField;
    ATDescricao: TWideStringField;
    TrCodprod: TStringField;
    TrDescprod: TMemoField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  temvalor : boolean;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
Monta, cod : string;
begin

at.active := true;
At.first;
Tr.open;

temvalor := false;
monta := '';

cod := Atcodigo.asstring;

while not at.eof do
Begin

If Atcodigo.asstring <> '' then
Begin

 If temvalor then
    begin
    Tr.append;
    Trcodprod.asstring := cod;
    Trdescprod.Value  := TrimRight(monta);
    Tr.post;
    temvalor := false;
    monta := '';
    cod := Atcodigo.asstring;
    monta := monta + atdescricao.asstring+' ';
    temvalor := true;
    end
    else
    begin
    monta := monta + atdescricao.asstring+ ' ';
    temvalor := true;
    end;
end
else
begin
monta := monta + atdescricao.asstring+ ' ';
temvalor := true;
end;

At.next;


end;



Tr.append;
Trcodprod.asstring := cod;
Trdescprod.Value  := TrimRight(monta);
Tr.post;


Tr.close;
at.active := false;


end;

end.
