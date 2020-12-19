unit Stat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,funzioni,strutils,math;

Type StMyStat = array[1..2] of string;
Type StMyStatTot = array of  StMyStat;
var ArStMyStatTot : array of  StMyStat;
Type NMyStat = array[1..2] Of extended;
Type TNMyStat = array of  NMyStat;
var ArNMyStatTot : array of  NMyStat;
var ArNMyStatTotNew : array of  NMyStat;
var backup : array of  NMyStat;
Type RstOutliers = array[1..3] Of extended;
Type ArRstOutliers = array of RstOutliers;
var ZScores : array of  RstOutliers;
var arscores :  RstOutliers;
var OutResult : tstringlist;
var Pred : array of extended;
var Pred2 : array of extended;
var ArX : array of extended;
var sqmi : extended;
var DCook: array of extended;
var amod,bmod : extended;
var Residui: array of extended;
var PredY : array of extended;
var Leverage : array of extended;
var DCook2 : array of extended;
var trovati:array of extended;
var ModMSE: array of extended;
var Rstudent : array of extended;
var DFFITS : array of extended;
var outliers:boolean;
var Tipo:integer;
var ArGaus : array of extended;
var UnitBin : integer;
var modf : string;
var ymax,ymin:extended;

type DGaus = Record
     x : extended;
     frequenza : integer;
end;

var Istog : array of DGaus;


function Load(filepath:string;del:char):StMyStatTot;
procedure Elabora(filepath:string);
procedure DistribuzioneGaussiana(filepath:string);
procedure StatisticaRegressiva;
function Fill:TNMyStat;
procedure Ordina;
function Rimuovi(myar: array of  NMyStat;indice:integer): TNMyStat;
function CalcolaR(myar:array of  NMyStat):extended;
function Ordina2(ar:array of  RstOutliers ): ArRstOutliers;
function TrovaOutliers:ArRstOutliers;
function Rimuovi2(myar: array of  NMyStat;x:extended;y:extended): TNMyStat;
procedure VisualizzaCalcoli;
procedure OrdinaGaus;
function Esiste(x:extended):boolean;
function CalcolaFrequenza(x:extended):integer;

implementation


function Load(filepath:string;del:char):StMyStatTot;
var lst:tstringlist;
var ar:StMyStat;
var artot: StMyStatTot;
var i : integer;
var buffer:string;
begin
  lst := tstringlist.Create;
  lst.LoadFromFile(filepath);
  setlength(artot,0);

  for i := 0 to lst.Count - 1 do
  begin
    buffer := lst[i];
    ar[1] := extractword(1, buffer, [del]);
    ar[2] := extractword(2, buffer, [del]);
    setlength(artot, length(artot) + 1);
    artot[i] := ar;
  end;
  Result := artot;
end;

function Fill:TNMyStat;
var artot : TNMyStat;
var ar:StMyStat;
var Nar : NMyStat;
var i:integer;
begin
  setlength(artot, 0);
  for i := 0 to length(ArStMyStatTot) - 1 do
  begin
    ar := ArStMyStatTot[i];
    setlength(artot, length(artot)+1);
    Nar[1] := strtofloat(ar[1]);
    Nar[2] := strtofloat(ar[2]);
    artot[i] := Nar;
  end;
  Result := artot;
end;

procedure Elabora(filepath:string);
var i : integer;
var checkG:boolean;
var errore:boolean;
var ar:StMyStat;
var range1,range2,range3:extended;
var retval: array of  RstOutliers;
begin


  if (Tipo = 1) then
  begin
    checkG := false;
    ArStMyStatTot := Load(filepath,'|');
  end;
  if (Tipo = 2) then
  begin
    checkG := true;

  end;

  errore := false;


  if (checkG = false) then
  begin
  for i := 0 to length(ArStMyStatTot) - 1 do
  begin
     ar := ArStMyStatTot[i];
     if (isnumber(ar[1]) = false) then
     begin
       errore := true;
       break;
     end;
     if (isnumber(ar[2]) = false) then
     begin
       errore := true;
       break;
     end;
  end;
  end;


  if (errore = true) then exit;
  OutResult := tstringlist.create;
  case checkG of
  true:  DistribuzioneGaussiana(filepath);
  false: begin
          outliers := false;
          ArNMyStatTot := Fill;
          ArNMyStatTotNew := ArNMyStatTot;
          setlength(DCook,0);
          repeat
            StatisticaRegressiva;
          until length(ZScores) = 0;
          ArNMyStatTotNew := ArNMyStatTot;
          backup := ArNMyStatTot;
          retval := TrovaOutliers;
          outresult.add('');
          outresult.add('Method: Remove and Recalculate r');
          for i := 0 to length(retval) - 1 do
          begin
             outresult.Add('(Data removed) x: ' + floattostr(retval[i][1]) + ' , y: ' + floattostr(retval[i][2]) + ', r (Recalculated): ' + floattostr(retval[i][3]));
          end;


          //setlength(trovati,0);
          //range1 := retval[0][3] - retval[length(retval)-1][3];
          //ArNMyStatTotNew := ArNMyStatTot;
          //for i := 0 to length(ArNMyStatTotNew) - 1  do
          //begin
          //   if (ArNMyStatTotNew[i][1] = retval[0][1]) then
          //   begin
          //     setlength(trovati, length(trovati) +1 );
          //     trovati[length(trovati) - 1] := retval[0][1];
          //     break;
          //   end;
          //end;
          //ArNMyStatTotNew := ArNMyStatTot;
          //ArNMyStatTotNew := Rimuovi(ArNMyStatTotNew, i);
          //ArNMyStatTot := ArNMyStatTotNew;
          //setlength(retval,0);
          //retval := TrovaOutliers;
          //range2 :=  retval[0][3] - retval[length(retval)-1][3];
          //
          //
          //
          //if (range2 > range1) then
          //  begin
          //  repeat
          //  for i := 0 to length(ArNMyStatTotNew) - 1  do
          //  begin
          //     if (ArNMyStatTotNew[i][1] = retval[0][1]) then
          //     begin
          //       setlength(trovati, length(trovati) +1 );
          //       trovati[length(trovati) - 1] := retval[0][1];
          //       break;
          //     end;
          //  end;
          //  ArNMyStatTotNew := ArNMyStatTot;
          //  ArNMyStatTotNew := Rimuovi(ArNMyStatTotNew, i);
          //  ArNMyStatTot := ArNMyStatTotNew;
          //  setlength(retval,0);
          //  retval := TrovaOutliers;
          //  range3 := retval[0][3] - retval[length(retval) - 1][3];
          //  until range3 < range2;
          //
          //end
          //else
          //begin
          //   setlength(trovati,0);
          //end;
          //
          //
          //if (length(trovati) > 0) then
          //begin
          //  outresult.clear;
          //  StatisticaRegressiva;
          //  outresult.add('');
          //  outresult.add('Outliers');
          //  for i := 0 to length(trovati) - 1 do
          //  begin
          //    outresult.add('x: ' + floattostrf(trovati[i], tfloatformat.ffNumber, 1,20));
          //  end;
          //
          //end;

          VisualizzaCalcoli;

          outresult.SaveToFile('/home/metallaro1980/outputrst.txt');
         end;
  end;



end;

procedure VisualizzaCalcoli;
var i : integer;
begin
  outresult.add('');
   outresult.add('Input Data');
   for i := 0 to length(ArNMyStatTot) - 1 do
   begin
     outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));

   end;




   outresult.add('');
   outresult.add('Residuals');
   for i := 0 to length(Residui) - 1 do
   begin
     outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
     outresult.add(floattostrf(Residui[i], tfloatformat.ffNumber, 1, 20));
   end;

   outresult.add('');
   outresult.add('Leverage');
   for i := 0 to length(Leverage) - 1 do
   begin
     outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
     outresult.add(floattostrf(Leverage[i], tfloatformat.ffNumber, 1, 20));
   end;

   outresult.add('');
   outresult.add('Mod MSE');
   for i := 0 to length(ModMSE) - 1 do
   begin
     outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
     outresult.add(floattostrf(ModMSE[i], tfloatformat.ffNumber, 1, 20));
   end;




   outresult.add('');
   outresult.add('RStudent');
   for i := 0 to length(RStudent) - 1 do
   begin
     outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
     outresult.add(floattostrf(RStudent[i], tfloatformat.ffNumber, 1, 20));
   end;



   outresult.add('');
   outresult.add('DCook');
   for i := 0 to length(DCook2) - 1 do
   begin
     if (DCook2[i] > 1) then
     begin
       outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
       outresult.add('Potential Outlier: ' + floattostrf(DCook2[i], tfloatformat.ffNumber, 1, 20));
       outliers := true;
     end
     else
     begin
       outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
       outresult.add(floattostrf(DCook2[i], tfloatformat.ffNumber, 1, 20));
     end;
   end;

   outresult.add('');
   outresult.add('DFFITS');
   for i := 0 to length(DFFITS) - 1 do
   begin
     if (DFFITS[i] > 1) then
     begin
       outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
       outresult.add('Potential influencer: '+ floattostrf(DFFITS[i], tfloatformat.ffNumber, 1, 20));
     end
     else
     begin
       outresult.add('x: ' + floattostr(ArNMyStatTot[i][1]) + ' y: ' + floattostr(ArNMyStatTot[i][2]));
       outresult.add(floattostrf(DFFITS[i], tfloatformat.ffNumber, 1, 20));
     end;
   end;


   outresult.add('');
   outresult.add('PredY');

   for i := 0 to length(PredY) - 1 do
   begin
     outresult.add('x: ' + floattostr(ArX[i]) + ' y_pred: ' + floattostrf(PredY[i], tfloatformat.ffNumber, 1, 20));
   end;
end;




// ordinare array
//
procedure StatisticaRegressiva;
var n,vmed,vmin,vmax:extended;
var sommatoria:extended;
var sdiff:extended;
var sdiff2:extended;
var i:integer;
var artemp: NMyStat;
var s2:extended;
var sm:extended;
var range:extended;
var varianza:extended;
var devianza:extended;
var vminy,vmaxy:extended;
var sommatoriay : extended;
var rangey : extended;
var vmedy : extended;
var covarianza:extended;
var sdiffy : extended;
var varianzay : extended;
var a,b,r:extended;
var y2020:extended;
var x,y,zscore:extended;
var k:integer;
var mse:extended;
var rst1,rst2,rst3:extended;
var ary:array of extended;
begin
  Ordina;
  // x
  OutResult.Clear;
  k:=1;
  vmin := ArNMyStatTot[0][1];
  OutResult.Add('x_min: ' + floattostr(vmin));
  vmax := ArNMyStatTot[length(ArNMyStatTot) - 1][1];
  OutResult.Add('x_max: ' + floattostr(vmax));

  setlength(ary,0);
  for i := 0 to length(ArNMyStatTot) - 1 do
  begin
    setlength(ary, length(ary)+1);
    ary[i] := ArNMyStatTot[i][2];
  end;



  // y
  vminy := minvalue(ary);
  OutResult.Add('y_min: ' + floattostr(vminy));
  vmaxy := maxvalue(ary);
  OutResult.Add('y_max: ' + floattostr(vmaxy));

  ymax := vmaxy;
  ymin := vminy;

  range := vmax - vmin;
  OutResult.Add('x_range: ' + floattostr(range));
  rangey := vmaxy - vminy;
  OutResult.Add('y_range: ' + floattostr(rangey));

  n := length(ArNMyStatTot);
  sommatoria := 0;
  sommatoriay := 0;
  varianzay := 0;
  varianza := 0;
  for i := 0 to  (length(ArNMyStatTot) - 1) do
  begin
    artemp :=  ArNMyStatTot[i];
    sommatoria += artemp[1];
    sommatoriay += artemp[2];
  end;
  vmed := sommatoria / n;
  OutResult.Add('M(x): ' + floattostrf(vmed, tfloatformat.ffNumber, 1,20));
  vmedy := sommatoriay / n;
  OutResult.Add('M(y): ' + floattostrf(vmedy,tfloatformat.ffNumber, 1,20));
  devianza := 0;
  sdiff := 0;
  sdiff2 := 0;
  s2 := 0;
  sm := 0;
  sdiffy := 0;
  for i := 0 to  (length(ArNMyStatTot) - 1) do
  begin
    artemp :=  ArNMyStatTot[i];
    sdiff += Power((artemp[1] - vmed),2);
    sdiffy += Power((artemp[2] - vmedy),2);
    sdiff2 += abs(artemp[1] - vmed);
  end;

  devianza := sdiff;
  OutResult.Add('deviance: ' + floattostrf(devianza,tfloatformat.ffNumber, 1,20));

  sm := sdiff2 / n;   // scarto medio assoluto
  OutResult.Add('sm: ' + floattostrf(sm, tfloatformat.ffNumber, 1,20));

  varianza := sdiff / (n-1);         // varianza x
  OutResult.Add('variance_x: ' + floattostrf(varianza, tfloatformat.ffNumber, 1,20));

  varianzay := sdiffy / (n-1);       // varianza y
  OutResult.Add('variance_y: ' + floattostrf(varianzay, tfloatformat.ffNumber, 1,20));

  s2 := sqrt(varianza);        // scarto quadratico medio

  OutResult.Add('s2: ' + floattostrf(s2, tfloatformat.ffNumber, 1,20));

  covarianza := 0;
  for i := 0 to  (length(ArNMyStatTot) - 1) do
  begin
    artemp :=  ArNMyStatTot[i];
    covarianza += ((artemp[1]-vmed)*(artemp[2]-vmedy));
  end;
  covarianza := covarianza / (n-1);
  OutResult.Add('covariance: ' + floattostrf(covarianza, tfloatformat.ffNumber, 1,20));

  r := covarianza / (sqrt((varianza * varianzay)));    // coefficiente di correlazione r da -1 a 1
  OutResult.Add('r: ' + floattostrf(r, tfloatformat.ffNumber, 1,20));

  // il coefficiente r è influenzato dalla presenza di outliers!


    b := covarianza / varianza;
    a := vmedy - (b*vmed);



  outresult.add('y = a + bx');
  outresult.add('b: ' + floattostrf(b, tfloatformat.ffNumber, 1,20));
  outresult.add('a: ' + floattostrf(a, tfloatformat.ffNumber, 1,20));

  modf := 'y = ' + floattostr(a) + ' + (' + floattostr(b) + ' * x)';

  // y = a + b * x
  //  y2020 := a + b * 350;


  setlength(ZScores, 0);
  for i := 0 to (length(ArNMyStatTot) - 1) do
  begin
    zscore := (ArNMyStatTot[i][1] - vmed) / s2;
    y := ArNMyStatTot[i][2];
    if ((zscore >= 2.5) or (zscore <= -2.5)) then
    begin
      setlength(ZScores, length(ZScores) + 1);
      arscores[1] := x;
      arscores[2] := y;
      arscores[3] := zscore;
      ZScores[length(ZScores) - 1] := arscores;
    end;
  end;

  for i := 0 to length(ZScores) - 1 do
  begin
    ArNMyStatTot := rimuovi2(ArNMyStatTot, zscores[i][1], zscores[i][2]);

  end;

  // riempio array valoriX
  setlength(ArX,0);
  for i := 0 to length(ArNMyStatTot) - 1 do
  begin
    setlength(ArX, length(ArX) + 1);
    ArX[length(ArX)-1] := ArNMyStatTot[i][1];
  end;

  setlength(Pred, 0);
  for i := 0 to length(ArX) - 1 do
  begin
    setlength(Pred, length(Pred) + 1);
    y := a + (b * ArX[i]);
    Pred[length(Pred) - 1] := y;
  end;

  setlength(Residui, 0);
  setlength(PredY, 0);
  sommatoria := 0;
  for i := 0 to length(ArX) - 1 do
  begin
    setlength(Residui, length(residui) + 1);
    setlength(PredY, length(PredY) + 1);
    y := a + (b * Arx[i]);
    Residui[length(Residui) - 1] :=  ArNMyStatTot[i][2] - y;
    sommatoria := sommatoria + Power((ArNMyStatTot[i][2] - y),2);
    PredY[length(PredY) - 1] := y;
  end;

  setlength(Leverage,0);
  for i := 0  to length(ArX) - 1 do
  begin
    setlength(Leverage,length(Leverage) + 1);
    Leverage[length(Leverage)-1] := 1/length(ArX) + (Power((ArX[i]-vmed),2)/sdiff);
  end;

  setlength(DCook2, 0);
  mse := sommatoria / (length(Arx) - k - 1);

  outresult.add('SS: ' + floattostr(sommatoria));
  outresult.add('df: ' + floattostr(length(Arx)-k-1));
  outresult.add('MSE: ' + floattostr(mse));

  for i := 0 to length(ArX) - 1 do
  begin
    setlength(DCook2, length(DCook2) + 1);
    rst1 := (Power(Residui[i],2))/mse;
    rst2 := Leverage[i] / (Power((1-Leverage[i]),2));
    rst3 := k + 1;
    DCook2[length(DCook2) - 1] := rst1 * rst2 / rst3;
  end;

  setlength(ModMSE, 0);
  for i := 0 to length(ArX) - 1 do
  begin
    rst2 := (length(ArX)-k-1);
    rst1 := (1 - Leverage[i]) * rst2;
    setlength(ModMSE, length(ModMSE) + 1);
    ModMSE[length(ModMSE)-1] := (mse - Power(residui[i],2) /  rst1) * rst2 / (rst2-1);
  end;

  setlength(Rstudent,0);
  for i := 0 to length(ArX) - 1 do
  begin
    rst2 := Residui[i];
    rst1 := ModMSE[i] * (1-Leverage[i]);
    rst1 := sqrt(rst1);
    setlength(Rstudent,length(Rstudent)+1);
    Rstudent[length(Rstudent) - 1] := rst2 / rst1;
  end;

  setlength(DFFITS, 0);
  for i := 0 to length(ArX) - 1 do
  begin
    rst1 := Leverage[i] / (1-Leverage[i]);
    rst1 := sqrt(rst1);
    setlength(DFFITS, length(DFFITS)+1);
    DFFITS[length(DFFITS)-1] := Rstudent[i] * rst1;
  end;



end;

function CalcolaR(myar:array of  NMyStat):extended;
var n,vmed,vmin,vmax:extended;
var sommatoria:extended;
var sdiff:extended;
var sdiff2:extended;
var i:integer;
var artemp: NMyStat;
var s2:extended;
var sm:extended;
var range:extended;
var varianza:extended;
var devianza:extended;
var vminy,vmaxy:extended;
var sommatoriay : extended;
var rangey : extended;
var vmedy : extended;
var covarianza:extended;
var sdiffy : extended;
var varianzay : extended;
var a,b,r:extended;
var y:extended;
var ary:array of extended;

begin
  Ordina;
  // x
  vmin := myar[0][1];
  vmax := myar[length(myar) - 1][1];



  setlength(ary,0);
  for i := 0 to length(myar) - 1 do
  begin
    setlength(ary, length(ary)+1);
    ary[i] := myar[i][2];
  end;

  // y
  vminy := minvalue(ary);
  vmaxy := maxvalue(ary);


  range := vmax - vmin;
  rangey := vmaxy - vminy;

  n := length(myar);
  sommatoria := 0;
  sommatoriay := 0;
  varianzay := 0;
  varianza := 0;
  for i := 0 to  (length(myar) - 1) do
  begin
    artemp :=  myar[i];
    sommatoria += artemp[1];
    sommatoriay += artemp[2];
  end;
  vmed := sommatoria / n;
  vmedy := sommatoriay / n;
  devianza := 0;
  sdiff := 0;
  sdiff2 := 0;
  s2 := 0;
  sm := 0;
  sdiffy := 0;
  for i := 0 to  (length(myar) - 1) do
  begin
    artemp :=  myar[i];
    sdiff += Power((artemp[1] - vmed),2);
    sdiffy += Power((artemp[2] - vmedy),2);
    sdiff2 += abs(artemp[1] - vmed);
  end;

  devianza := sdiff;
  sm := sdiff2 / n;   // scarto medio assoluto
  varianza := sdiff / (n-1);         // varianza x
  varianzay := sdiffy / (n-1);       // varianza y

  s2 := sqrt(varianza);        // scarto quadratico medio

  covarianza := 0;
  for i := 0 to  (length(myar) - 1) do
  begin
    artemp :=  myar[i];
    covarianza += ((artemp[1]-vmed)*(artemp[2]-vmedy));
  end;
  covarianza := covarianza / (n-1);

  r := covarianza / (sqrt((varianza * varianzay)));    // coefficiente di correlazione r da -1 a 1

  b := covarianza / varianza;
  a := vmedy - (b*vmed);


  setlength(Pred2, 0);
  for i := 0 to length(ArX) - 1 do
  begin
    setlength(Pred2, length(Pred2) + 1);
    y := a + (b * ArX[i]);
    Pred2[length(Pred2) - 1] := y;
  end;



  // il coefficiente r è influenzato dalla presenza di outliers!
  Result := r;
end;


function TrovaOutliers:ArRstOutliers;
var i : integer;
var ln:integer;
var x,r,y:extended;
var retval: array of  RstOutliers;
var artemp: RstOutliers;
var j : integer;
var sommatoria:extended;
var d:extended;
var va:extended;
begin
  setlength(retval,0);
  ArNMyStatTotNew := ArNMyStatTot;
  ln := length(ArNMyStatTotNew) - 1;
  for i := 0 to ln do
  begin
    ArNMyStatTotNew := ArNMyStatTot;
    y := ArNMyStatTotNew[i][2];
    x := ArNMyStatTotNew[i][1];
    ArNMyStatTotNew := Rimuovi(ArNMyStatTotNew, i);
    r := CalcolaR(ArNMyStatTotNew);
    artemp[1] := x;
    artemp[2] := y;
    artemp[3] := r;
    setlength(retval,length(retval)+1);
    retval[length(retval)-1] := artemp;
    sommatoria := 0;

    for j := 0 to length(Pred) - 1 do
    begin
       va := 0;
       va :=  Pred[j] - Pred2[j];
       va := abs(va);
       va := Power(va,2);
       sommatoria := sommatoria + va;
    end;
    d := sommatoria / sqmi;
    setlength(DCook,length(DCook)+1);
    DCook[length(DCook)-1] := d;



  end;
  retval := Ordina2(retval);
  Result := retval;
end;



function Rimuovi(myar: array of  NMyStat;indice:integer): TNMyStat;
var retval:array of NMyStat;
var i : integer;
var j : integer;
begin
  setlength(retval,0);
  j := 0;
  for i := 0 to length(myar) - 1 do
  begin
    if (i <> indice) then
    begin
      setlength(retval,length(retval)+1);
      retval[j] := myar[i];
      retval[j][1] := myar[i][1];
      retval[j][2] := myar[i][2];
      j += 1;
    end;
  end;
  Result := retval;
end;

function Rimuovi2(myar: array of  NMyStat;x:extended;y:extended): TNMyStat;
var retval:array of NMyStat;
var i : integer;
var j : integer;
begin
  setlength(retval,0);
  j := 0;
  for i := 0 to (length(myar) - 1) do
  begin
    if ((myar[i][1] <> x) and (myar[i][2] <> y)) then
    begin
      setlength(retval,length(retval)+1);
      retval[j] := myar[i];
      retval[j][1] := myar[i][1];
      retval[j][2] := myar[i][2];
      j += 1;
    end;
  end;
  Result := retval;
end;


function Ordina2(ar:array of  RstOutliers ): ArRstOutliers;
var i,jmin,j : integer;
var ar1,ar2,bck,nxt: RstOutliers;
var ln:integer;
var retval : array of  RstOutliers;
begin
  ln :=  length(ar);
  setlength(retval,0);
  for i := 0 to ln - 1 do
  begin
    setlength(retval, length(retval) + 1);
    retval[i][1] := ar[i][1];
    retval[i][2] := ar[i][2];
    retval[i][3] := ar[i][3];
  end;

  ln :=  length(retval);

  for i := 0 to ln - 1 do
  begin
     jmin := i;
     j := i + 1;
     while (j < ln) do
     begin
        ar1 :=  retval[j];
        ar2 := retval[jmin];
        if (ar1[3] > ar2[3]) then
        begin
          jmin := j;
        end;
        j := j + 1;
     end;
     bck := retval[jmin];
     nxt := retval[i];
     retval[jmin] := nxt;
     retval[i] := bck;
  end;
  Result := retval;

end;



procedure Ordina;
var i,jmin,j : integer;
var ar1,ar2,bck,nxt: NMyStat;
var ln:integer;
begin
  ln :=  length(ArNMyStatTot);
  for i := 0 to ln - 1 do
  begin
     jmin := i;
     j := i + 1;
     while (j < ln) do
     begin
        ar1 :=  ArNMyStatTot[j];
        ar2 := ArNMyStatTot[jmin];
        if (ar1[1] < ar2[1]) then
        begin
          jmin := j;
        end;
        j := j + 1;
     end;
     bck := ArNMyStatTot[jmin];
     nxt := ArNMyStatTot[i];
     ArNMyStatTot[jmin] := nxt;
     ArNMyStatTot[i] := bck;
  end;

end;


procedure OrdinaGaus;
var i,jmin,j : integer;
var ar1,ar2,bck,nxt: extended;
var ln:integer;
begin
  ln :=  length(ArGaus);
  for i := 0 to ln - 1 do
  begin
     jmin := i;
     j := i + 1;
     while (j < ln) do
     begin
        ar1 :=  ArGaus[j];
        ar2 := ArGaus[jmin];
        if (ar1 < ar2) then
        begin
          jmin := j;
        end;
        j := j + 1;
     end;
     bck := ArGaus[jmin];
     nxt := ArGaus[i];
     ArGaus[jmin] := nxt;
     ArGaus[i] := bck;
  end;

end;


// ordino gli elementi in ordine crescente
// calcolo il valore min e massimo ... moda media mediana range
// frequenza degli elementi nelle y
// una volta ottenuto il grafico istogramma ci si puo' applicare
// la gaussiana e si vede se è simmetrica o asimmetrica
procedure DistribuzioneGaussiana(filepath:string);
var i,j : integer;
var artemp : array of string;
var buffer:string;
var dato:extended;
var lst:tstringlist;
var xmin,xmax,moda,mediana,media:extended;
var n : integer;
var sommatoria:extended;
var x:extended;
var frequenza:integer;
var rangex:extended;
var bin:integer;
var sqm : extended;
var sommatoria2 : extended;
var amp:integer;
var xmedio:extended;
begin

  lst := tstringlist.create;
  lst.LoadFromFile(filepath);
  setlength(ArGaus,0);
  setlength(Istog,0);


  // carica i dati separati da una virgola (,)
  for i := 0 to lst.Count - 1 do
  begin
    buffer := lst[i];
    artemp := buffer.Split(',');
    for j := 0 to length(artemp) - 1 do
    begin
       if (isnumber(trim(artemp[j])) = true) then
       begin
         setlength(ArGaus, length(ArGaus) + 1);
         dato := strtofloat(trim(artemp[j]));
         ArGaus[length(ArGaus)-1] := dato;
       end;
    end;
  end;

  // li ordino
  OrdinaGaus;
  sommatoria := 0;
  sommatoria2 := 0;
  sqm := 0;
  xmin := ArGaus[0];
  xmax := ArGaus[length(ArGaus)-1];
  n := length(ArGaus);
  rangex := xmax - xmin;
  bin := ceil(1+log2(n));


  for i := 0 to length(ArGaus) - 1 do
  begin
    sommatoria += ArGaus[i];

  end;
  media := sommatoria / n;
  xmedio := media;

  for i := 0 to length(ArGaus) - 1 do
  begin
     sommatoria2 += Power((ArGaus[i]-media),2);
  end;

  sqm := sommatoria2 / n;
  bin := round(power(n, 1/3));
  UnitBin := bin;
  amp := 0;
  repeat
    amp += bin;
    setlength(Istog, length(Istog)+1);
    Istog[length(Istog)-1].frequenza := 0;
    Istog[length(Istog)-1].x := round(amp);


  until amp >= floor(ArGaus[length(ArGaus) - 1]+1);

  for i := 0 to length(ArGaus) - 1 do
  begin
    for j := 0 to length(Istog) - 1 do
    begin
      if (ArGaus[i] <= Istog[j].x) then
      begin
         Istog[j].frequenza += 1;
         break;
      end;
    end;

  end;

end;


function Esiste(x:extended):boolean;
var i : integer;
var retval : boolean;
begin
  retval := false;
  for i := 0 to length(Istog) - 1 do
  begin
    if (Istog[i].x = x) then
    begin
      retval := true;
      break;
    end;
  end;
  Result := retval;
end;

function CalcolaFrequenza(x:extended):integer;
var frequenza:integer;
var i : integer;
begin
  frequenza := 0;
  for i := 0 to length(ArGaus) - 1 do
  begin
    if (ArGaus[i] = x) then
    begin
      frequenza += 1;
    end;
  end;

  Result := frequenza;
end;

end.

