unit Uajuste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls;

type
  TFajuste = class(TForm)
    GroupBox1: TGroupBox;
    Esup: TEdit;
    EInf: TEdit;
    Edir: TEdit;
    EEsq: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FormStorage1: TFormStorage;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fajuste: TFajuste;

implementation

uses UFIESPDB;

{$R *.DFM}

procedure TFajuste.Button1Click(Sender: TObject);
var
ajuste : double;
begin

With Form1 do
Begin

try
ajuste := strtofloat(Esup.text);
except
showmessage('Margem superior inv�lida');
ajuste := 12.00;
end;

Msup := ajuste;


try
ajuste := strtofloat(EInf.text);
except
showmessage('Margem inferior inv�lida');
ajuste := 10.00;
end;

MInf := ajuste;


try
ajuste := strtofloat(EDir.text);
except
showmessage('Margem direita inv�lida');
ajuste := 10.00;
end;

MDir := ajuste;


try
ajuste := strtofloat(EEsq.text);
except
showmessage('Margem esquerda inv�lida');
ajuste := 10.00;
end;

MEsq := ajuste;




end;

close;

end;

procedure TFajuste.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

If Key = Vk_Return then Button1click(self);

end;

end.
