unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, TAGraph,
  TASeries, Stat,math,TATypes;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    Chart2: TChart;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;


implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  self.Caption:= 'Stat';
end;

procedure TForm3.Button1Click(Sender: TObject);
var i :integer;
var maxx : extended;
var maxx2 : extended;
var minx:extended;
var minx2 : extended;
var c:integer;
var cls:TLineSeries;
begin
    if (radiobutton1.Checked = true) then Tipo := 2;
    if (radiobutton2.Checked = true) then Tipo := 1;
    amod := strtofloat(edit1.text);
    bmod := strtofloat(edit2.text);
    sqmi := strtofloat(edit3.text);


    chart1.Series.Clear;
    Elabora('/home/metallaro1980/prova.txt');

    if (tipo = 2) then
    begin
      chart1.Visible:=true;
      chart2.visible:=false;
      chart1barseries1.Clear;
      chart1barseries1.AddXY(0,0);
      c := length(Istog);
      maxx :=  ceil(Istog[length(Istog)-1].x);
      maxx2 := ArGaus[length(ArGaus)-1];
      minx := ArGaus[0];
      minx2 := ArGaus[0];

      chart1.AxisList[1].Intervals.MaxLength:= UnitBin;
      chart1.AxisList[1].Intervals.MinLength:= UnitBin;
      chart1.AxisList[1].Intervals.Count := c;
      chart1.AxisList[1].Range.max := maxx2;
      chart1.AxisList[1].Range.min := minx2;
      chart1.AxisList[1].Range.UseMax := true;
      chart1.AxisList[1].Range.UseMin := true;
      chart1.Extent.XMax := maxx;
      chart1.Extent.XMin := minx;
      Chart1.extent.usexmin := true;
      chart1.extent.usexmax := true;

      for i := 0 to length(Istog) - 1 do
      begin
        chart1barseries1.AddXY(Istog[i].x, Istog[i].frequenza);
      end;

      chart1.AxisList[1].Intervals.Tolerance:= 5;
      chart1.AxisList[1].Intervals.MaxLength:= UnitBin;
      chart1.AxisList[1].Intervals.MinLength:= UnitBin;
      chart1.AxisList[1].Intervals.Count := c;
      chart1.AxisList[1].Range.max := maxx2;
      chart1.AxisList[1].Range.min := minx2;
      chart1.AxisList[1].Range.UseMax := true;
      chart1.AxisList[1].Range.UseMin := true;
      chart1.Extent.XMax := maxx;
      chart1.Extent.XMin := minx;
      Chart1.extent.usexmin := true;
      chart1.extent.usexmax := true;
      chart1.AxisList[1].Intervals.MaxLength:= UnitBin;
      chart1.AxisList[1].Intervals.MinLength:= UnitBin;
      chart1.AxisList[1].Intervals.Count := c;
      chart1.AxisList[1].Range.max := maxx2;
      chart1.AxisList[1].Range.min := minx2;
      chart1.AxisList[1].Range.UseMax := true;
      chart1.AxisList[1].Range.UseMin := true;
      chart1.Refresh;
      exit;

    end;


    if (tipo = 1) then
    begin
      chart2.visible := true;
      chart1.visible := false;
      chart2.Series.Clear;

      chart2.AxisList[1].Range.max := ArNMyStatTot[length(ArNMyStatTot)-1][1]+1;
      chart2.AxisList[1].Range.min := ArNMyStatTot[0][1]-1;
      chart2.AxisList[1].Range.UseMax := true;
      chart2.AxisList[1].Range.UseMin := true;
      chart2.axislist[0].range.Max := ymax+1;
      chart2.axislist[0].range.min := ymin-1;
      chart2.AxisList[0].Range.UseMax := true;
      chart2.AxisList[0].Range.UseMin := true;



      chart2.Extent.XMax := ArNMyStatTot[length(ArNMyStatTot)-1][1]+1;
      chart2.Extent.XMin := ArNMyStatTot[0][1]-1;
      chart2.extent.YMax := ymax+1;
      chart2.extent.YMin := ymin-1;
      Chart2.extent.usexmin := true;
      chart2.extent.usexmax := true;
      chart2.extent.useymax := true;
      chart2.extent.useymin := true;
      chart2.Legend.Visible:= true;
      cls := TLineSeries.Create(Form3);
      chart2.AddSeries(cls);
      cls.LineType:= ltNone;
      cls.ShowPoints:= true;
      cls.Pointer.Brush.Color := clpurple;
      cls.Pointer.Pen.Color := clpurple;
      cls.pointer.Style:= psCircle;
      cls.Title:= 'Input-Data';

      for i := 0 to length(ArNMyStatTot) - 1 do
      begin
        cls.AddXY(ArNMyStatTot[i][1], ArNMyStatTot[i][2]);
        cls.ShowPoints:= true;
      end;
      cls.ShowPoints:= true;



      cls := TLineSeries.Create(Form3);
      chart2.AddSeries(cls);
      cls.ShowPoints:= false;
      cls.Pointer.Brush.Color := clblue;
      cls.Pointer.Pen.Color := clblue;
      cls.SeriesColor:= clblue;
      cls.pointer.Style:= psCircle;
      cls.Title:= modf;


      for i := 0 to length(ArNMyStatTot) - 1 do
      begin
        cls.AddXY(ArNMyStatTot[i][1], PredY[i]);
        cls.ShowPoints:= false;
      end;
      cls.ShowPoints:= false;

      listbox1.Items.LoadFromFile('/home/metallaro1980/outputrst.txt');
    end;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  chart1.Extent.XMax := strtofloat(edit4.text);
  chart1.AxisList[1].Range.min := strtofloat(edit8.text);
  chart1.AxisList[1].Range.max := strtofloat(edit5.text);
  chart1.AxisList[1].Intervals.Count := strtoint(edit6.text);
  chart1.Extent.XMin := strtofloat(edit7.text);
end;

end.

