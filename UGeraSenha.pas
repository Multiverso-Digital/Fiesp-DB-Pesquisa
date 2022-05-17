unit UGeraSenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MSystemInfo;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MSystemInfo1: TMSystemInfo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  M : integer;
implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
Monta : string;
I, H : integer;
xave, resu : string;
begin

xave := 'FDEGRTSAWOPUYTVBCXSLKJHCXDR';


Edit2.Clear;


If edit1.text = '' then
   begin
   showmessage('Número do usuário ausente');
   exit;
   end;


monta := edit1.text;

Resu := '';

for I:=1 to length(monta) do
begin
M := ord(monta[I]);
H := M + ord(xave[I]);
Resu := Resu+char(H);
end;


For I:=1 to length(resu) do
Begin

If not (resu[I] in ['A'..'Z', 'a'..'z', '0'..'9']) then
   begin
   resu[i] := xave[I];
   end;



end;

edit2.text := Uppercase(resu);


end;

end.
