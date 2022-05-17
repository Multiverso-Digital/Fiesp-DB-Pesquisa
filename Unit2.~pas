unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXCtrls, jpeg, ExtCtrls, Buttons, StdCtrls, Mask, DBCtrls, Db, DBTables,
  DBCGrids;

type
  TForm2 = class(TForm)
    Image1: TImage;
    DBCtrlGrid1: TDBCtrlGrid;
    DBEdit1: TDBEdit;
    label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Image3: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses UfiespDB, Unit3;
{$R *.DFM}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TForm2.DBCtrlGrid1Click(Sender: TObject);
begin

form3 := Tform3.create(self);
form3.showmodal;
form3.free;


end;

procedure TForm2.FormCreate(Sender: TObject);
begin




label2.caption := inttostr(form1.q1.recordcount);


end;

procedure TForm2.Image2Click(Sender: TObject);
begin
close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin


If Form1.fatorH > 0 then
   Begin

     Form2.Align := alnone;
     Form2.Windowstate := wsnormal;
     Form2.Width        := 808;
     Form2.Height       := 580;
     Form2.ClientHeight := 553;
     Form2.ClientWidth  := 800; 

   end;

If Form1.fatorH  = 0 then
   Begin
     Form2.Align := alclient;
   end;

end;

end.
