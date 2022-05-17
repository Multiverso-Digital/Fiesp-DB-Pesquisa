unit Uconsultaprod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    memo1: TRichEdit;
    TP: TTable;
    TPCodprod: TStringField;
    TPDescprod: TMemoField;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Lista : TstringList;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
Monta : string;
begin





end;

procedure TForm1.Button2Click(Sender: TObject);
var
I, J, achou, tama : integer;
palavra, monta : string;
begin


memo1.lines.clear;




For I:=0 to lista.count - 1 do
begin

  achou := pos(edit1.text, lista.strings[i]);
  tama  := length(lista.strings[i]);

 If achou > 0 then
    begin
    monta := lista.strings[i];
    For J:= achou to tama do
        Begin

         If (monta[J] = ' ') then
            Begin
            palavra := copy(monta,achou, J - achou);
            break;
            end;

         If (J = tama) then
            Begin
            palavra := copy(monta,achou, ((J - achou) + 1 ));
            break;
            end;




         end;
    If edit1.text = palavra then
    memo1.lines.add(lista.strings[i]);
    end;


end;




end;

procedure TForm1.FormCreate(Sender: TObject);
var
monta : string;
begin


Lista := TstringList.create;


memo1.lines.clear;

Tp.open;
TP.first;
While not TP.eof do
Begin

monta := TPcodprod.value +' '+TPdescprod.value;

Lista.add(monta);

Tp.next;



end;

Tp.close;


end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin


Lista.clear;
Lista.free;

end;

end.
