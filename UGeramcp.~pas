unit UGeramcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables;

type
  TForm1 = class(TForm)
    Tcad: TTable;
    Tmcp: TTable;
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
    Button1: TButton;
    TmcpMCP: TStringField;
    TmcpEst: TStringField;
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
begin

Tcad.open;
Tmcp.open;
Tcad.first;

While not Tcad.eof do
Begin

If Tcadest.value = 'SP' then
   begin

   If Not Tmcp.findkey([Tcadmcp.value]) then
      begin
      Tmcp.append;
      Tmcpmcp.value := Tcadmcp.value;
      Tmcpest.value := Tcadest.value;
      Tmcp.post;
      end;

   end;
Tcad.next;

end;

Tcad.close;
Tmcp.close;


end;

end.
