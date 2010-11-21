unit Treug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Math;

type
  TForm1 = class(TForm)
    btn: TButton;
    edta: TEdit;
    edtb: TEdit;
    edtc: TEdit;
    img: TImage;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
 procedure angle(x,y,z: real;var an:real);
 begin
 an:=arccos((sqr(x)+sqr(y)-sqr(z))/(2*x*y));
 end;
procedure TForm1.btnClick(Sender: TObject);
var
a,b,c,al,be:real;
begin
img.Canvas.Rectangle(0,0,1000,1000);
 a:=strtoint(edta.Text);
 b:=strtoint(edtb.Text);
 c:=strtoint(edtc.Text);
 if (a<b+c) and (b<a+c) and(c<a+b) then
  begin
  img.Canvas.MoveTo(50,50);
  img.Canvas.LineTo(50+round(a),50);
  angle(a,b,c,al);
   angle(a,c,b,be);
   img.Canvas.MoveTo(50,50);
  img.Canvas.lineTo(round(50+b*cos(al)),round(50+b*sin(al)));
  img.Canvas.MoveTo(50+round(a),50);
  img.Canvas.lineto(round(50+a+c*cos(pi-be)),round(50+c*sin(pi-be)));
  end
  else
begin
img.Canvas.font.Size:=40;
img.Canvas.TextOut(0,0,'Impossible to draw');
end;
end;

end.
