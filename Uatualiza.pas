unit Uatualiza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls;

type
  TFAtualiza = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RExpSim: TRadioButton;
    RexpNao: TRadioButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Image4: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel1: TPanel;
    RimpNao: TRadioButton;
    RimpSim: TRadioButton;
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualiza: TFAtualiza;

implementation

uses UAtualiza1, UFIESPDB;

{$R *.DFM}

procedure TFAtualiza.Image2Click(Sender: TObject);
begin
close;
end;

procedure TFAtualiza.Image4Click(Sender: TObject);
begin
close;
end;

procedure TFAtualiza.Image3Click(Sender: TObject);
begin
Fatualiza1  := TFatualiza1.create(self);
Fatualiza1.showmodal;
Fatualiza1.free;
end;

procedure TFAtualiza.FormShow(Sender: TObject);
begin
If Form1.fatorH > 0 then
   Begin

     Fatualiza.Align := alnone;
     Fatualiza.Windowstate := wsnormal;
     Fatualiza.Width        := 808;
     Fatualiza.Height       := 580;

     Fatualiza.ClientHeight := 553;
     Fatualiza.ClientWidth  := 800;



   end;

If Form1.fatorH = 0 then
   Begin
     Fatualiza.Align := alclient;
   end;

end;

end.
