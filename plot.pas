unit Plot;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  TAGraph, TASeries, funzioni, Math,Types,TAFuncSeries;

type

  { TForm2 }

  TForm2 = class(TForm)
    Chart1: TChart;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    Image1: TImage;
    Image2: TImage;
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  flag:boolean;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormShow(Sender: TObject);
var i,j : integer;
var artemp:MathResult;
var tfb : boolean;

var ln:integer;
  var arm: array of MathResult;
  var ymin,ymax:extended;
  var ary : array of extended;
begin
  self.position := poScreenCenter;
  self.caption := 'Functions Plotter';
  chart1.Series.Clear;
  combobox1.items.Clear;

  tfb := false;

  setlength(ary,0);
//  ln := length(artotal) - 1;
  for j := 0 to length(arfunc) - 1 do
  begin
    cls := tlineseries.Create(Form2);
    chart1.AddSeries(cls);
    chart1.Proportional:= false;



    if (j = 0) then cls.SeriesColor:= clpurple;
    if (j = 1) then cls.seriescolor := clblue;
    if (j = 2) then cls.seriescolor := clolive;
    cls.Title:= titololst[j];

    if (TFArePresent(titololst[j]) = true) then tfb := true;

    combobox1.Items.add(cls.title);
    arm := arfunc[j];
    ln := length(arm);
    for i := 0 to ln - 1 do
    begin
      artemp := arm[i];
      if (IsNan(artemp[1]) = false) then
      begin
        cls.AddXY(artemp[3], artemp[1]);
        setlength(ary, length(ary)+1);
        ary[length(ary) - 1] := artemp[1];
      end
      else
      begin
        cls.addxy(artemp[3], nan);
      end;


    end;
    cls.ShowPoints:= flag;
    cls.ListSource.Sort;
  end;

  ymin := minvalue(ary);
  ymax := maxvalue(ary);
  if ((ymax > 100) and (tfb = true)) then
  begin
    ymax := 100;
  end;
  if ((ymin < -100) and (tfb = true)) then
  begin
    ymin := -100;
  end;

  chart1.extent.YMin := ymin;
  chart1.extent.YMax := ymax;
  chart1.extent.UseYMax := true;
  chart1.extent.UseYMin := true;

  combobox1.ItemIndex:= 0;



end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  self.close;
end;

procedure TForm2.Image2Click(Sender: TObject);
var i : integer;
begin
i := combobox1.ItemIndex;
if (i = -1) then exit;
if colordialog1.Execute then
begin
  tlineseries(chart1.series[i]).SeriesColor:= colordialog1.Color;
end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
end;

procedure TForm2.CheckBox1Change(Sender: TObject);
var i : integer;
begin
i := combobox1.ItemIndex;
if (i = -1) then exit;
tlineseries(chart1.series[i]).ShowPoints:= checkbox1.Checked;

end;

procedure TForm2.CheckBox2Change(Sender: TObject);
var i : integer;
begin
i := combobox1.ItemIndex;
if (i = -1) then exit;
tlineseries(chart1.series[i]).ShowLines := checkbox2.Checked;

end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  chart1.Series.Clear;
end;

end.

