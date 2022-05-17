unit Uconvexcelramotoparadox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Grids, DBGrids, ADODB, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    AT: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ATCodigo: TWideStringField;
    ATDescricao: TWideStringField;
    Tr: TTable;
    TrCodIni: TStringField;
    TrCodFim: TStringField;
    TrDescramo: TStringField;
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
Monta : string;
begin

at.active := true;

At.first;


Tr.open;

while not at.eof do
Begin
monta := '';

Tr.append;
Trcodini.asstring := copy(Atcodigo.asstring,1,5);
monta := trim(copy(Atcodigo.asstring,9,5));
If monta = '' then Trcodfim.asstring := copy(Atcodigo.asstring,1,5) else Trcodfim.asstring := monta;
Trdescramo.asstring := atdescricao.asstring;
Tr.post;
At.next;


end;


Tr.close;
at.active := false;


end;

end.
