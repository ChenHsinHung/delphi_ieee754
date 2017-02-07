unit MainCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,math ;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


//hex Convert To Integer
function HexToInt(HexStr : string) : Int64;
var RetVar : Int64;
    i : byte;
begin
  HexStr := UpperCase(HexStr);
  if HexStr[length(HexStr)] = 'H' then
     Delete(HexStr,length(HexStr),1);
  RetVar := 0;

  for i := 1 to length(HexStr) do begin
      RetVar := RetVar shl 4;
      if HexStr[i] in ['0'..'9'] then
         RetVar := RetVar + (byte(HexStr[i]) - 48)
      else
         if HexStr[i] in ['A'..'F'] then
            RetVar := RetVar + (byte(HexStr[i]) - 55)
         else begin
            Retvar := 0;
            break;
         end;
  end;

  Result := RetVar;
end;

function IEEE754DToF(const AData: DWORD): Single;
var
  S, M, E: Integer;
begin
  try
    S:= (AData and  $80000000) shr 31;
    E:= (AData and $7F800000) shr 23;
    M:= AData and  $7FFFFF;
    Result:= Power(-1, S) * (1 + M/$7FFFFF) * Power(2, E-127);
  except
    Result:=0;
  end;
end;


function IEEE75464DToF(const AData: UInt64): Double;  //iEEE 754 轉成浮點數 / 64位元
var
  S, M, E: UInt64;
begin
  try
    S:= (AData and  $8000000000000000) shr 63;
    E:= (AData and  $7FF0000000000000) shr 52;
    M:= AData and  $FFFFFFFFFFFFF;
    Result:= Power(-1, S) * (1 + M/$FFFFFFFFFFFFF) * Power(2, E-1023);
  except
    Result:=0;
  end;
end;

//---
procedure TForm1.FormCreate(Sender: TObject);
begin
self.Edit1.Clear;
self.Edit2.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
self.Edit1.Text := '3FA001E6'
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 FloSingle : double;
 myDord : DWORD;
 
begin


 if edit1.Text = '' then
   begin


   showmessage('Hex Code is empty');

   self.Button2Click(Button2);

   end

  else
    begin


        myDord := HEXTOINT(edit1.Text);    // hex String Convert To decimal (Integer)

        FloSingle :=  IEEE754DToF(myDord); // Ieee754 Convert Flaot

      //  FloSingle :=  IEEE754DToF('$3FA001E6'); // Ieee754 Convert Flaot
        edit2.Text :=  FloatToStr(FloSingle) 





    end;

end;

end.

