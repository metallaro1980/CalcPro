unit funzioni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,math,fpexprpars,strutils,Regexpr,TAGraph, TASeries,dateutils;

type IntegerArray = Array of integer;
Type MathResult = array[1..3] of extended;

const Infinity = 1.0 / 0.0;
const NInfinity = -1.0 / 0.0;
const maxygraph = 10000;
const minygraph = -10000;
const CifreH = 4;


var artotal: array of MathResult;
type tartotal = array of MathResult;
var arfunc : array of array of MathResult;
var titolo : string;
var titololst:tstringlist;
var equaz:string;
var x,y:extended;
var cls : tlineseries;
var Ans : string;

type MyTime = record
 Ore : extended;
 Minuti: extended;
 Secondi: extended;
end;

Type AMyTime = array of MyTime;


function Inverti(s:string):string;
function IsNumber(s:string):boolean;
function IsHex(s:string):boolean;
function IsHex2(s:string):boolean;
function IsBin(s:string):boolean;
function GetPositions(s:string): IntegerArray;
function Factorial(n:integer):qword;
function EV(av:extended;tempo:extended):extended;
function JulianDay (yy : word; mm : word; dd:word): double;
function MathSolver(st:string; x:extended=0; sost:boolean=false):MathResult;
function EVSolver(st:string):MathResult;

function RisultatoToString(retval:extended):string;
procedure ExprArcSec(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprArcCsc(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprArcCot(var Result: TFPExpressionResult; Const Args: TExprParameterArray);

procedure ExprDiscount(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprPower(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprSec(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprCsc(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprTan(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprCoTan(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprArcSin(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprArcCos(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprArcTan(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprFact(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprLog2(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprLog10(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprLogN(var Result: TFPExpressionResult; const Args: TExprParameterArray);
procedure ExprPerc(var Result: TFPExpressionResult; const Args: TExprParameterArray);
procedure ExprCircleArea(var Result: TFPExpressionResult; const Args: TExprParameterArray);
procedure ExprCirclePerimeter(var Result: TFPExpressionResult; const Args: TExprParameterArray);
procedure ExprEV(var Result: TFPExpressionResult; const Args: TExprParameterArray);
procedure ExprJD(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprSUM(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprMEAN(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprMIN(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprMAX(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprSMA(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprSQM(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprVAR(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprCOVAR(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprICL(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprTODEG(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprRADEG(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprSHATORA(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprG(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprDATEDIFFH(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprDATEDIFFS(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprLTOEV(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprEVTOL(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprTODMS(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprTODEGS(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
procedure ExprTOHOUR(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
function TODEGS(s:string):extended;
function TOHOURDECS(s:string):extended;

function DecimalDegreeConverter(decimal:extended) : string;

function MyDeg(p1 : extended;p2 : extended; p3 : extended): extended;
function FormattaNumero(num:word):string;
function jdtodate(jd : extended):string;
function StringToBoolean(s:string):boolean;
function GetLoopList(lst:tstringlist;indice:integer):tstringlist;
function IsNull(s:string):boolean;
function HexToInt(s:string):int64;
function Hex2Bin(c : char) : string;
function BinToDec(Str: string): int64;
function IsDate(stdate:string):boolean;
function MyBinToHex(s:string):string;

function Fix(s:string):string;
function TFArePresent(s:string):boolean;
procedure OrdinaDatiPlot;
function GetMaxValue(ar : array of extended):extended;
function GetMinValue(ar : array of extended):extended;

function DecimalTimeToHMS(dt:extended): AMyTime;
function IsExpression(s:string): boolean;
function MyHex2Dec(const S: string): int64;



implementation


function IsExpression(s:string): boolean;
begin
 if (IsNumber(s) = true) then
 begin
  result := false;
  exit;
 end;
 if (IsHex(s) = true) then
 begin
   result := false;
   exit;
 end;
 if (IsBin(s) = true) then
 begin
   result := false;
   exit;
 end;
 if (IsDate(s) = true) then
 begin
   result := false;
   exit;
 end;
 if (pos('+', s) > 0) then
 begin
   result := true;
   exit;
 end;
 if (pos('-', s) > 0) then
 begin
   result := true;
   exit;
 end;
 if (pos('/', s) > 0) then
 begin
   result := true;
   exit;
 end;
 if (pos('*', s) > 0) then
 begin
   result := true;
   exit;
 end;
 if (pos('^', s) > 0) then
 begin
   result := true;
   exit;
 end;
 if (TFArePresent(s) = true) then
 begin
   result := true;
   exit;
 end;
 if (pos('log', s) > 0) then
 begin
   result := true;
   exit;
 end;
 if (pos('exp', s) > 0) then
 begin
   result := true;
   exit;
 end;
// if (pos('x', s) > 0) then result := true;


end;

function DecimalTimeToHMS(dt:extended): AMyTime;
var Ore,Minuti,Secondi:extended;
var ar : array of MyTime;
begin
 Ore := trunc(dt);
 Minuti := trunc((dt - Ore) * 60);
 Secondi := ((dt - Ore) * 60 - Minuti) * 60;
 setlength(ar,1);
 ar[0].Minuti:= Minuti;
 ar[0].Ore:= Ore;
 ar[0].Secondi := Secondi;
 Result := ar;
end;

function IsNull(s:string):boolean;
var st:string;
begin
  st := s;
  st := trim(st);
  if (length(st) = 0) or (st = '') then
  begin
    IsNull := true;
    exit;
  end
  else
  begin
    IsNull := false;
    exit;
  end;
end;


function IsHex2(s:string):boolean;
var i : integer;
var st:string;
var c:char;
var retval:boolean;
begin

  if (pos('H', s) = 0) then
  begin
    result := false;
    exit;
  end;

  s := replacestr(s, 'H','');

  for i := 1 to length(s) do
  begin
    st := midstr(s, i,1);
    c := st[1];
    case c of
    '0':  retval := true;
    '1':  retval := true;
    '2':  retval := true;
    '3':  retval := true;
    '4':  retval := true;
    '5':  retval := true;
    '6':  retval := true;
    '7':  retval := true;
    '8':  retval := true;
    '9':  retval := true;
    'A':  retval := true;
    'B':  retval := true;
    'C':  retval := true;
    'D':  retval := true;
    'E':  retval := true;
    'F':  retval := true;
    else
      retval := false;
      Result := false;
      exit;
    end;


    if (retval = true) then
    begin
      Result := IsHex(s);
      exit;
    end;

  end;

end;

function Hex2Bin(c : char) : string;
begin

  case c of
  '0': Result := '0000';
  '1': Result := '0001';
  '2': Result := '0010';
  '3': Result := '0011';
  '4': Result := '0100';
  '5': Result := '0101';
  '6': Result := '0110';
  '7': Result := '0111';
  '8': Result := '1000';
  '9': Result := '1001';
  'A': Result := '1010';
  'B': Result := '1011';
  'C': Result := '1100';
  'D': Result := '1101';
  'E': Result := '1110';
  'F': Result := '1111';



  end;

end;

function MyBinToHex(s:string):string;
var nint : int64;
var i,h: integer;
var buffer,st:string;
var pstart:int64;
var retval:string;
begin

  if (pos('B', s) = 0) then
  begin
    result := '';
    exit;
  end;
  If (isbin(s) = false) then
  begin
    result := '';
    exit;
  end;


  s := trim(s);
  s := replacestr(s, 'B', '');
  s := '%' + s;

//  inttohex(strtoint64(edit1.text),CifreH) + 'H';
  nint := strtoint64(s);
  retval := inttohex(nint, CifreH) + 'H';
  result := retval;


end;

function Inverti(s:string):string;
var i : integer;
begin
  if (length(s) = 0) then exit;
  for i := length(s) to 1 do
  begin
    s := s + midstr(s,i,1);
  end;
  result := s;
end;


function BinToDec(Str: string): int64;
var S:string;
var neg:boolean;
var retval:int64;
begin
  S := Str;
  S := trim(S);
  neg := false;
  if (leftstr(S,1) = '-') then
  begin
    neg := true;
    S := replacestr(S, '-', '');
    if (pos('+', S) > 0) then
    begin
      result  := 0;
      exit;
    end;
  end;
  if (leftstr(S,1) = '+') then
  begin
    neg := false;
    S := replacestr(S, '+', '');
    if (pos('-', S) > 0) then
    begin
      result  := 0;
      exit;
    end;
  end;





  S := uppercase(S);
  S := replacestr(Str, 'B', '');

  if  (neg  = true) then S[1] := '0';


  S := '%' + S;
  retval := strtoint64(S);
  if (neg = true) then
  begin
    retval := -1 * abs(retval);
  end;
  result := retval;
end;


function IsBin(s:string):boolean;
var i : int64;
var c1:int64;
var st:string;
var c:char;
begin
  c1 := 0;
  s := uppercase(s);
  for i := 1 to length(s) do
  begin
    st := midstr(s, i,1);
    c := st[1];
    case c of
    '0': continue;
    '1': continue;
    '+': continue;
    '-': continue;
    'B': c1 += 1;
     else
       result := false;
       exit;
    end;


  end;

  if (c1 <> 1) then
  begin
    result := false;
  end
  else
  begin
    result := true;
  end;

end;


function HexToInt(s:string):int64;
var st:string;
var ln:integer;
var retval : int64;
var stp : string;
var c : char;
var c1: char;
var prima:string;
var neg:boolean;
var ind,i:integer;
var binarioprimacifra:string;
var artemp : array of string;
var k : Integer;
var stnew:string;
var num: int64;
begin
  neg := false;
  st := trim(s);
  st := uppercase(st);
  st := replacestr(st, 'H','');

  setlength(artemp, 0);
  retval := 0;

  // riempio l'array cifra x cifra hex con la relativa rappresentazione nel sistema binario
  // partendo da sx -> dx. la visualizzazione del numero hex è gestita dal pc.
  for i := 1 to length(st) do
  begin
    prima := midstr(st,i,1);
    c1 := prima[1];
    binarioprimacifra := hex2bin(c1);
    for k := 1 to length(binarioprimacifra) do
    begin
      setlength(artemp, length(artemp) + 1);
      artemp[length(artemp)-1] := midstr(binarioprimacifra, k, 1);
    end;
  end;



  // effettuo il complemento a 2 del numero in binario
  // il complemento a 2 di un numero in binario si fa invertendo gli 0 con 1 e viceversa
  for i := 0 TO length(artemp) - 1 do
  begin
    if (artemp[i] = '0') then
    begin
      artemp[i] := '1';
    end
    else
    begin
      artemp[i] := '0';
    end;
  end;

  // ricreo il numero nel sistema binario
  stnew := '';
  for i := 0 to length(artemp) - 1 do
  begin
    stnew := stnew + artemp[i];
  end;

  num := BinToDec(stnew)+1;

  // il complemento a 2 di un numero negativo + 1 ritorna il valore assoluto del
  // numero negativo
  // purtroppo la funzione di conversione da hex a int scazza con valori grossi

  if (num > 0) then
  begin
    retval := MyHex2Dec(st);
    result := retval;
    exit;
  end;

  retval := 0;
  ln := length(st);
  ln -= 1;
  for i := 1 to length(st) do
  begin
    stp := midstr(st,i,1);
    c := stp[1];
    case c of
    '0': ind := 0;
    '1': ind := 1;
    '2': ind := 2;
    '3': ind := 3;
    '4': ind := 4;
    '5': ind := 5;
    '6': ind := 6;
    '7': ind := 7;
    '8': ind := 8;
    '9': ind := 9;
    'A': ind := 10;
    'B': ind := 11;
    'C': ind := 12;
    'D': ind := 13;
    'E': ind := 14;
    'F': ind := 15;



    end;
    retval := Retval +  Round((ind * (power(16, ln))));
    ln -= 1;
  end;

  HexToInt := retval;


end;

function MyHex2Dec(const S: string): int64;
var
  HexStr: string;
begin
  if Pos('$',S)=0 then
    HexStr:='$'+ S
  else
    HexStr:=S;
  HexStr := replacestr(HexStr, 'H', '');
  Result:=StrToInt64(HexStr);
end;


function EVSolver(st:string):MathResult;
var fparser: TFPExpressionParser;
var retvalar :  MathResult;
var retval : extended;
var retval1: int64;
var tipor : TResultType;
var sttipor : string;
var ar : array of string;
var p,s:string;
var x:extended;
var av,tempo:extended;
begin
 DefaultFormatSettings.DecimalSeparator:= '.';
 fparser := TFPExpressionParser.Create(nil);
 try
  p := extractword(1,st,['|']);
  s := extractword(2,st,['|']);
  av := strtofloat(p);
  if (pos('/', s) > 0) then
  begin
    tempo := strtofloat(extractword(1,s,['/']))/ strtofloat(extractword(2,s,['/']));
  end
  else
  begin
    tempo := strtofloat(s);
  end;

 x := Power(av,2)/tempo;
 fparser.BuiltIns:=[bcMath];
 fparser.Identifiers.AddFunction('log2', 'F', 'F', @ExprLog2);
 fparser.Identifiers.AddFloatVariable('x', x);
 fparser.Expression:= 'log2(x)';

 st := replacestr(st, 'π', '3.14159265358979324');
 st := replacestr(st, 'pi', '3.14159265358979324');




 tipor := fparser.evaluate.ResultType;


 if (tipor = rtfloat) then
 begin
   retvalar[1] := fparser.Evaluate.ResFloat;
   retvalar[2] := 1;

   EVSolver := retvalar;
 end
 else
 begin
   retvalar[1] := fparser.Evaluate.ResInteger;
   retvalar[2] := 2;
   EVSolver := retvalar;
 end;


 fparser.free;

 except
  on E: Exception do
  begin
    retvalar[1] := 0;
    retvalar[2] := 2;
    EVSolver := retvalar;
  end;
 end;


end;

function TFArePresent(s:string):boolean;
begin
  if (pos('tan', s) > 0) or (pos('cotan', s) > 0) or (pos('arcsin', s) > 0) or (pos('arccos',s) > 0) or
     (pos('arctan', s) > 0) or (pos('cotg',s) > 0) or (pos('asin',s) > 0) or (pos('acos', s) > 0) or
     (pos('sin', s) > 0) or (pos('cos', s) > 0) or (pos('tg',s) > 0) or (pos('ctan',s) > 0) or
     (pos('sec', s) > 0) or (pos('csc', s) > 0) then

     begin
       result := true;
     end
  else
  begin
    result := false;
  end;

end;

function Fix(s:string):string;
begin
// arctan
 s := stringreplace(s, 'ctg', 'cotan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'ctan', 'cotan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'ctang', 'cotan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'cotg', 'cotan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'cottg', 'cotan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'cotang', 'cotan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'asin', 'arcsin', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'acos', 'arccos', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'tg', 'tan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'tang', 'tan', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'seno', 'sin', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'sen', 'sin', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'coseno', 'cos', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'cosin', 'cos', [rfReplaceAll, rfIgnoreCase]);
 s := stringreplace(s, 'cosen', 'cos', [rfReplaceAll, rfIgnoreCase]);
 Result := s;

end;

function GetMaxValue(ar : array of extended):extended;
var i : integer;
var retval:extended;
var armio:array of extended;
begin
  retval := 0;
  setlength(armio,0);
  for i := length(ar) - 1 downto 0 do
  begin
    If (IsNan(ar[i]) = True) then continue;
    if ((ar[i] <> nan) and (ar[i] <> -nan)) then
    begin
      retval := ar[i];
      setlength(armio, length(armio)+1);
      armio[length(armio)-1] := retval;
    end;
  end;
  Result := maxvalue(armio);
end;

function GetMinValue(ar : array of extended):extended;
var i : integer;
var retval:extended;
var armio:array of extended;
begin
  retval := 0;
  setlength(armio,0);
  for i := length(ar) - 1 downto 0 do
  begin
    If (IsNan(ar[i]) = True) then continue;
    if ((ar[i] <> nan) and (ar[i] <> -nan)) then
    begin
      retval := ar[i];
      setlength(armio, length(armio)+1);
      armio[length(armio)-1] := retval;
    end;
  end;
  Result := minvalue(armio);
end;


function MathSolver(st:string; x:extended=0; sost:boolean=false):MathResult;
var fparser: TFPExpressionParser;
var retvalar :  MathResult;
var retval : extended;
var retval1: int64;
var tipor : TResultType;
var sttipor : string;
var re : tregexpr;
var dms : string;
var dmsf : extended;
var sthex : string;
var dhex : int64;
var dbin : int64;
var stbin : string;
var st3,st1,st2,st4 : string;


begin
 DefaultFormatSettings.DecimalSeparator:= '.';
 DefaultFormatSettings.ThousandSeparator:= chr(0);
 fparser := TFPExpressionParser.Create(nil);
 try
 fparser.BuiltIns:=[bcMath,bcStrings,bcDateTime];


 fparser.Identifiers.AddFunction('arcsec', 'F', 'F', @ExprArcSec);
 fparser.Identifiers.AddFunction('arccsc', 'F', 'F', @ExprArcCsc);
 fparser.Identifiers.AddFunction('arccot', 'F', 'F', @ExprArcCot);


 fparser.Identifiers.AddFunction('sec', 'F', 'F', @ExprSec);
 fparser.Identifiers.AddFunction('csc', 'F', 'F', @ExprCsc);
 fparser.Identifiers.AddFunction('tan', 'F', 'F', @ExprTan);
 fparser.Identifiers.AddFunction('cotan', 'F', 'F', @ExprCoTan);
 fparser.Identifiers.AddFunction('arcsin', 'F', 'F', @ExprArcSin);
 fparser.Identifiers.AddFunction('arccos', 'F', 'F', @ExprArcCos);
 fparser.Identifiers.AddFunction('arctan', 'F', 'F', @ExprArcTan);
 fparser.Identifiers.AddFunction('log2', 'F', 'F', @ExprLog2);
 fparser.Identifiers.AddFunction('log10', 'F', 'F', @ExprLog10);
 fparser.Identifiers.AddFunction('fact', 'I', 'I', @ExprFact);
 fparser.Identifiers.AddFunction('logn', 'F', 'FF', @ExprLogN);
 fparser.Identifiers.AddFunction('Perc', 'F', 'FF', @ExprPerc);
 fparser.Identifiers.AddFunction('CircleA', 'F', 'F', @ExprCircleArea);
 fparser.Identifiers.AddFunction('CircleP', 'F', 'F', @ExprCirclePerimeter);
 fparser.Identifiers.AddFunction('EV', 'F', 'FF', @ExprEV);
 fparser.Identifiers.AddFunction('JD', 'F', 'S', @ExprJD);
 fparser.Identifiers.Addfunction('SUM', 'F', 'SS', @ExprSUM);
 fparser.Identifiers.Addfunction('MEAN', 'F', 'SS', @ExprMEAN);
 fparser.Identifiers.Addfunction('MIN', 'F', 'SS', @ExprMIN);
 fparser.Identifiers.Addfunction('MAX', 'F', 'SS', @ExprMAX);
 fparser.Identifiers.Addfunction('SMA', 'F', 'SS', @ExprSMA);
 fparser.Identifiers.Addfunction('SQM', 'F', 'SS', @ExprSQM);
 fparser.Identifiers.Addfunction('CVAR', 'F', 'SS', @ExprVAR);
 fparser.Identifiers.Addfunction('COVAR', 'F', 'SSS', @ExprCOVAR);
 fparser.Identifiers.Addfunction('ICL', 'F', 'FFF', @ExprICL);
 fparser.Identifiers.Addfunction('TODEG', 'F', 'FFF', @ExprTODEG);
 fparser.Identifiers.Addfunction('TODEGS', 'F', 'S', @ExprTODEGS);
 fparser.Identifiers.Addfunction('TOHOUR', 'F', 'FFF', @ExprTOHOUR);
 fparser.Identifiers.Addfunction('RADEG', 'F', 'FFF', @ExprRADEG);
 fparser.Identifiers.Addfunction('SHATORA', 'F', 'FF', @ExprSHATORA);
 fparser.Identifiers.Addfunction('g', 'F', 'FF', @ExprG);
 fparser.Identifiers.Addfunction('DDIFFSHOUR', 'F', 'SS', @ExprDATEDIFFH);
 fparser.Identifiers.Addfunction('DDIFFSSEC', 'F', 'SS', @ExprDATEDIFFS);
 fparser.Identifiers.Addfunction('LTOEV', 'F', 'F', @ExprLTOEV);
 fparser.Identifiers.Addfunction('EVTOL', 'F', 'F', @ExprEVTOL);
 fparser.Identifiers.Addfunction('TODMS', 'S', 'F', @ExprTODMS);
 fparser.Identifiers.AddFunction('POWER', 'F', 'FF', @ExprPower);
 fparser.Identifiers.AddFunction('DSCNT', 'F', 'FF', @ExprDiscount);



 fparser.Identifiers.AddFloatVariable('x', x);
 fparser.identifiers.addfloatvariable('pi', pi);
 fparser.identifiers.addfloatvariable('π', pi);


 st := replacestr(st, 'π', '3.14159265358979324');
 st := replacestr(st, 'pi', '3.14159265358979324');



 if (sost=true) then
 begin
   st := replacestr(st, 'exp', 'esp');
   st := replacestr(st, 'MAX', 'MAS');
   st := replacestr(st, 'x', floattostr(x));
   st := replacestr(st, 'X', floattostr(x));
   st := replacestr(st, 'esp', 'exp');
   st := replacestr(st, 'MAS', 'MAX');
 end;



 re := tregexpr.Create;
// re.Expression:= '([0-9]{1,}°[0-9]{1,}′[0-9]{1,}\.?[0-9]*″)';
 re.expression := '([0-9]{1,}\s*°\s*[0-9]{1,}\s*′\s*[0-9]{1,}\.?[0-9]*\s*″\s*)';
 if re.Exec(st) then
 begin
   dms := re.Match[0];
   dmsf := TODEGS(dms);
   st := replacestr(st, dms, floattostr(dmsf));
   while re.ExecNext do
   begin
     dms := re.Match[0];
     dmsf := TODEGS(dms);
     st := replacestr(st, dms, floattostr(dmsf));
   end;
 end;


// re.Expression:= '([0-9]{1,}°[0-9]{1,}\.?[0-9]*′)';
 re.expression := '([0-9]{1,}\s*°\s*[0-9]{1,}\.?[0-9]*\s*′\s*)';
 if re.Exec(st) then
 begin
   dms := re.Match[0];
   dmsf := TODEGS(dms);
   st := replacestr(st, dms, floattostr(dmsf));
   while re.ExecNext do
   begin
     dms := re.Match[0];
     dmsf := TODEGS(dms);
     st := replacestr(st, dms, floattostr(dmsf));
   end;
 end;


//  re.Expression:= '([0-9]{1,}\.?[0-9]*°)';
 re.expression := '([0-9]{1,}\.?[0-9]*\s*°\s*)';
 if re.Exec(st) then
 begin
   dms := re.Match[0];
   dmsf := TODEGS(dms);
   st := replacestr(st, dms, floattostr(dmsf));
   while re.ExecNext do
   begin
     dms := re.Match[0];
     dmsf := TODEGS(dms);
     st := replacestr(st, dms, floattostr(dmsf));
   end;
 end;


 // ore

 re.expression := '([0-9]{1,}\s*h\s*[0-9]{1,}\s*m\s*[0-9]{1,}\.?[0-9]*\s*s\s*)';
 if re.Exec(st) then
 begin
   dms := re.Match[0];
   dmsf := TOHOURDECS(dms);
   st := replacestr(st, dms, floattostr(dmsf));
   while re.ExecNext do
   begin
     dms := re.Match[0];
     dmsf := TOHOURDECS(dms);
     st := replacestr(st, dms, floattostr(dmsf));
   end;
 end;


 re.expression := '([0-9]{1,}\s*h\s*[0-9]{1,}\.?[0-9]*\s*m\s*)';
 if re.Exec(st) then
 begin
   dms := re.Match[0];
   dmsf := TOHOURDECS(dms);
   st := replacestr(st, dms, floattostr(dmsf));
   while re.ExecNext do
   begin
     dms := re.Match[0];
     dmsf := TOHOURDECS(dms);
     st := replacestr(st, dms, floattostr(dmsf));
   end;
 end;


 re.expression := '([0-9]{1,}\.?[0-9]*\s*h\s*)';
 if re.Exec(st) then
 begin
   dms := re.Match[0];
   dmsf := TOHOURDECS(dms);
   st := replacestr(st, dms, floattostr(dmsf));
   while re.ExecNext do
   begin
     dms := re.Match[0];
     dmsf := TOHOURDECS(dms);
     st := replacestr(st, dms, floattostr(dmsf));
   end;
 end;



 re.expression := '([0-9ABCDEF]{1,}H)';
 if re.Exec(st) then
 begin
   sthex := re.Match[0];
   dhex := HexToInt(sthex);
   st := replacestr(st, sthex, inttostr(dhex));
   while re.ExecNext do
   begin
     sthex := re.Match[0];
     dhex := HexToInt(sthex);
     st := replacestr(st, sthex, inttostr(dhex));
   end;
 end;

 re.expression := '([0-9abcdef]{1,}h)';
 if re.Exec(st) then
 begin
   sthex := re.Match[0];
   dhex := HexToInt(sthex);
   st := replacestr(st, sthex, inttostr(dhex));
   while re.ExecNext do
   begin
     sthex := re.Match[0];
     dhex := HexToInt(sthex);
     st := replacestr(st, sthex, inttostr(dhex));
   end;
 end;

 re.expression := '([0-9abcdef]{1,}H)';
 if re.Exec(st) then
 begin
   sthex := re.Match[0];
   dhex := HexToInt(sthex);
   st := replacestr(st, sthex, inttostr(dhex));
   while re.ExecNext do
   begin
     sthex := re.Match[0];
     dhex := HexToInt(sthex);
     st := replacestr(st, sthex, inttostr(dhex));
   end;
 end;

 re.expression := '([0-9ABCDEF]{1,}h)';
 if re.Exec(st) then
 begin
   sthex := re.Match[0];
   dhex := HexToInt(sthex);
   st := replacestr(st, sthex, inttostr(dhex));
   while re.ExecNext do
   begin
     sthex := re.Match[0];
     dhex := HexToInt(sthex);
     st := replacestr(st, sthex, inttostr(dhex));
   end;
 end;


 re.expression := '([01]{1,}B)';
 if re.Exec(st) then
 begin
   stbin := re.Match[0];
   dbin := BinToDec(stbin);
   st := replacestr(st, stbin, inttostr(dbin));
   while re.ExecNext do
   begin
     stbin := re.Match[0];
     dbin := BinToDec(stbin);
     st := replacestr(st, stbin, inttostr(dbin));
   end;
 end;

 re.expression := '([01]{1,}b)';
 if re.Exec(st) then
 begin
   stbin := re.Match[0];
   dbin := BinToDec(stbin);
   st := replacestr(st, stbin, inttostr(dbin));
   while re.ExecNext do
   begin
     stbin := re.Match[0];
     dbin := BinToDec(stbin);
     st := replacestr(st, stbin, inttostr(dbin));
   end;
 end;


 re.Expression:= '([-+]?(\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)\^([-+]?(\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
 if re.Exec(st) then
 begin
   st3 := re.match[0];
   st1 := extractword(1,st3, ['^']);
   st2 := extractword(2,st3, ['^']);
   st4 := 'Power(' + st1 + ',' + st2 + ')';
   st := replacestr(st, st3, st4);
   while re.ExecNext do
   begin
     st3 := re.match[0];
     st1 := extractword(1,st3, ['^']);
     st2 := extractword(2,st3, ['^']);
     st4 := 'Power(' + st1 + ',' + st2 + ')';
     st := replacestr(st, st3, st4);
   end;
 end;




 fparser.Expression:=st;
 tipor := fparser.evaluate.ResultType;


 if (tipor = rtfloat) then
 begin
     retvalar[1] := fparser.Evaluate.ResFloat;
     retvalar[2] := 1;
     mathsolver := retvalar;
 end
 else
 begin
   if (tipor = rtInteger) then
   begin
     retvalar[1] := fparser.Evaluate.ResInteger;
     retvalar[2] := 2;
     mathsolver := retvalar;

   end
   else if (tipor = rtboolean) then
   begin
     if (fparser.Evaluate.ResBoolean = True) then
     begin
       retvalar[1] := 1;
     end
     else
     begin
       retvalar[1] := 0;
     end;
     retvalar[2] := 2;
   end;
   mathsolver := retvalar;

 end;


 fparser.free;

 except
  on E: Exception do
  begin
    retvalar[1] := nan;
    retvalar[2] := 2;
    mathsolver := retvalar;
    fparser.free;
  end;
 end;


end;

function jdtodate(jd : extended):string;
var data: tdatetime;
var std,stm,sty:string;
var day,month,year:word;
begin
  data := juliandatetodatetime(jd);
  day := dayof(data);
  month := monthof(data);
  year := yearof(data);
  std := FormattaNumero(day);
  stm := FormattaNumero(month);
  sty := inttostr(yearof(data));

  result := std + '/' + stm + '/' + sty;

end;

function IsDate(stdate:string):boolean;
var td:tdatetime;
var retval:boolean;
var fs : Tformatsettings;
begin
 try
 fs.DateSeparator:= '/';
 fs.ShortDateFormat := 'd/m/y';
 td := strtodatetime(stdate, fs);
 IsDate := true;

 except
  on e: Exception do
  begin
    IsDate := false;
  end;
 end;
end;

function FormattaNumero(num:word):string;
begin
  if (num < 9) then
  begin
    FormattaNumero := '0' + inttostr(num);
  end
  else
  begin
    FormattaNumero := inttostr(num);
  end;

end;

procedure OrdinaDatiPlot;
var i,jmin,j : integer;
var ar1,ar2,bck,nxt: MathResult;
var ln:integer;
var arretval: tartotal;
begin
  ln :=  length(artotal);
  for i := 0 to ln - 1 do
  begin
     jmin := i;
     j := i + 1;
     while (j < ln) do
     begin
        ar1 :=  artotal[j];
        ar2 := artotal[jmin];
        if (ar1[3] < ar2[3]) then
        begin
          jmin := j;
        end;
        j := j + 1;
     end;
     bck := artotal[jmin];
     nxt := artotal[i];
     artotal[jmin] := nxt;
     artotal[i] := bck;
  end;


end;

procedure ExprDiscount(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var retval:extended;
var n1,n2:extended;
begin
 n1 := argtofloat(args[0]);    // final price
 n2 := argtofloat(args[1]);    // initial price
 retval := (n2 - n1) / n2;
 retval := retval * 100;
 Result.ResFloat:= retval;
end;



procedure ExprPower(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var retval:extended;
var n1,n2:extended;
begin
 n1 := argtofloat(args[0]);
 n2 := argtofloat(args[1]);
 retval := Power(n1, n2);
 Result.ResFloat:= retval;
end;


procedure ExprTODMS(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var decdeg:extended;
begin
  decdeg := argtofloat(args[0]);
  Result.ResString:= DecimalDegreeConverter(decdeg);
end;

procedure ExprTOHOUR(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var h,m,s:extended;
var retval:extended;
begin
   h := argtofloat(args[0]);
   m := argtofloat(args[1]);
   s := argtofloat(args[2]);
   retval := h + m/60 + s/3600;
   result.ResFloat:= retval;
end;

function DecimalDegreeConverter(decimal:extended) : string;
var sgn : boolean;
var bsx,minx,sekx:float;
begin
sgn := false;
if (decimal < 0) then
begin
sgn := true;
end;

decimal := abs(decimal);
bsx := floor(decimal);
minx := 60*(decimal-bsx);
minx := floor(minx);
sekx := (decimal - bsx - minx/60) * 3600;


if (floattostrf(sekx, tfloatformat.ffNumber, 2,3) = '60.000') then
begin
sekx := 0;
minx := minx+1;
if (minx >= 60) then
begin
minx := 0;
bsx := bsx+1;
end;
end;



if (sgn = true) then
begin
DecimalDegreeConverter := '-' + floattostr(bsx) + '°' + floattostr(minx) + '′' + floattostrf(sekx, tfloatformat.ffNumber, 2,3) + '″';
end
else
begin
  DecimalDegreeConverter := floattostr(bsx) + '°' + floattostr(minx) + '′' + floattostrf(sekx, tfloatformat.ffNumber, 2,3) + '″';
end;
end;


procedure ExprDATEDIFFH(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var dt1,dt2:tdatetime;
var st1,st2:string;
begin
 try

 DefaultFormatSettings.DateSeparator:= '/';
 DefaultFormatSettings.ShortDateFormat:= 'd/m/y';
 DefaultFormatSettings.TimeSeparator:= ':';
 st1 := args[0].ResString;
 st2 := args[1].ResString;
 dt1 := strtodatetime(st1);
 dt2 := strtodatetime(st2);
 result.ResFloat := secondsbetween(dt1,dt2)/3600;

 except
  on e: Exception do
  begin
    Result.Resfloat := nan;
  end;
 end;

end;


procedure ExprDATEDIFFS(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var dt1,dt2:tdatetime;
var st1,st2:string;
begin
 try
 DefaultFormatSettings.DateSeparator:= '/';
 DefaultFormatSettings.ShortDateFormat:= 'd/m/y';
 DefaultFormatSettings.TimeSeparator:= ':';
 st1 := args[0].ResString;
 st2 := args[1].ResString;
 dt1 := strtodatetime(st1);
 dt2 := strtodatetime(st2);
 result.ResFloat := secondsbetween(dt1,dt2);


 except
  on e: Exception do
  begin
    Result.Resfloat := nan;
  end;
 end;
end;

procedure ExprLTOEV(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var lux : extended;
var retval:extended;
begin
 lux := argtofloat(Args[0]);
 lux := lux / 2.5;
 retval := logn(2,lux);
 result.ResFloat:= retval;


end;

procedure ExprEVTOL(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var ev : extended;
var retval:extended;
begin
 ev := argtofloat(Args[0]);
 retval := (Power(2, ev)) * 2.5;
 result.ResFloat:= retval;
end;


procedure ExprSHATORA(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var p1,p2:extended;
var retval:extended;
var shadeg:extended;
begin
 p1 := ArgToFloat(Args[0]);
 p2 := ArgToFloat(Args[1]);
 shadeg := MyDeg(p1,p2,0);
 retval := 360 - shadeg;
 retval /= 15;
 result.ResFloat:= retval;
end;

procedure ExprRADEG(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var p1,p2,p3:extended;
var retval:extended;
begin
 p1 := ArgToFloat(Args[0]);
 p2 := ArgToFloat(Args[1]);
 p3 := ArgToFloat(Args[2]);
 retval := MyDeg(p1,p2,p3);
 retval *= 15;
 result.ResFloat:= retval;
end;

procedure ExprTODEG(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var p1,p2,p3:extended;
var retval:extended;
begin
  p1 := ArgToFloat(Args[0]);
  p2 := ArgToFloat(Args[1]);
  p3 := ArgToFloat(Args[2]);
  retval := MyDeg(p1,p2,p3);
  result.ResFloat:= retval;

end;

function TODEGS(s:string):extended;
var degs:string;
var artemp:array of string;
var i:integer;
var p1,p2,p3:extended;
var retval:extended;
begin
  degs := s;
  degs := replacestr(degs, '°', '|');
  degs := replacestr(degs, '′', '|');
  degs := replacestr(degs, '″', '|');
  degs := trim(degs);
  artemp := degs.split('|');

  for i := 0 to length(artemp) - 1 do
  begin
  artemp[i] := trim(artemp[i]);
  artemp[i] := replacestr(artemp[i], ' ', '');
  if (isnumber(artemp[i]) = false) then
  begin
    result  := nan;
    exit;
  end;
  end;

  case length(artemp) of
  1: begin
       setlength(artemp, 3);
       artemp[1] := '0';
       artemp[2] := '0';
     end;
  2: begin
       setlength(artemp,3);
       artemp[2] := '0';
     end;

  end;



  p1 := strtofloat(artemp[0]);
  p2 := strtofloat(artemp[1]);
  p3 := strtofloat(artemp[2]);
  retval := MyDeg(p1,p2,p3);
  result := retval;

  end;

function TOHOURDECS(s:string):extended;
var degs:string;
var artemp:array of string;
var i:integer;
var p1,p2,p3:extended;
var retval:extended;
begin
  degs := s;
  degs := replacestr(degs, 'h', '|');
  degs := replacestr(degs, 'm', '|');
  degs := replacestr(degs, 's', '|');
  degs := trim(degs);
  artemp := degs.split('|');

  for i := 0 to length(artemp) - 1 do
  begin
  artemp[i] := trim(artemp[i]);
  artemp[i] := replacestr(artemp[i], ' ', '');
  if (isnumber(artemp[i]) = false) then
  begin
    result  := nan;
    exit;
  end;
  end;

  case length(artemp) of
  1: begin
       setlength(artemp, 3);
       artemp[1] := '0';
       artemp[2] := '0';
     end;
  2: begin
       setlength(artemp,3);
       artemp[2] := '0';
     end;

  end;



  p1 := strtofloat(artemp[0]);
  p2 := strtofloat(artemp[1]);
  p3 := strtofloat(artemp[2]);
  retval := MyDeg(p1,p2,p3);
  result := retval;

  end;







procedure ExprTODEGS(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var degs:string;
var artemp:array of string;
var i:integer;
var p1,p2,p3:extended;
var retval:extended;
begin
  degs := Args[0].ResString;
  degs := replacestr(degs, '°', '|');
  degs := replacestr(degs, '′', '|');
  degs := replacestr(degs, '″', '|');
  degs := trim(degs);
  artemp := degs.split('|');
  if (length(artemp) <> 3) then
  begin
    result.ResFloat:= nan;
    exit;
  end
  else
  begin
    for i := 0 to length(artemp) - 1 do
    begin
      artemp[i] := trim(artemp[i]);
      artemp[i] := replacestr(artemp[i], ' ', '');
      if (isnumber(artemp[i]) = false) then
      begin
        result.resfloat := nan;
        exit;
      end;
    end;
    p1 := strtofloat(artemp[0]);
    p2 := strtofloat(artemp[1]);
    p3 := strtofloat(artemp[2]);
    retval := MyDeg(p1,p2,p3);
    result.ResFloat:= retval;

  end;
end;

function MyDeg(p1 : extended;p2 : extended; p3 : extended): extended;
var retval:extended;
var neg : boolean;
begin
neg := false;
if (p1 < 0) then neg := true;
retval := abs(p1) + (abs(p2) / 60) + (abs(p3) / 3600);
if (neg = true) then
begin
 retval := -1 * abs(retval);
end
else
begin
  retval := +1 * abs(retval);
end;
MyDeg := retval;
end;


procedure ExprICL(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var cov,var1,var2:extended;
var retval:extended;
begin
  cov := ArgToFloat(Args[0]);
  var1 := ArgToFloat(Args[1]);
  var2 := ArgToFloat(Args[2]);
  retval := cov / (Sqrt((var1 * var2)));
  result.ResFloat:= retval;

end;

procedure ExprVAR(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  stdel:string;
  del:char;
  i: integer;
  n : integer;
  sommatoria:extended;
  media:extended;
  retval : extended;
begin
  sommatoria := 0;
  n := 0;
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then Result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then Result.ResFloat:= nan;
  del := stdel[1];

  nums := st.split(del);
  for i := 0 to length(nums) - 1 do
  begin
     if (IsNumber(nums[i]) = True) then
     begin
       Sommatoria += strtofloat(nums[i]);
       n += 1;
     end;
  end;
  media := Sommatoria / n;
  sommatoria := 0;
  n := n;
  for i := 0 to length(nums) - 1 do
  begin
    if (IsNumber(nums[i]) = True) then
    begin
       sommatoria += Power((strtofloat(nums[i]) - media),2);
    end;
  end;
  retval := sommatoria / (n-1);
  Result.ResFloat:= retval;

end;


procedure ExprCOVAR(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st1,st2: string;
  nums1,nums2 : array of string;
  stdel:string;
  del:char;
  i: integer;
  n : integer;
  sommatoria1,sommatoria2:extended;
  media1,media2:extended;
  covarianza : extended;
begin
  sommatoria1 := 0;
  sommatoria2 := 0;
  n := 0;
  st1 := args[0].ResString;
  st1 := trim(st1);
  if (st1 = '') then Result.ResFloat:= nan;
  st2 := args[1].ResString;
  st2 := trim(st2);
  if (st2 = '') then Result.ResFloat:= nan;
  stdel := args[2].ResString;
  stdel := trim(stdel);
  if (stdel = '') then Result.ResFloat:= nan;
  del := stdel[1];

  nums1 := st1.split(del);
  nums2 := st2.split(del);

  if (length(nums1) <> length(nums2)) then result.ResFloat:=nan;

  for i := 0 to length(nums1) - 1 do
  begin
     if (IsNumber(nums1[i]) = True) then
     begin
       Sommatoria1 += strtofloat(nums1[i]);
       n += 1;
     end;
  end;

  n := 0;

  for i := 0 to length(nums2) - 1 do
  begin
     if (IsNumber(nums2[i]) = True) then
     begin
       Sommatoria2 += strtofloat(nums2[i]);
       n += 1;
     end;
  end;

  media1 := Sommatoria1 / n;
  media2 := Sommatoria2 / n;

  covarianza := 0;
  for i := 0 to  (length(nums1) - 1) do
  begin
    covarianza += ((strtofloat(nums1[i])-media1)*(strtofloat(nums2[i])-media2));
  end;
  covarianza := covarianza / (n-1);
  Result.ResFloat:= covarianza;

end;

procedure ExprJD(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: string;
  d: tdatetime;
begin
  try
  DefaultFormatSettings.ShortDateFormat:= 'd/m/y';
  x := args[0].ResString;
  d := strtodate(x, '/');
  Result.resFloat := JulianDay(yearof(d), monthof(d), dayof(d));

  except
   on e: exception do
   begin
      Result.ResFloat:= 0;
   end;
  end;
end;

procedure ExprSMA(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  stdel:string;
  del:char;
  i: integer;
  n : integer;
  sommatoria:extended;
  media:extended;
  retval : extended;
begin
  sommatoria := 0;
  n := 0;
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then Result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then Result.ResFloat:= nan;
  del := stdel[1];

  nums := st.split(del);
  for i := 0 to length(nums) - 1 do
  begin
     if (IsNumber(nums[i]) = True) then
     begin
       Sommatoria += strtofloat(nums[i]);
       n += 1;
     end;
  end;
  media := Sommatoria / n;
  sommatoria := 0;
  n := n;
  for i := 0 to length(nums) - 1 do
  begin
    if (IsNumber(nums[i]) = True) then
    begin
       sommatoria += abs(strtofloat(nums[i]) - media);
    end;
  end;
  retval := sommatoria / n;
  Result.ResFloat:= retval;

end;

procedure ExprSQM(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  stdel:string;
  del:char;
  i: integer;
  n : integer;
  sommatoria:extended;
  media:extended;
  retval : extended;
begin
  sommatoria := 0;
  n := 0;
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then Result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then Result.ResFloat:= nan;
  del := stdel[1];

  nums := st.split(del);
  for i := 0 to length(nums) - 1 do
  begin
     if (IsNumber(nums[i]) = True) then
     begin
       Sommatoria += strtofloat(nums[i]);
       n += 1;
     end;
  end;
  media := Sommatoria / n;
  sommatoria := 0;
  n := n;
  for i := 0 to length(nums) - 1 do
  begin
    if (IsNumber(nums[i]) = True) then
    begin
       sommatoria += Power((strtofloat(nums[i]) - media),2);
    end;
  end;
  retval := sommatoria / (n-1);
  retval := sqrt(retval);
  Result.ResFloat:= retval;

end;

procedure ExprSUM(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  stdel:string;
  del:char;
  i: integer;
  sommatoria:extended;
begin
  sommatoria := 0;
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then Result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then Result.ResFloat:= nan;
  del := stdel[1];

  nums := st.split(del);
  for i := 0 to length(nums) - 1 do
  begin
     if (IsNumber(nums[i]) = True) then
     begin
       Sommatoria += strtofloat(nums[i]);
     end;
  end;
  Result.ResFloat:= Sommatoria;

end;

procedure ExprMAX(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  numeri: array of extended;
  stdel:string;
  del:char;
  i : integer;
begin
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then result.ResFloat:= nan;
  del := stdel[1];
  nums := st.split(del);
  setlength(numeri,0);
  for i := 0 to length(nums) - 1 do
  begin
     if (isnumber(nums[i]) = true) then
     begin
       setlength(numeri,length(numeri)+1);
       numeri[length(numeri)-1] := strtofloat(nums[i]);
     end;
  end;


  Result.ResFloat:= maxvalue(numeri);
end;



procedure ExprMIN(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  numeri: array of extended;
  stdel:string;
  del:char;
  i : integer;
begin
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then result.ResFloat:= nan;
  del := stdel[1];
  nums := st.split(del);
  setlength(numeri,0);
  for i := 0 to length(nums) - 1 do
  begin
     if (isnumber(nums[i]) = true) then
     begin
       setlength(numeri,length(numeri)+1);
       numeri[length(numeri)-1] := strtofloat(nums[i]);
     end;
  end;


  Result.ResFloat:= minvalue(numeri);
end;

procedure ExprMEAN(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  st: string;
  nums : array of string;
  stdel:string;
  del:char;
  i,n: integer;
  sommatoria:extended;
begin
  sommatoria := 0;
  n := 0;
  st := args[0].ResString;
  st := trim(st);
  if (st = '') then Result.ResFloat:= nan;
  stdel := args[1].ResString;
  stdel := trim(stdel);
  if (stdel = '') then Result.ResFloat:= nan;
  del := stdel[1];

  nums := st.split(del);
  for i := 0 to length(nums) - 1 do
  begin
     if (IsNumber(nums[i]) = True) then
     begin
       Sommatoria += strtofloat(nums[i]);
       n += 1;
     end;
  end;
  Result.ResFloat:= Sommatoria/n;

end;



procedure ExprG(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  L: extended;
  h: extended;
  g: extended;
begin
  L := ArgToFloat(Args[0]);
  h := ArgToFloat(Args[1]);
  L := L * pi / 180;
  g := 9.7803184 * (1 + (0.0053024 * Power(sin(L), 2)) - (0.0000059 * Power(sin(2*L), 2))) - (3.086 * Power(10, -6) * h);

  Result.resFloat := g;
end;


procedure ExprTan(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := tan(x);
end;

procedure ExprSec(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := 1/cos(x);
end;


procedure ExprArcSec(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := arccos(1/x);
end;

procedure ExprArcCsc(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := arcsin(1/x);
end;



procedure ExprCsc(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := 1/sin(x);
end;


procedure ExprArcCot(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := arctan(1/x);
end;


procedure ExprCoTan(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := cotan(x);

end;

procedure ExprArcSin(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := arcsin(x);

end;


procedure ExprArcCos(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := arccos(x);

end;

procedure ExprArcTan(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := arctan(x);
end;



procedure ExprFact(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: int64;
begin
  x := Args[0].ResInteger;
  Result.ResInteger := Factorial(x);
end;


procedure ExprLog2(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := Log2(x);
end;

procedure ExprLog10(var Result: TFPExpressionResult; Const Args: TExprParameterArray);
var
  x: extended;
begin
  x := ArgToFloat(Args[0]);
  Result.resFloat := Log10(x);
end;


procedure ExprLogN(var Result: TFPExpressionResult; const Args: TExprParameterArray);
var
  n: extended;
  x: extended;
begin
  n := ArgToFloat(Args[0]);
  x := ArgToFloat(Args[1]);
  Result.resFloat := logn(n, x);
end;


procedure ExprEV(var Result: TFPExpressionResult; const Args: TExprParameterArray);
var
  av: extended;
  t: extended;
begin
  av := ArgToFloat(Args[0]);
  t := ArgToFloat(Args[1]);
  Result.resFloat := Log2(Power(av,2)/(t));
end;
procedure ExprCircleArea(var Result: TFPExpressionResult; const Args: TExprParameterArray);
var
  r: extended;
begin
  r := ArgToFloat(Args[0]);
  Result.resFloat := Power(r,2) * pi;
end;

procedure ExprCirclePerimeter(var Result: TFPExpressionResult; const Args: TExprParameterArray);
var
  r: extended;
begin
  r := ArgToFloat(Args[0]);
  Result.resFloat := 2 * pi * r;
end;


procedure ExprPerc(var Result: TFPExpressionResult; const Args: TExprParameterArray);
var
  n: extended;
  x: extended;
begin
  n := ArgToFloat(Args[0]);
  x := ArgToFloat(Args[1]);
  if (n >= 0)  then
  begin
    Result.resFloat := ((x / 100)*n)
  end
  else
  begin
    Result.resFloat := -((x / 100)*abs(n))
  end;
end;

function IsHex(s:string):boolean;
var converted : longint;
var retval : boolean;
begin
 try
 try
 s := replacestr(s, 'H', '');
 converted := hex2dec(s);
 retval := true;
 except
  on E: exception do
  begin
    retval := false;
  end;
 end;

 finally
   result := retval;
 end;

end;

function IsNumber(s:string):boolean;
var retval:boolean;
var o:extended;
begin

 retval := TryStrToFloat(s,o);
 isnumber := retval;
end;


function GetPositions(s:string): IntegerArray;
var retval :  IntegerArray;
var i:integer;
var c:integer;
begin
 c:=0;
 setlength(retval, length(retval) + 1);
 retval[c] := 1;
 c+=1;
 for i := 1 to length(s) do
 begin
   if (s[i] = '|') then
   begin
     setlength(retval, length(retval) + 1);
     retval[c] := i;
     c += 1;
   end;
 end;
 setlength(retval, length(retval) + 1);
 retval[c] := length(s);

 GetPositions := retval;
end;

function  Factorial(n:integer):qword;
begin
 if (n = 0) then
 begin
   Factorial := 1;
 end
 else
 begin
   Factorial := n * Factorial(n-1);
 end;
end;


function EV(av:extended;tempo:extended):extended;
var retval:extended;
begin
 retval := (power(av,2)) / tempo;
 retval := log2(retval);
 EV := retval;
end;

function JulianDay (yy : word; mm : word; dd:word): double;
begin
  JulianDay := 367*yy-Floor(7*(yy+Floor((mm+9)/12))/4)-Floor(3*(Floor((yy+(mm-9)/7)/100)+1)/4)+Floor(275*mm/9)+dd+1721028.5;
end;

function RisultatoToString(retval:extended):string;
var fraz:extended;
begin

       if (retval < -308000000000000)   then
       begin
         RisultatoToString := '-Inf';
         exit;
       end;
       if (retval > 308000000000000)   then
       begin
         RisultatoToString := '+Inf';
         exit;
       end;

       if (retval = Infinity) then
       begin
         RisultatoToString := '+Inf';
         exit;
       end;

       if (retval = NInfinity) then
       begin
         RisultatoToString:= '-Inf';
         exit;
       end;

       fraz := frac(retval);
       fraz := abs(fraz);

       if (fraz <= 0.00000000000001000) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,0);
         exit;
       end;

       if (fraz >= 0.199999999999999278355) and (fraz <= 0.2) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);
         exit;
       end;

       if (fraz >= 0.299999999999999278355) and (fraz <= 0.3) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.399999999999999278355) and (fraz <= 0.4) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.499999999999999278355) and (fraz <= 0.5) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.599999999999999278355) and (fraz <= 0.6) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.699999999999999278355) and (fraz <= 0.7) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.799999999999999278355) and (fraz <= 0.8) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.899999999999999278355) and (fraz <= 0.9) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       if (fraz >= 0.999999999999999278355) and (fraz <= 1) then
       begin
         RisultatoToString := floattostrf(retval, tfloatformat.ffNumber,1,1);

         exit;
       end;

       RisultatoToString:= floattostrf(retval, tfloatformat.ffNumber,1,20);

end;


function StringToBoolean(s:string):boolean;
begin
  case lowercase(s) of
  'true': Result := true;
  'false': Result := false;
  end;

end;


function GetLoopList(lst:tstringlist;indice:integer):tstringlist;
var i :integer;
var lstout:tstringlist;
begin
 lstout := tstringlist.create;
 for i := indice to lst.count - 1 do
 begin
   if (pos('!endloop', lst[i]) = 0) then
   begin
     lstout.add(lst[i]);
   end
   else
   begin
     break;
   end;
 end;
 Result := lstout;

end;

end.

