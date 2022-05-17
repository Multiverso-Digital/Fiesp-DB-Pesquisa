unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, Buttons, StdCtrls, BmAlias, kbmMemTable, Db, DBTables;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BmAlias1: TBmAlias;
    Table1: TTable;
    kbmMemTable1: TkbmMemTable;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dire : string;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin


Dire       := ExtractFileDir(ParamStr(0));

IF NOT BmAlias1.IsAlias('FIESP')    then
   Begin
   Bmalias1.Alias:= 'FIESP';
   Bmalias1.Driver := drvPARADOX;
   Bmalias1.Path := dire;
   I:= BmAlias1.Add;
   end;


kbmMemTable1.



end;

end.
