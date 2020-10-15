unit Unit1;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, Menus, ExtCtrls, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    btnCalcPi: TButton;
    edtPi: TEdit;
    edtIterations: TEdit;
    lblIterations: TLabel;
    lblPi: TLabel;
    lblTime: TLabel;
    rbPascal: TRadioButton;
    rbAsm: TRadioButton;
    procedure btnCalcPiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  start, finish: TDateTime;

implementation


{$R *.dfm}

function CalculatePiPascal(iterations: integer): double;
var
  numerator, denominator, i: integer;
  sum: double;
begin
  //PI may be approximated with this formula: 4 * (1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 ...
  numerator := 1;
  denominator := 1;
  sum := 0.0;
  for i := 1 to iterations do
  begin
    sum := sum + numerator / denominator;
    denominator := denominator + 2;
    numerator := -numerator;
  end;
  CalculatePiPascal := 4 * sum;
end;

function CalculatePiAsm(iterations: integer): double;
var
  numerator, denominator: integer;
  sum: double;
label
  _start;
begin
  numerator := 1;
  denominator := 1;
  asm
        fldz
        _start  :
        //sum := sum + numerator / denominator;
        fild    numerator
        fidiv   denominator
        fadd
        //denominator := denominator + 2;
        add     denominator, 2
        //numerator := -numerator;
        neg     numerator
        //for loop
        dec     iterations
        jnz     _start
        fstp    sum
  end;
  CalculatePiAsm := 4 * sum;
end;

procedure TForm1.btnCalcPiClick(Sender: TObject);
begin
  try
    start := Now;
    if rbPascal.Checked then
      edtPi.Text := FloatToStr(CalculatePiPascal(StrToInt(edtIterations.Text)))
    else
      edtPi.Text := FloatToStr(CalculatePiAsm(StrToInt(edtIterations.Text)));
    finish := Now;
    lblTime.Caption := 'Calculation time: ' + FormatDateTime('hh:mm:ss.zz', finish - start);
  except
    on E: Exception do
      edtPi.Text := E.Classname + ': ' + E.Message;
  end;
end;

end.

