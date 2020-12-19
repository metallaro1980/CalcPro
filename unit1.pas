unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  ExtDlgs, Menus, ExtCtrls, MaskEdit, Buttons, EditBtn, SpinEx, Math, funzioni,
  strutils, dateutils, versiontypes, versionresource, Plot, Stat, Unit2,
  fileutil, LazFileUtils, DateTimePicker, Types, lcltype, clipbrd;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Button1: TButton;
    Button10: TButton;
    Button100: TButton;
    Button101: TButton;
    Button102: TButton;
    Button103: TButton;
    Button104: TButton;
    Button105: TButton;
    Button106: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button4: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button5: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button6: TButton;
    Button60: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button69: TButton;
    Button7: TButton;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    Button74: TButton;
    Button75: TButton;
    Button76: TButton;
    Button77: TButton;
    Button78: TButton;
    Button79: TButton;
    Button8: TButton;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Button83: TButton;
    Button84: TButton;
    Button85: TButton;
    Button86: TButton;
    Button87: TButton;
    Button88: TButton;
    Button89: TButton;
    Button9: TButton;
    Button90: TButton;
    Button91: TButton;
    Button92: TButton;
    Button93: TButton;
    Button94: TButton;
    Button95: TButton;
    Button96: TButton;
    Button97: TButton;
    Button98: TButton;
    Button99: TButton;
    CalendarDialog1: TCalendarDialog;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    UpDown1: TUpDown;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button100Click(Sender: TObject);
    procedure Button101Click(Sender: TObject);
    procedure Button102Click(Sender: TObject);
    procedure Button103Click(Sender: TObject);
    procedure Button104Click(Sender: TObject);
    procedure Button105Click(Sender: TObject);
    procedure Button106Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button71Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button73Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure Button75Click(Sender: TObject);
    procedure Button76Click(Sender: TObject);
    procedure Button77Click(Sender: TObject);
    procedure Button78Click(Sender: TObject);
    procedure Button79Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
     procedure Button81Click(Sender: TObject);
     procedure Button82Click(Sender: TObject);
     procedure Button83Click(Sender: TObject);
     procedure Button84Click(Sender: TObject);
     procedure Button85Click(Sender: TObject);
     procedure Button86Click(Sender: TObject);
     procedure Button87Click(Sender: TObject);
     procedure Button88Click(Sender: TObject);
     procedure Button89Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button90Click(Sender: TObject);
    procedure Button91Click(Sender: TObject);
    procedure Button92Click(Sender: TObject);
    procedure Button93Click(Sender: TObject);
    procedure Button94Click(Sender: TObject);
    procedure Button95Click(Sender: TObject);
    procedure Button96Click(Sender: TObject);
    procedure Button97Click(Sender: TObject);
    procedure Button98Click(Sender: TObject);
    procedure Button99Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1EditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Libera;
    procedure AggiornaStatusBar;

  private
    var operazione:string;
    var  n1,n2 : extended;
    var Undos : tstringlist;
    var Undo : boolean;
    var Inserimento : boolean;
    var version:string;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


FUNCTION resourceVersionInfo: STRING;

(* Unlike most of AboutText (below), this takes significant activity at run-    *)
(* time to extract version/release/build numbers from resource information      *)
(* appended to the binary.                                                      *)

VAR     Stream: TResourceStream;
        vr: TVersionResource;
        fi: TVersionFixedInfo;

BEGIN
  RESULT:= '';
  TRY

(* This raises an exception if version info has not been incorporated into the  *)
(* binary (Lazarus Project -> Project Options -> Version Info -> Version        *)
(* numbering).                                                                  *)

    Stream:= TResourceStream.CreateFromID(HINSTANCE, 1, PChar(RT_VERSION));
    TRY
      vr:= TVersionResource.Create;
      TRY
        vr.SetCustomRawDataStream(Stream);
        fi:= vr.FixedInfo;
        RESULT := IntToStr(fi.FileVersion[0]) + '.' + IntToStr(fi.FileVersion[1]) + '.' + IntToStr(fi.FileVersion[2]) + '.' + IntToStr(fi.FileVersion[3]);
        vr.SetCustomRawDataStream(nil);
      FINALLY
        vr.Free;
      END;
    FINALLY
      Stream.Free;
    END;
  EXCEPT
  END;
END;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '0';
    edit1.SelStart:= length(edit1.text);
    inserimento := false;
    exit;
  end;


  if (checkbox1.checked = true) or (checkbox5.checked = true) then
  begin
//    If (edit1.text = '0') and (checkbox1.checked = true) then edit1.clear;
    edit1.text := edit1.text + '0';
    inserimento := false;
    exit;
  end;


  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') or (edit1.text = '') then
  begin
    if (inserimento = false) then
    begin
      edit1.text := '0.';
      exit;
    end;
    if (inserimento = true) then
    begin
      edit1.text := '0';
      Inserimento := false;
      exit;
    end;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '0.';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '0';
  end;
end;



procedure TForm1.Button20Click(Sender: TObject);
var mn1:extended;
begin
try
if (checkbox2.checked = true) then
begin
  if button20.caption = 'asin' then  edit1.seltext  := 'arcsin(';
  if button20.caption = 'asec' then edit1.seltext := 'arcsec(';
  edit1.SelStart:= length(edit1.text);
  exit;
end;

  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  if (radiobutton1.checked = true) then mn1 := mn1 * pi/180;
  if button20.Caption = 'asin' then  mn1 := arcsin(mn1);
  if button20.caption = 'asec' then mn1 :=  arccos(1/mn1);
  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;
except
  on e: exception do
  edit1.text := 'Error!';
end;
end;




procedure TForm1.Button21Click(Sender: TObject);
var mn1:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    if (button21.caption = 'acos') then edit1.seltext  := 'arccos(';
    if (button21.caption = 'acsc') then edit1.seltext := 'arccsc(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  if (radiobutton1.checked = true) then mn1 := mn1 * pi/180;
  if (button21.caption = 'acos') then  mn1 := arccos(mn1);
  if (button21.caption = 'acsc') then mn1 := arcsin(1/mn1);
  edit1.text := RisultatoToString(mn1);
    inserimento := true;
   Ans := edit1.text;
   AggiornaStatusBar;

except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button22Click(Sender: TObject);
var mn1:extended;
begin
  mn1 := pi;

  radiobutton2.checked := true;
  if (checkbox2.checked =true) then
  begin
    edit1.seltext := floattostrf(mn1, tfloatformat.ffNumber, 1,50);
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  edit1.text := floattostrf(mn1, tfloatformat.ffNumber, 1,50);

end;

procedure TForm1.Button23Click(Sender: TObject);
var mn1:extended;
var mn2:int64;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '^2';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (checkbox1.checked = true) then
  begin
    mn2 := HexToInt(edit1.text);
    mn1 := mn2;
  end
  else
  begin
    if (checkbox5.checked = true) then
    begin
      mn2 := bintodec(edit1.text);
      mn1 := mn2;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    mn1 := strtofloat(edit1.text);
  end;

  end;



  mn1 := power(mn1, 2);
  if (checkbox1.checked = true) then
  begin
    edit1.text := inttohex(round(mn1), CifreH)+'H';
    inserimento:=true;
  end
  else
  begin
      edit1.text := RisultatoToString(mn1);
      inserimento:=true;
  end;
  Ans := edit1.text;
  AggiornaStatusBar;
except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button24Click(Sender: TObject);
var mn1:extended;
var mn2:int64;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '^3';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (checkbox1.checked = true) then
  begin
    mn2 := HexToInt(edit1.text);
    mn1 := mn2;
  end
  else
  begin
    if (checkbox5.checked = true) then
    begin
      mn2 := bintodec(edit1.text);
      mn1 := mn2;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    mn1 := strtofloat(edit1.text);
  end;

  end;
  mn1 := power(mn1, 3);
  if (checkbox1.checked = true) then
  begin
    edit1.text := inttohex(round(mn1), CifreH)+'H';
    inserimento := true;
  end
  else
  begin
     edit1.text := RisultatoToString(mn1);
     inserimento := true;
  end;
  Ans := edit1.text;
  AggiornaStatusBar;
except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button25Click(Sender: TObject);
var mn1:int64;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '^';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (checkbox1.checked = true) then
  begin
    if (IsHex2(edit1.text) = false) then exit;
    mn1 := HexToInt(edit1.text);
    n1 := mn1;
  end
  else
  begin
  if (checkbox1.checked = true) then
  begin
    mn1 := bintodec(edit1.text);
    n1 := mn1;
  end
  else
  begin
  if (isnumber(edit1.text) = false) then exit;
  n1 := strtofloat(edit1.text);
  end;

  end;



  operazione := 'x^y';
  edit1.text := '0';
  inserimento := true;
end;

procedure TForm1.Button26Click(Sender: TObject);
var mn1:extended;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '1/';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  mn1 := 1/mn1;
  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

end;

procedure TForm1.Button27Click(Sender: TObject);
var mn1:extended;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '^(1/2)';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  mn1 := sqrt(mn1);
  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;
end;

procedure TForm1.Button28Click(Sender: TObject);
var mn1:integer;
var retval:qword;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  :=  'fact(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtoint(edit1.text);
  if (mn1 < 0) then exit;
  retval := Factorial(mn1);
  edit1.text := inttostr(retval);
  inserimento:=true;
  Ans := edit1.text;
  AggiornaStatusBar;
except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '^(1/)';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  n1 := strtofloat(edit1.text);
  operazione := 'x^(1/y)';
  edit1.text := '0';
  inserimento := true;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '8';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;



  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '8';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '8';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '8';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '8';
  end;
end;




procedure TForm1.BitBtn3Click(Sender: TObject);
begin
    datetimepicker1.DateTime := now;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  datetimepicker2.DateTime := now;
end;

procedure TForm1.Button100Click(Sender: TObject);
begin
  edit20.Text := '0';
  edit21.Text := '0';

end;

procedure TForm1.Button101Click(Sender: TObject);
begin
   if (checkbox2.checked = false) then exit;
   if (isnumber(edit22.text) = false) then exit;
   edit1.seltext := decimaldegreeconverter(strtofloat(edit22.text));
   edit1.SelStart:= length(edit1.text) ;

end;

procedure TForm1.Button102Click(Sender: TObject);
var st1,st2,st3:string;
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  st1 := edit17.text;
  st2 := edit18.text;
  st3 := edit19.text;
  edit1.seltext := st1 + 'h' + st2 + 'm' + st3 + 's';
  edit1.SelStart:= length(edit1.text) ;



end;

procedure TForm1.Button103Click(Sender: TObject);
var st1,st2,st3:string;
begin
  if (checkbox2.checked = false) then exit;
  st1 := edit23.text;
  st2 := edit24.text;
  st3 := edit25.text;
  if (checkbox4.checked = true) then
  begin
    edit1.seltext := '-' + st1 + '°' + st2 + '′' + st3 + '″';
  end
  else
  begin
    edit1.seltext := st1 + '°' + st2 + '′' + st3 + '″';
  end;
  edit1.SelStart:= length(edit1.text) ;

end;

procedure TForm1.Button104Click(Sender: TObject);
var st1,st2,st3:string;
var h,m,s : extended;
begin
  if (checkbox1.checked = true) then exit;
  if (checkbox2.checked = true) then
  begin
    if (isnumber(edit17.text) = false) then exit;
    if (isnumber(edit18.text) = false) then exit;
    if (isnumber(edit19.text) = false) then exit;
    if (pos('.', edit17.text) > 0) then exit;
    if (pos(',', edit17.text) > 0) then exit;
    if (pos(',', edit18.text) > 0) then exit;

    if (pos('.', edit18.text) > 0) then
    begin
      if (strtofloat(edit19.text) <> 0) then exit;
    end;


    h := strtofloat(edit17.text);
    m := strtofloat(edit18.text);
    s := strtofloat(edit19.text);
    h := abs(h);
    m := abs(m);
    s := abs(s);
    if (m > 60) then exit;
    if (s > 60) then exit;

    st1 := floattostr(abs(h));
    st2 := floattostr(abs(m));
    st3 := floattostr(abs(s));



    edit1.seltext := 'TOHOUR(' + st1 + ' , ' + st2 + ' , '  + st3 + ')' ;
    edit1.SelStart:= length(edit1.text);

  end;
end;

procedure TForm1.Button105Click(Sender: TObject);
begin
    if (checkbox1.checked = true) and (checkbox2.checked = false)  then exit;
    if (checkbox5.checked = true) and (checkbox2.checked = false)  then exit;
    if ((checkbox1.checked = true) or (checkbox5.checked = true)) and (checkbox2.checked = true)  then
    begin
      if (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') Or (edit1.text = 'Nan')  then
      begin
        exit;
      end;
      if (edit1.text <> '') then
      begin
        edit1.Text := edit1.text + button105.caption;
        edit1.selstart := length(edit1.text);
      end;

    end;
end;

procedure TForm1.Button106Click(Sender: TObject);
var mn1:longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '^(-';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (checkbox1.checked = true) then
  begin
    if (IsHex2(edit1.text) = false) then exit;
    mn1 := HexToInt(edit1.text);
    n1 := mn1;
  end
  else
  begin
  if (isnumber(edit1.text) = false) then exit;
  n1 := strtofloat(edit1.text);
  end;
  operazione := 'x^(-y)';
  edit1.text := '0';
  inserimento := true;
end;




procedure TForm1.Button11Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '9';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;



  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '9';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '9';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '9';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '9';
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var mn1 : longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '/';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (operazione = 'EV') then
  begin
    if (pos('/', edit1.text) = 0) then
    begin
      edit1.text := edit1.text + '/';
    end;
    exit;
  end;

  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
     if (checkbox5.checked = true) then
     begin
       mn1 := BinToDec(edit1.text);
       n1 := mn1;
     end
     else
     begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;
  end;
  operazione := '/';
  edit1.text := '0';
  inserimento := true;
 end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var mn1:longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '*';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
     if (checkbox5.checked = true) then
     begin
       mn1 := BinToDec(edit1.text);
       n1 := mn1;
     end
     else
     begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;

  end;
  operazione := '*';
  edit1.text := '0';
  inserimento := true;
  end;
end;

procedure TForm1.Button14Click(Sender: TObject);
var mn1:longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '-';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
     if (checkbox5.checked = true) then
     begin
       mn1 := BinToDec(edit1.text);
       n1 := mn1;
     end
     else
     begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;
  end;
  operazione := '-';
  edit1.text := '0';
  inserimento := true;
 end;
end;

procedure TForm1.Button15Click(Sender: TObject);
var mn1 : longint;
begin

  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '+';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
     if (checkbox5.checked = true) then
     begin
       mn1 := BinToDec(edit1.text);
       n1 := mn1;
     end
     else
     begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;
  end;
  operazione := '+';
  edit1.text := '0';
  inserimento := true;
 end;
end;

procedure TForm1.Button16Click(Sender: TObject);
var mn1:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    if (button16.caption = 'sin') then  edit1.seltext  := 'sin(';
    if (button16.caption = 'sec') then  edit1.seltext  := 'sec(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  if (radiobutton1.checked = true) then  mn1 := (mn1/180) * pi;
  if (button16.caption = 'sin') then  mn1 := sin(mn1);
  if (button16.caption = 'sec') then  mn1 := 1/cos(mn1);
  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

  except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var mn1:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    if (button17.Caption = 'cos') then edit1.seltext  :=  'cos(';
    if (button17.Caption = 'csc') then edit1.seltext := 'csc(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  if (radiobutton1.checked = true) then  mn1 := mn1 * pi/180;
  if (button17.Caption = 'cos') then   mn1 := cos(mn1);
  if (button17.Caption = 'csc') then   mn1 := 1/sin(mn1);

  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button18Click(Sender: TObject);
var mn1:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.SelText:= 'tan(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  mn1 := mn1 * pi/180;
  mn1 := tan(mn1);
  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button19Click(Sender: TObject);
var mn1:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  :=  'arctan(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  if (radiobutton1.checked = true) then  mn1 := mn1 * pi/180;
  mn1 := arctan(mn1);
  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '1';
    edit1.SelStart:= length(edit1.text);
    inserimento := false;
    exit;
  end;


  if (checkbox1.checked = true) or (checkbox5.checked = true) then
  begin
//    If (edit1.text = '0') and (checkbox1.checked = true) then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '1';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '1';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '1';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '1';
  end;
end;

procedure TForm1.Button30Click(Sender: TObject);
var mn1:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  :=  'log2(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


   if (isnumber(edit1.text) = false) then exit;
   mn1 := strtofloat(edit1.text);
   mn1 := log2(mn1);
   edit1.text := floattostr(mn1);
   Ans := edit1.text;
   inserimento := true;
   AggiornaStatusBar;

except
on e: exception do
   edit1.text := 'Error!';
end;
end;

procedure TForm1.Button31Click(Sender: TObject);
var mn1:extended;
begin
try
   if (checkbox2.checked = true) then
   begin
     edit1.seltext  :=  'log10(';
     edit1.SelStart:= length(edit1.text);
     exit;
   end;

   if (isnumber(edit1.text) = false) then exit;
   mn1 := strtofloat(edit1.text);
   mn1 := log10(mn1);
   edit1.text := floattostr(mn1);
   Ans := edit1.text;
   inserimento := true;
   AggiornaStatusBar;


except
on e: exception do
   edit1.text := 'Error!';
end;
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := 'logn(,)';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (isnumber(edit1.text) = false) then exit;
  n1 := strtofloat(edit1.text);
  operazione := 'logn(x)';
  edit1.text := '0';
  inserimento := true;
end;

procedure TForm1.Button33Click(Sender: TObject);
var retval:MathResult;
var st:string;
begin
  if (checkbox2.checked = true) then
  begin
    st := 'EV(' + combobox1.Text + ',(' + combobox2.text + '))';
     edit1.seltext  :=  st;
     edit1.SelStart:= length(edit1.text);
  //  retval := EVSolver(edit1.text);
  //  edit1.text := RisultatoToString(retval[1]);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  n1 := strtofloat(edit1.text);
  operazione := 'EV';
  edit1.text := '0';
  inserimento := true;
end;

procedure TForm1.Button34Click(Sender: TObject);
var st:string;
var iar:IntegerArray;
var i:integer;
var k:integer;
var ind:integer;
var ar : array of string;
var elab:string;

begin
  if (pos('|', edit1.text) = 0) then
  begin
       edit1.text := trim(edit1.text);
       if (leftstr(edit1.text,1) <> '+') and (leftstr(edit1.text,1) <> '-') then
       begin
          edit1.text := '+' + edit1.text;
          exit;
       end;

       if (leftstr(edit1.text,1) = '+') then
       begin
          st := edit1.text;
          st := replacestr(st,'+','');
          edit1.text := '-' + st;
          exit;
       end;

       if (leftstr(edit1.text,1) = '-') then
       begin
          st := edit1.text;
          st := replacestr(st,'-','');
          edit1.text := '+' + st;
          exit;
       end;
  end
  else
  begin
    if (edit1.SelStart = -1) then exit;
    i := edit1.SelStart;
    st := trim(edit1.text);
    iar := GetPositions(st);

    for k := 0 to length(iar) - 1 do
    begin
      if (i <= iar[k]) then
      begin
         //1   5     15   25
         if (k <> 0) then
         begin
           ind := k;
           break;
         end
         else
         begin
           ind := 1;
           break;
         end;
      end;
    end;

    ar := st.Split('|');
    ind -= 1;
    elab := ar[ind];
    if (leftstr(elab,1) <> '+') and (leftstr(elab,1) <> '-') then
    begin
       elab := '-' + elab;
       ar[ind] := elab;
       st := '';
       for i := 0 to length(ar) - 1 do
       begin
          st += ar[i] + '|';
       end;
       if rightstr(st,1) = '|' then st[length(st)] := ' ';
       st := trim(st);
       edit1.text := st;
       exit;
    end;

    if (leftstr(elab,1) = '+')  then
    begin
       elab := replacestr(elab, '+', '-');
       ar[ind] := elab;
       st := '';
       for i := 0 to length(ar) - 1 do
       begin
          st += ar[i] + '|';
       end;
       if rightstr(st,1) = '|' then st[length(st)] := ' ';
       st := trim(st);
       edit1.text := st;
       exit;
    end;

    if (leftstr(elab,1) = '-')  then
    begin
       elab := replacestr(elab, '-', '+');
       ar[ind] := elab;
       st := '';
       for i := 0 to length(ar) - 1 do
       begin
          st += ar[i]  + '|';
       end;
       if rightstr(st,1) = '|' then st[length(st)] := ' ';
       st := trim(st);
       edit1.text := st;
       exit;
    end;

  end;
end;

procedure TForm1.Button35Click(Sender: TObject);
begin
  if (length(edit1.text) = 0) then exit;
  if (edit1.text = '0') then
  begin
     if (checkbox2.checked = true) then
     begin
       edit1.Clear;
       exit;
     end;
     inserimento := true;
    exit;
  end;
  if (edit1.text = '') then
  begin
     if (checkbox2.checked = true) then
     begin
       edit1.Clear;
       exit;
     end;
     edit1.text := '0';
     exit;
  end;
  edit1.text := leftstr(edit1.text, length(edit1.text) - 1);

end;

procedure TForm1.Button36Click(Sender: TObject);
var mn1:extended;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '^(1/3)';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  mn1 := power(mn1, 1/3);
  edit1.text := RisultatoToString(mn1);
  Ans := edit1.text;
  inserimento := true;
  AggiornaStatusBar;
end;

procedure TForm1.Button37Click(Sender: TObject);
begin
  undos.clear;
  operazione := '';
  edit1.text := '0';
  Undo := false;
  Inserimento := true;


  if (checkbox2.checked = true) then
  begin
    edit1.Clear;
  end;
end;

procedure TForm1.Button38Click(Sender: TObject);
begin
  undos.clear;
  operazione := '';
  edit1.text := '0';
  listbox1.Items.Clear;
  listbox2.items.clear;
  Inserimento := true;
  Undo := false;
  Ans := '';
  AggiornaStatusBar;



  if (checkbox2.checked = true) then
  begin
    edit1.Clear;
  end;

end;

procedure TForm1.Button39Click(Sender: TObject);
var retval:extended;
var st:string;
var ar : array of string;
var mn1 : int64;
var arresult: MathResult;
var tipo:extended;
var fraz : extended;
var stris:string;
var ang : extended;
var i : integer;
var frmPlot: TForm2;
var fine:extended;
var incr:extended;
var start:extended;
var x,y:extended;
var xnew : single;
var funz : array of string;
var stnew:string;
var ass:int64;
begin

  if (checkbox2.checked = true) then
  begin

    st := edit1.text;

    if (pos('=', st) > 0) then
    begin
      exit;
    end;

    st := replacestr(st, 'exp', 'esp');
    st := replacestr(st, 'MAX', 'MAS');
    st := replacestr(st, 'Ans', Ans);

    if (pos('x',st) > 0) then
    begin

      if (IsNumber(edit4.text) = false) then exit;

      start := mathsolver(edit2.text)[1];
      fine := mathsolver(edit3.text)[1];

      if (start >= fine) then exit;


      if (TFArePresent(st) = true) then
      begin
        if (radiobutton1.checked = true) then start *= pi/180;
        if (radiobutton1.checked = true) then fine *= pi/180;
      end;
      i := 0;
      titolo := st;

      incr := strtofloat(edit4.text);



      setlength(artotal,0);
      x := start;
      xnew := x;

      if (incr <= 0.001) then
      begin
        flag := false;
      end
      else
      begin
        flag := true;
      end;


      if (pos(';', st) > 0) then
      begin
         setlength(funz,0);
         funz := st.Split(';');
         titololst.clear;

         for i := 0 to length(funz) - 1 do
         begin
           titololst.add(trim(funz[i]));
           funz[i] := trim(funz[i]);
         end;
      end
      else
      begin
        setlength(funz,0);
        titololst.clear;
        titololst.add(trim(st));
        setlength(funz,1);
        funz[0] := trim(st);

      end;

      setlength(arfunc,0);

      for i := 0 to length(funz) - 1 do
      begin
        st := funz[i];
        x := start;
        setlength(artotal,0);


        if (TFArePresent(st) = true) then
        begin

          if (-0.000000001 > start) and (-0.000000001 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-0.000000001');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
            if (stris = '+Inf') or (stris = '-Inf') then
            begin
             arresult[1] := nan;
            end
            else
            begin
            y := strtofloat(stris);
            if (y >= maxygraph) then y := nan;
            if (y <= minygraph) then y := nan;
            arresult[1] := y;
            end;
              arresult[3] := -0.000000001;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (+0.000000001 > start) and (+0.000000001 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '+0.000000001');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
            if (stris = '+Inf') or (stris = '-Inf') then
            begin
             arresult[1] := nan;
            end
            else
            begin
            y := strtofloat(stris);
            if (y >= maxygraph) then y := nan;
            if (y <= minygraph) then y := nan;
            arresult[1] := y;
            end;
              arresult[3] := +0.000000001;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;


          if (-360*pi/180 > start) and (-360*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-360*pi/180');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
            if (stris = '+Inf') or (stris = '-Inf') then
            begin
             arresult[1] := nan;
            end
            else
            begin
            y := strtofloat(stris);
            if (y >= maxygraph) then y := nan;
            if (y <= minygraph) then y := nan;
            arresult[1] := y;

            end;


              arresult[3] := -360*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (360*pi/180 > start) and (360*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '360*pi/180');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
            if (stris = '+Inf') or (stris = '-Inf') then
            begin
             arresult[1] := nan;
            end
            else
            begin
            y := strtofloat(stris);
            if (y >= maxygraph) then y := nan;
            if (y <= minygraph) then y := nan;
            arresult[1] := y;

            end;


              arresult[3] := 360*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;


          if (-270*pi/180 > start) and (-270*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-270*pi/180');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
            if (stris = '+Inf') or (stris = '-Inf') then
            begin
             arresult[1] := nan;
            end
            else
            begin
            y := strtofloat(stris);
            if (y >= maxygraph) then y := nan;
            if (y <= minygraph) then y := nan;
            arresult[1] := y;

            end;


              arresult[3] := -270*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;


          if (-180*pi/180 > start) and (-180*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-180*pi/180');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := -180*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (-90*pi/180 > start) and (-90*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-90*pi/180');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := -90*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (-60*pi/180 > start) and (-60*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-60*pi/180');
            stnew :=replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := -60*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (-45*pi/180 > start) and (-45*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-45*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := -45*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (-30*pi/180 > start) and (-30*pi/180 < fine) then
          begin
            stnew := st;
            stnew :=replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '-30*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := -30*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;




          if (270*pi/180 > start) and (270*pi/180 < fine) then
          begin
            stnew := st;
            stnew := replacestr(stnew, 'exp', 'esp');
            stnew :=replacestr(stnew, 'x', '270*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := 270*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (180*pi/180 > start) and (180*pi/180 < fine) then
          begin
            stnew := st;
            stnew := replacestr(stnew, 'exp', 'esp');
            stnew := replacestr(stnew, 'x', '180*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := 180*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (90*pi/180 > start) and (90*pi/180 < fine) then
          begin
            stnew := st;
            stnew := replacestr(stnew, 'exp', 'esp');
            stnew := replacestr(stnew, 'x', '90*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
              y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
              arresult[1] := y;

              end;
              arresult[3] := 90*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (60*pi/180 > start) and (60*pi/180 < fine) then
          begin
            stnew := st;
            stnew := replacestr(stnew, 'exp', 'esp');
            stnew := replacestr(stnew, 'x', '60*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
                y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
                arresult[1] := y;
              end;
              arresult[3] := 60*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (45*pi/180 > start) and (45*pi/180 < fine) then
          begin
            stnew := st;
            stnew := replacestr(stnew, 'exp', 'esp');
            stnew := replacestr(stnew, 'x', '45*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
                y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
                arresult[1] := y;
              end;
              arresult[3] := 45*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

          if (30*pi/180 > start) and (30*pi/180 < fine) then
          begin
            stnew := st;
            stnew := replacestr(stnew, 'exp', 'esp');
            stnew := replacestr(stnew, 'x', '30*pi/180');
            stnew := replacestr(stnew, 'esp', 'exp');
            arresult := MathSolver(stnew);
            stris := RisultatoToString(arresult[1]);
              if (stris = '+Inf') or (stris = '-Inf') then
              begin
               arresult[1] := nan;
              end
              else
              begin
                y := strtofloat(stris);
              if (y >= maxygraph) then y := nan;
              if (y <= minygraph) then y := nan;
                arresult[1] := y;
              end;
              arresult[3] := 30*pi/180;
              setlength(artotal, length(artotal) + 1);
              artotal[length(artotal)-1] := arresult;
          end;

            if (0*pi/180 > start) and (0*pi/180 < fine) then
            begin
              stnew := st;
              stnew := replacestr(stnew, 'exp', 'esp');
              stnew := replacestr(stnew, 'x', '0*pi/180');
              stnew := replacestr(stnew, 'esp', 'exp');
              arresult := MathSolver(stnew);
              stris := RisultatoToString(arresult[1]);
                if (stris = '+Inf') or (stris = '-Inf') then
                begin
                 arresult[1] := nan;
                end
                else
                begin
                  y := strtofloat(stris);
                if (y >= maxygraph) then y := nan;
                if (y <= minygraph) then y := nan;
                  arresult[1] := y;
                end;
                arresult[3] := 0*pi/180;
                setlength(artotal, length(artotal) + 1);
                artotal[length(artotal)-1] := arresult;
            end;

      end;

      repeat

        arresult := MathSolver(st, x, true);
        stris := RisultatoToString(arresult[1]);
          if (stris = '+Inf') or (stris = '-Inf') then
          begin
           arresult[1] := nan;
          end
          else
          begin
            y := strtofloat(stris);
          if (y >= maxygraph) then y := nan;
          if (y <= minygraph) then y := nan;
            arresult[1] := y;
          end;


        arresult[3] := x;
        setlength(artotal, length(artotal) + 1);
        artotal[length(artotal)-1] := arresult;

        x += abs(incr);
        xnew := x;
      until (x > fine);

      OrdinaDatiPlot;

      setlength(arfunc,length(arfunc)+1);
      arfunc[length(arfunc)-1] := artotal;
      end;

      frmPlot := TForm2.Create(self);
      frmplot.ShowModal;
      exit;
    end;


    st := edit1.text;
    st := replacestr(st, 'Ans', Ans);

    if (listbox1.items.indexof(st) = -1) then
    begin
      listbox1.items.add(st);
    end;


    arresult := MathSolver(st);
    tipo := arresult[2];
    if (tipo = 1) then
    begin
      edit1.text := RisultatoToString(arresult[1]);
      inserimento := true;
      Ans := edit1.text;
      AggiornaStatusBar;
      exit;
    end;



    if (tipo = 2) then
    begin
      if (arresult[1] = Infinity) then
      begin
        edit1.text := '+Inf';
        Inserimento := true;
        exit;
      end;

      if (arresult[1] = NInfinity) then
      begin
        edit1.text := '-Inf';
        Inserimento := true;
        exit;
      end;

      edit1.text := floattostrf(arresult[1], tfloatformat.ffNumber, 1,0);
      Ans := edit1.text;
      Inserimento := true;
      AggiornaStatusBar;
    end;


    exit;
  end;


  case operazione of
  'shr':  begin
          if (checkbox1.checked = true) then
          begin
            mn1 := HexToInt(edit1.text);
            n2 := mn1;
          end
          else
          begin
          if (checkbox5.checked = true) then
          begin
            mn1 := bintodec(edit1.text);
            n2 := mn1;
          end
          else
          begin
            if (isnumber(edit1.text) = false) then exit;
            n2 := strtofloat(edit1.text);
          end;

          end;
         retval := (round(n1) shr round(n2));


         if (checkbox1.checked = true) then
         begin
           edit1.text := inttohex(round(retval),CifreH)+'H';
           Ans := edit1.text;
         end;

         if (checkbox5.checked = true) then
         begin

           ass := round(abs(retval));
           ass := trunc(sqrt(ass));
           ass += 4;
           if (retval < 0) then
           begin
             edit1.text := '-' + inttobin(round(retval), ass) + 'B';
           end
           else
           begin
             edit1.text := inttobin(round(retval), ass) + 'B';
           end;
           Ans := edit1.text;
         end
         else
         begin
           edit1.text := RisultatoToString(retval);
           Ans := edit1.text;
         end;



       end;

  'shl':  begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;
         retval := (round(n1) shl round(n2));


          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;



       end;


  'xor':  begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;
         retval := (round(n1) xor round(n2));



          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;



       end;




  'and': begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;
         retval := (round(n1) and round(n2));


          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;



       end;

  'or': begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;
         retval := (round(n1) or round(n2));


          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;



       end;


  '%': begin
         if (isnumber(edit1.text) = false) then exit;
         n2 := strtofloat(edit1.text);
         if (n1 < 0) then
         begin
           retval := - ((n2 / 100) * abs(n1));
         end
         else
         begin
           retval := ((n2 / 100) * n1);
         end;


         if (checkbox5.checked = true) then
         begin

           ass := round(abs(retval));
           ass := trunc(sqrt(ass));
           ass += 4;
           if (retval < 0) then
           begin
             edit1.text := '-' + inttobin(round(retval), ass) + 'B';
           end
           else
           begin
             edit1.text := inttobin(round(retval), ass) + 'B';
           end;
           Ans := edit1.text;
         end
         else
         begin
           edit1.text := RisultatoToString(retval);
           Ans := edit1.text;
         end;



       end;
  '+': begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;

         retval := n1 + n2;


          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;



       end;
  '-': begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;
         retval := n1 - n2;



        if (checkbox5.checked = true) then
        begin

          ass := round(abs(retval));
          ass := trunc(sqrt(ass));
          ass += 4;
          if (retval < 0) then
          begin
            edit1.text := '-' + inttobin(round(retval), ass) + 'B';
          end
          else
          begin
            edit1.text := inttobin(round(retval), ass) + 'B';
          end;
          Ans := edit1.text;
        end
        else
        begin
          edit1.text := RisultatoToString(retval);
          Ans := edit1.text;
        end;



       end;
  '*': begin
         if (checkbox1.checked = true) then
         begin
           mn1 := HexToInt(edit1.text);
           n2 := mn1;
         end
         else
         begin
         if (checkbox5.checked = true) then
         begin
           mn1 := bintodec(edit1.text);
           n2 := mn1;
         end
         else
         begin
           if (isnumber(edit1.text) = false) then exit;
           n2 := strtofloat(edit1.text);
         end;

         end;
         retval := n1 * n2;


        if (checkbox5.checked = true) then
        begin

          ass := round(abs(retval));
          ass := trunc(sqrt(ass));
          ass += 4;
          if (retval < 0) then
          begin
            edit1.text := '-' + inttobin(round(retval), ass) + 'B';
          end
          else
          begin
            edit1.text := inttobin(round(retval), ass) + 'B';
          end;
          Ans := edit1.text;
        end
        else
        begin
          edit1.text := RisultatoToString(retval);
          Ans := edit1.text;
        end;


       end;
  '/': begin
          if (checkbox1.checked = true) then
          begin
            mn1 := HexToInt(edit1.text);
            n2 := mn1;
          end
          else
          begin
          if (checkbox5.checked = true) then
          begin
            mn1 := bintodec(edit1.text);
            n2 := mn1;
          end
          else
          begin
            if (isnumber(edit1.text) = false) then exit;
            n2 := strtofloat(edit1.text);
          end;

          end;
         retval := n1 / n2;


          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;


       end;
  'x^y': begin
            if (checkbox1.checked = true) then
            begin
              mn1 := HexToInt(edit1.text);
              n2 := mn1;
            end
            else
            begin
            if (checkbox5.checked = true) then
            begin
              mn1 := bintodec(edit1.text);
              n2 := mn1;
            end
            else
            begin
              if (isnumber(edit1.text) = false) then exit;
              n2 := strtofloat(edit1.text);
            end;

            end;
           retval := power(n1,n2);


          if (checkbox5.checked = true) then
          begin

            ass := round(abs(retval));
            ass := trunc(sqrt(ass));
            ass += 4;
            if (retval < 0) then
            begin
              edit1.text := '-' + inttobin(round(retval), ass) + 'B';
            end
            else
            begin
              edit1.text := inttobin(round(retval), ass) + 'B';
            end;
            Ans := edit1.text;
          end
          else
          begin
            edit1.text := RisultatoToString(retval);
            Ans := edit1.text;
          end;


         end;

    'x^(-y)': begin
             if (checkbox1.checked = true) then
             begin
               mn1 := HexToInt(edit1.text);
               n2 := mn1;
             end
             else
             begin
             if (checkbox5.checked = true) then
             begin
               mn1 := bintodec(edit1.text);
               n2 := mn1;
             end
             else
             begin
               if (isnumber(edit1.text) = false) then exit;
               n2 := strtofloat(edit1.text);
             end;

             end;
           retval := power(n1,-1*abs(n2));


            if (checkbox5.checked = true) then
            begin

              ass := round(abs(retval));
              ass := trunc(sqrt(ass));
              ass += 4;
              if (retval < 0) then
              begin
                edit1.text := '-' + inttobin(round(retval), ass) + 'B';
              end
              else
              begin
                edit1.text := inttobin(round(retval), ass) + 'B';
              end;
              Ans := edit1.text;
            end
            else
            begin
              edit1.text := RisultatoToString(retval);
              Ans := edit1.text;
            end;


         end;




  'x^(1/y)': begin
             if (isnumber(edit1.text) = false) then exit;
              n2 := strtofloat(edit1.text);
              retval := power(n1,1/n2);
              edit1.text := RisultatoToString(retval);
              Ans := edit1.text;
             end;
'logy(x)', 'logn(x)': begin
              if (isnumber(edit1.text) = false) then exit;
              n2 := strtofloat(edit1.text);
              retval := logn(n1,n2);
              edit1.text := RisultatoToString(retval);
              Ans := edit1.text;
             end;
  'EV':      begin

              st := edit1.text;
              if (pos('/', st) <> 0) then
              begin
                ar := st.Split('/');
                if (length(ar) <> 2) then exit;
                if (isnumber(ar[0]) = true) and (isnumber(ar[1]) = true) then
                begin
                  n2 := strtofloat(ar[0]) / strtofloat(ar[1]);
                end;
                retval := EV(n1,n2);
                edit1.text := RisultatoToString(retval);
                Ans := edit1.text;
             end
             else
             begin
               if (isnumber(edit1.text) = true) then
               begin
                 n2 := strtofloat(edit1.text);
                 retval := EV(n1,n2);
                 edit1.text := RisultatoToString(retval);
                 Ans := edit1.text;
               end;
             end;
             end;
  end;

  operazione := '';
  Inserimento := true;
  AggiornaStatusBar;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '2';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;

  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '2';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '2';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '2';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '2';
  end;
end;

procedure TForm1.Button40Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := 'Perc(,)';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


  if (isnumber(edit1.text) = false) then exit;
  n1 := strtofloat(edit1.text);
  operazione := '%';
  edit1.text := '0';
  inserimento := true;

end;

//fparser.Identifiers.AddFunction('arcsec', 'F', 'F', @ExprArcSec);
//fparser.Identifiers.AddFunction('arccsc', 'F', 'F', @ExprArcCsc);
//fparser.Identifiers.AddFunction('arccot', 'F', 'F', @ExprArcCot);

procedure TForm1.Button41Click(Sender: TObject);
var mn1:extended;
begin
try
   if (checkbox2.checked = true) then
   begin
     if (button41.caption = 'cot') then  edit1.seltext := 'cotan(';
     if (button41.caption = 'acot') then edit1.seltext := 'arccot(';
     edit1.SelStart:= length(edit1.text);
     exit;
   end;


  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  if (radiobutton1.checked = true) then  mn1 := mn1 * pi/180;
  if (button41.caption = 'cot') then mn1 := cotan(mn1);
  if (button41.caption = 'acot') then mn1 := arctan(1/mn1);

  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button42Click(Sender: TObject);
var dd,mm,yy:string;
begin
 if (checkbox2.checked = false) then exit;
 if (checkbox1.checked = true) then exit;
 dd := inttostr(dayof(now));
 mm := inttostr(monthof(now));
 yy := inttostr(yearof(now));
 edit1.seltext := 'JD(' + CHR(39) + dd + '/' + mm + '/' + yy + chr(39) + ')';



end;

procedure TForm1.Button43Click(Sender: TObject);
begin
  edit1.seltext := '2451545.0';
    edit1.SelStart:= length(edit1.text);
    inserimento := true;
end;

procedure TForm1.Button44Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + 'A';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := 'A';
    edit1.selstart := length(edit1.text);
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := 'A';
      edit1.selstart := length(edit1.text);
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + 'A';
    edit1.selstart := length(edit1.text);
  end;
end;

procedure TForm1.Button45Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + 'B';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := 'B';
    edit1.selstart := length(edit1.text);
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := 'B';
      edit1.selstart := length(edit1.text);
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + 'B';
    edit1.selstart := length(edit1.text);
  end;
end;

procedure TForm1.Button46Click(Sender: TObject);
var ar : array of string;
var st:string;
var i : integer;
var sommatoria:extended;
begin


  if (button46.caption = 'dscnt') and (checkbox2.checked = true)  then
  begin
    edit1.SelText := 'DSCNT(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (button46.caption = '∑') and (checkbox2.checked = true)  then
  begin
    sommatoria := 0;
    st := edit1.text;
    if (pos('|', st) > 0) then
    begin
      ar := st.Split('|');
    end
    else if (pos(';', st) > 0) then
    begin
      ar := st.Split(';');
    end;
    for i := 0 to length(ar) - 1 do
    begin
      if (isnumber(ar[i]) = true) then
      begin
        sommatoria += strtofloat(ar[i]);
      end;
    end;
    edit1.text := floattostr(sommatoria);
    if (listbox1.Items.IndexOf(st) = -1) then
    begin
      listbox1.Items.Add(st);
    end;
    inserimento := true;

  end;

end;

procedure TForm1.Button47Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '|';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  if (checkbox1.checked = true) then exit;
  edit1.Text := edit1.text + '|';
end;

procedure TForm1.Button48Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := '(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
end;

procedure TForm1.Button49Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := ')';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '3';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;


  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '3';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;


  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '3';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '3';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '3';
  end;
end;

procedure TForm1.Button50Click(Sender: TObject);
var ar : array of string;
var st:string;
var i : integer;
var numeri:integer;
var sommatoria:extended;
begin
  sommatoria := 0;
  numeri := 0;
  st := edit1.text;
  ar := st.Split('|');
  if (pos('|', st) > 0) then
  begin
    ar := st.Split('|');
  end
  else if (pos(';', st) > 0) then
  begin
    ar := st.Split(';');
  end;
  for i := 0 to length(ar) - 1 do
  begin
    if (isnumber(ar[i]) = true) then
    begin
      sommatoria += strtofloat(ar[i]);
      numeri += 1;
    end;
  end;
  edit1.text := floattostr(sommatoria/numeri);
  if (listbox1.Items.IndexOf(st) = -1) then
  begin
    listbox1.Items.Add(st);
  end;

    inserimento := true;
end;

procedure TForm1.Button51Click(Sender: TObject);
var st : string;
begin
  if (edit1.text = 'NaN') then exit;
  if (edit1.text = 'Nan') then exit;
  if (edit1.text = '') then exit;

  st := trim(edit1.text);

  If (isnumber(st) = true) then
  begin
    if (listbox2.items.IndexOf(st) = -1) then
    begin
      listbox2.items.Add(st);
      exit;
    end;
    exit;
  end
  else
  begin
    if (IsDate(st) = true) then
    begin
      if (listbox2.items.indexof(st) = -1) then
      begin
        listbox2.items.add(st);
        exit;
      end;
      exit;
    end
    else
    begin
      if (IsHex(st) = true) then
      begin
        if (listbox2.items.indexof(st) = -1) then
        begin
          listbox2.items.add(st);
          exit;
        end;
        exit;
      end
      else
      begin
        if (pos('°', st) > 0) or (pos('′', st) > 0) or (pos('″', st) > 0) or
           (pos('h', st) > 0) or (pos('m', st) > 0) or (pos('s', st) > 0) then

        begin
          if (listbox2.items.indexof(st) = -1) then
          begin
            listbox2.items.add(st);
            exit;
          end;
          exit;
        end;
      end;
    end;
  end;

  end;


procedure TForm1.Button52Click(Sender: TObject);
begin
  if (isnumber(listbox2.GetSelectedText) = true) then
  begin
    if (checkbox2.checked = true) then
    begin
      edit1.SelText:= listbox2.GetSelectedText;
      exit;
    end
    else
    begin
      if (pos('|', edit1.text) > 0) then
      begin
        edit1.SelText:= listbox2.GetSelectedText;
        exit;
      end
      else
      begin
        edit1.text := listbox2.GetSelectedText;
        exit;

      end;
    end;
  end;

  if (IsHex(listbox2.GetSelectedText) = true) then
  begin
    if (checkbox2.checked = false) then
    begin
       case checkbox1.Checked of
       true: edit1.text := listbox2.GetSelectedText;
       false: edit1.text := inttostr(HexToInt(listbox2.GetSelectedText));
       end;
       exit;
    end
    else
    begin
      edit1.seltext := inttostr(HexToInt(listbox2.GetSelectedText));
      exit;
    end;
  end;


  if (pos('°', listbox2.GetSelectedText) > 0) or (pos('′', listbox2.GetSelectedText) > 0) or (pos('″', listbox2.GetSelectedText) > 0) or
     (pos('h', listbox2.GetSelectedText) > 0) or (pos('m', listbox2.GetSelectedText) > 0) or (pos('s', listbox2.GetSelectedText) > 0) then
  begin
    case checkbox2.Checked of
    true: edit1.text := listbox2.GetSelectedText;
    false: exit;
    end;
  end;


end;

procedure TForm1.Button53Click(Sender: TObject);
begin
  listbox2.items.clear;

end;

procedure TForm1.Button54Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + 'C';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := 'C';
    edit1.selstart := length(edit1.text);
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := 'C';
      edit1.selstart := length(edit1.text);
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + 'C';
    edit1.selstart := length(edit1.text);
  end;
end;

procedure TForm1.Button55Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + 'D';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := 'D';
    edit1.selstart := length(edit1.text);
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := 'D';
      edit1.selstart := length(edit1.text);
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + 'D';
    edit1.selstart := length(edit1.text);
  end;
end;

procedure TForm1.Button56Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + 'E';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := 'E';
    edit1.selstart := length(edit1.text);
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := 'E';
      edit1.selstart := length(edit1.text);
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + 'E';
    edit1.selstart := length(edit1.text);
  end;
end;

procedure TForm1.Button57Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + 'F';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;


  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := 'F';
    edit1.selstart := length(edit1.text);
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := 'F';
      edit1.selstart := length(edit1.text);
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + 'F';
    edit1.selstart := length(edit1.text);
  end;
end;

procedure TForm1.Button58Click(Sender: TObject);
begin

  setlength(artotal,0);
  setlength(arfunc,0);
  setlength(ArStMyStatTot,0);
  setlength(ArNMyStatTot,0);
  setlength(ArNMyStatTotNew,0);
  setlength(backup,0);
  setlength(zscores,0);
  setlength(Pred,0);
  setlength(Pred2,0);
  setlength(ArX,0);
  setlength(DCook,0);
  setlength(DCook2,0);
  setlength(Residui,0);
  setlength(PredY,0);
  setlength(Leverage,0);
  setlength(trovati,0);
  setlength(ModMSE, 0);
  setlength(Rstudent,0);
  setlength(DFFITS,0);
  setlength(ArGaus,0);
  setlength(Istog,0);
  Libera;
  halt;
end;

procedure TForm1.Libera;
begin
  try
    titololst.Free;
    cls := nil;

  except
    on E: exception do
    begin
      exit;
    end;
  end;
end;

procedure TForm1.Button59Click(Sender: TObject);
var mn1 : longint;
begin
  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;

    operazione := 'xor';
    edit1.text := '0';
    inserimento := true;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if (checkbox1.Checked = true) then exit;
  if (checkbox2.checked = true) then
  begin
    edit1.SelText:= '.';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;


   if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '0.';
    inserimento := false;
    exit;
  end;

  if (edit1.text <> '0') then
  begin
     if (pos('|' , edit1.text) = 0) then
     begin
       if (pos('.' , edit1.text) = 0) then
       begin
         if (isnumber(edit1.text) = True) then
         begin
           edit1.Text := edit1.text + '.';
           inserimento := false;
           exit;
         end;
       end;
       exit;
     end
     else
     begin
       edit1.Text := edit1.text + '.';
       inserimento := false;
     end;
  end;
end;

procedure TForm1.Button60Click(Sender: TObject);
var mn1 : longint;
begin
  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;

    operazione := 'and';
    edit1.text := '0';
    inserimento := true;
  end;
end;

procedure TForm1.Button61Click(Sender: TObject);
var mn1 : longint;
begin
  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;

    operazione := 'or';
    edit1.text := '0';
    inserimento := true;
  end;
end;

procedure TForm1.Button62Click(Sender: TObject);
var mn1 : longint;
begin
  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;

    operazione := 'shl';
    edit1.text := '0';
    inserimento := true;
  end;
end;

procedure TForm1.Button63Click(Sender: TObject);
begin
  if (checkbox2.checked = true) and (radiobutton1.Checked = true) then ;
  begin
    edit1.seltext  := 'pi/180';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
end;




procedure TForm1.Button64Click(Sender: TObject);
begin
  if (button64.Caption = 'SHIFT') then
  begin
     button16.caption := 'sec';
     button17.caption := 'csc';
     button20.caption := 'asec';
     button21.caption := 'acsc';
     button41.caption := 'acot';
     button46.caption := 'dscnt';
     button64.caption := '';
     exit;
  end
  else
  begin
    button16.caption := 'sin';
    button17.caption := 'cos';
    button20.caption := 'asin';
    button21.caption := 'acos';
    button41.caption := 'cot';
    button64.caption := 'SHIFT';
    BUTTON46.CAPTION := '∑';
    exit;
  end;
end;

procedure TForm1.Button65Click(Sender: TObject);
begin

  if (undos.count = 0) then exit;
  Undo := True;
  edit1.text := undos[undos.Count - 1];
  edit1.Refresh;
  undos.Delete(undos.Count - 1);
  Undo := false;
end;

procedure TForm1.Button66Click(Sender: TObject);
var dd,mm,yy:string;
var dt : tdatetime;
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  calendardialog1.date := now;
  if (calendardialog1.execute) then
  begin

    if (calendardialog1.Date = Nan) then exit;
    dt := calendardialog1.Date;
    dd := inttostr(dayof(dt));
    mm := inttostr(monthof(dt));
    yy := inttostr(yearof(dt));
    edit1.seltext := 'JD(' + CHR(39) + dd + '/' + mm + '/' + yy + chr(39) + ')';
    edit1.SelStart:= length(edit1.text);
  end;

end;

procedure TForm1.Button67Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'SUM(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'SUM(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
   edit1.SelStart:= length(edit1.text);

end;

procedure TForm1.Button68Click(Sender: TObject);
var mn1 : longint;
begin
  if (pos('|', edit1.text) = 0) then
  begin
    if (checkbox1.checked = true) then
    begin
      mn1 := HexToInt(edit1.text);
      n1 := mn1;
    end
    else
    begin
    if (isnumber(edit1.text) = false) then exit;
    n1 := strtofloat(edit1.text);
    end;

    operazione := 'shr';
    edit1.text := '0';
    inserimento := true;
  end;
end;

procedure TForm1.Button69Click(Sender: TObject);
var i:integer;
begin
 i := listbox2.ItemIndex;
 if (i = -1) then exit;
 listbox2.Items.Delete(i);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '4';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;


  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '4';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '4';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '4';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '4';
  end;
end;

procedure TForm1.Button70Click(Sender: TObject);
var mn1:extended;
var e:extended;
begin
try
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := 'exp(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (isnumber(edit1.text) = false) then exit;
  mn1 := strtofloat(edit1.text);
  e := 2.71828182845904523536;
  mn1 := Power(e, mn1);

  edit1.text := RisultatoToString(mn1);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

except
  on e: exception do
  edit1.text := 'Error!';
end;
end;

procedure TForm1.Button71Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := 'x';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
end;

procedure TForm1.Button72Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := ';';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

end;

procedure TForm1.Button73Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'MEAN(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'MEAN(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button74Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'MIN(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'MIN(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button75Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'MAX(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'MAX(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button76Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'SMA(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'SMA(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button77Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'SQM(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'SQM(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button78Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  if (radiobutton3.Checked = true) then
  begin
    edit1.seltext := 'CVAR(' + chr(39) + edit8.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end
  else
  begin
    edit1.seltext := 'CVAR(' + chr(39) + edit9.text + chr(39) + ',' + chr(39) + '|' + chr(39) + ')'
  end;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button79Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  edit1.seltext := 'COVAR(' + chr(39) + edit8.text + chr(39) + ' , ' + chr(39) + edit9.text + chr(39) + ' , ' + chr(39) + '|' + chr(39) + ')';
  edit1.SelStart:= length(edit1.text);
end;





procedure TForm1.Button81Click(Sender: TObject);
var st1,st2,st3:string;
var d,m,s : extended;
begin
  if (checkbox1.checked = true) then exit;
  if (checkbox2.checked = true) then
  begin
    if (isnumber(edit5.text) = false) then exit;
    if (isnumber(edit6.text) = false) then exit;
    if (isnumber(edit7.text) = false) then exit;
    if (pos('.', edit5.text) > 0) then exit;
    if (pos(',', edit5.text) > 0) then exit;
    if (pos(',', edit6.text) > 0) then exit;

    if (pos('.', edit6.text) > 0) then
    begin
      if (strtofloat(edit7.text) <> 0) then exit;
    end;


    d := strtofloat(edit5.text);
    m := strtofloat(edit6.text);
    s := strtofloat(edit7.text);
    m := abs(m);
    s := abs(s);
    if (m > 60) then exit;
    if (s > 60) then exit;

    if (checkbox3.checked = true) then
    begin
      d := -1 * abs(d);
    end;
    st1 := floattostr(d);
    st2 := floattostr(abs(m));
    st3 := floattostr(abs(s));



    edit1.seltext := 'TODEG(' + st1 + ' , ' + st2 + ' , '  + st3 + ')' ;
    edit1.SelStart:= length(edit1.text);

  end;
end;

procedure TForm1.Button82Click(Sender: TObject);
var st1,st2,st3:string;
var d,m,s : extended;
begin
  if (checkbox1.checked = true) then exit;
  if (checkbox2.checked = true) then
  begin
    if (isnumber(edit10.text) = false) then exit;
    if (isnumber(edit11.text) = false) then exit;
    if (isnumber(edit12.text) = false) then exit;
    if (pos('.', edit10.text) > 0) then exit;
    if (pos(',', edit10.text) > 0) then exit;
    if (pos(',', edit11.text) > 0) then exit;
    if (pos('.', edit11.text) > 0) then
    begin
      if (strtofloat(edit12.text) <> 0) then exit;
    end;
    d := strtofloat(edit10.text);
    m := strtofloat(edit11.text);
    s := strtofloat(edit12.text);
    d := abs(d);
    m := abs(m);
    s := abs(s);
    if (m > 60) then exit;
    if (s > 60) then exit;

    st1 := floattostr(abs(d));
    st2 := floattostr(abs(m));
    st3 := floattostr(abs(s));

    edit1.seltext := 'RADEG(' + st1 + ' , ' + st2 + ' , '  + st3 + ')' ;
      edit1.SelStart:= length(edit1.text);

  end;
end;

procedure TForm1.Button83Click(Sender: TObject);
var retval : extended;
var retvali : longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.SelText := '10^2';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  retval := power(10, 2);
  if (checkbox1.checked = true) then
  begin
    retvali := round(retval);
    edit1.text := inttohex(retvali, CifreH)+'H';
    inserimento := true;
    Ans := edit1.text;
    AggiornaStatusBar;
    exit;
  end;

  edit1.text := floattostr(retval);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;

end;

procedure TForm1.Button84Click(Sender: TObject);
var retval:extended;
var retvali : longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.SelText := '10^3';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  retval := power(10, 3);
  if (checkbox1.checked = true) then
  begin
    retvali := round(retval);
    edit1.text := inttohex(retvali, CifreH)+'H';
    Ans := edit1.text;
    inserimento := true;
    AggiornaStatusBar;
    exit;
  end;

  edit1.text := floattostr(retval);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;
end;

procedure TForm1.Button85Click(Sender: TObject);
var retval:extended;
var exponent:longint;
var exponent1:extended;
var exphex : longint;
var retvali:longint;
begin
  if (checkbox2.checked = true) then
  begin
    edit1.SelText := '10^';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  if (checkbox1.checked = true) then
  begin
    if (IsHex2(edit1.text) = false) then exit;
    exphex := HexToInt(edit1.text);
    exponent := exphex;
    retval := power(10, exponent);
  end
  else
  begin
     if (isnumber(edit1.text) = false) then exit;
    exponent1 := strtofloat(edit1.text);
    retval := power(10, exponent1);
  end;


  if (checkbox1.checked = true) then
  begin
    retvali := round(retval);
    edit1.text := inttohex(retvali, CifreH) + 'H';
    inserimento := true;
    Ans := edit1.text;
    AggiornaStatusBar;
    exit;
  end;


  edit1.text := floattostr(retval);
  inserimento := true;
  Ans := edit1.text;
  AggiornaStatusBar;
end;

procedure TForm1.Button86Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then exit;
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := 'abs(';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  if (isnumber(edit1.text) = false) then exit;
  edit1.text := floattostr(abs(strtofloat(edit1.text)));
  inserimento := true;

end;

procedure TForm1.Button87Click(Sender: TObject);
  var exp:extended;
  var e:extended;
  var retval:extended;
  begin
  try
    if (checkbox2.checked = true) then
    begin
      edit1.seltext  := 'exp(-';
      edit1.SelStart:= length(edit1.text);
      exit;
    end;

    if (isnumber(edit1.text) = false) then exit;
    exp := strtofloat(edit1.text);
    exp := -1 * abs(exp);

    e := 2.71828182845904523536;
    retval := Power(e, exp);

    edit1.text := RisultatoToString(retval);
    inserimento := true;
    Ans := edit1.text;
    AggiornaStatusBar;
  except
    on e: exception do
    edit1.text := 'Error!';
  end;
  end;

procedure TForm1.Button88Click(Sender: TObject);
  var retval:extended;
  var exponent:longint;
  var exponent1:extended;
  var exphex : longint;
  var retvali:longint;
  begin
    if (checkbox2.checked = true) then
    begin
      edit1.SelText := '10^(-';
      edit1.SelStart:= length(edit1.text);
      exit;
    end;

    if (checkbox1.checked = true) then
    begin
      if (IsHex2(edit1.text) = false) then exit;
      exphex := HexToInt(edit1.text);
      exphex := -1 * abs(exphex);
      exponent := exphex;
      retval := power(10, exponent);
    end
    else
    begin
      if (isnumber(edit1.text) = false) then exit;
      exponent1 := strtofloat(edit1.text);
      exponent1 := -1 * abs(exponent1);
      retval := power(10, exponent1);
    end;


    if (checkbox1.checked = true) then
    begin
      retvali := round(retval);
      edit1.text := inttohex(retvali, CifreH) + 'H';
      inserimento := true;
      Ans := edit1.text;
      AggiornaStatusBar;
      exit;
    end;


    edit1.text := floattostr(retval);
    inserimento := true;
    Ans := edit1.text;
    AggiornaStatusBar;
  end;

procedure TForm1.Button89Click(Sender: TObject);
  var st1,st2:string;
  var d,m : extended;
  begin
    if (checkbox1.checked = true) then exit;
    if (checkbox2.checked = true) then
    begin
      if (isnumber(edit13.text) = false) then exit;
      if (isnumber(edit14.text) = false) then exit;
      if (pos('.', edit13.text) > 0) then exit;
      if (pos(',', edit13.text) > 0) then exit;
      if (pos(',', edit14.text) > 0) then exit;
      d := strtofloat(edit13.text);
      m := strtofloat(edit14.text);
      d := abs(d);
      m := abs(m);
      if (m > 60) then exit;

      st1 := floattostr(abs(d));
      st2 := floattostr(abs(m));

      edit1.seltext := 'SHATORA(' + st1 + ' , ' + st2 +  ')';

      edit1.SelStart:= length(edit1.text);
    end;
  end;




procedure TForm1.Button7Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '5';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;


  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '5';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '5';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '5';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '5';
  end;
end;

procedure TForm1.Button80Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  edit1.seltext := 'ICL( , , )';
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin

  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '6';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;

  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '6';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (checkbox1.checked = true) then
  begin
    edit1.text := edit1.text + '6';
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '6';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '6';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '6';
  end;
end;

procedure TForm1.Button90Click(Sender: TObject);
var jd:extended;
begin
  if (checkbox1.checked = true) then exit;
  if (isnumber(edit15.text) = false) then exit;

  try
  jd := strtofloat(edit15.text);
  edit1.text := jdtodate(jd);
  inserimento := true;


  except
    on E: exception do
    begin
       edit1.text := 'Nan';
    end;
  end;

end;

procedure TForm1.Button91Click(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.SelText := 'Ans';
    edit1.SelStart:= length(edit1.text);
    exit;
  end;

  If (IsNull(Ans) = true) then exit;

  If (IsNumber(ans) = false) then
  begin
    if (IsDate(Ans) = true) and (pos('/', ans) > 0) then exit;
    if (IsHex2(ans) = true) and (checkbox1.checked = true) then
    begin
      edit1.text := Ans;
      inserimento := true;
      exit;
    end;
    exit;
  end;



  edit1.text := Ans;
  inserimento := true;

end;

procedure TForm1.Button92Click(Sender: TObject);
begin
   edit5.Text := '0';
   edit6.Text := '0';
   edit7.Text := '0';
   edit10.Text := '0';
   edit11.Text := '0';
   edit12.Text := '0';
   edit13.Text := '0';
   edit14.Text := '0';
   edit15.text := '0';
   edit22.text := '0';
   edit23.text := '0';
   edit24.text := '0';
   edit24.text := '0';
   checkbox3.checked := false;
   checkbox4.checked := false;




end;

procedure TForm1.Button93Click(Sender: TObject);
begin
  edit8.clear;
  edit9.clear;

end;

procedure TForm1.Button94Click(Sender: TObject);
var st1,st2:string;
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  st1 := chr(39) + datetostr(datetimepicker1.datetime) + ' ' + timetostr(datetimepicker1.datetime) + chr(39);
  st2 :=  chr(39) + datetostr(datetimepicker2.datetime) + ' ' + timetostr(datetimepicker2.datetime) + chr(39);
  edit1.seltext := 'DDIFFSHOUR(' + st1 + ',' + st2 + ')';
  edit1.SelStart:= length(edit1.text);

end;

procedure TForm1.Button95Click(Sender: TObject);
var st1,st2:string;
begin
  if (checkbox2.checked = false) then exit;
  if (checkbox1.checked = true) then exit;
  st1 := chr(39) + datetostr(datetimepicker1.datetime) + ' ' + timetostr(datetimepicker1.datetime) + chr(39);
  st2 :=  chr(39) + datetostr(datetimepicker2.datetime) + ' ' + timetostr(datetimepicker2.datetime) + chr(39);
  edit1.seltext := 'DDIFFSSEC(' + st1 + ',' + st2 + ')';
  edit1.SelStart:= length(edit1.text);

end;

procedure TForm1.Button96Click(Sender: TObject);
begin
  edit16.text := '0';
  edit17.text := '0';
  edit18.text := '0';
  edit19.text := '0';
  datetimepicker1.DateTime:= now;
  datetimepicker2.DateTime:= now;
end;

procedure TForm1.Button97Click(Sender: TObject);
var ar : array of MyTime;
var dt:extended;
var output:string;
begin
   if (checkbox1.checked = true) then exit;
   if (IsNumber(edit16.text) = false) then exit;
   dt := strtofloat(edit16.text);
   ar := DecimalTimeToHMS(dt);

   output := floattostrf(ar[0].Ore, tfloatformat.ffNumber, 1, 0) + 'h' +
             floattostrf(ar[0].Minuti, tfloatformat.ffNumber, 1, 0) + 'm' +
             floattostrf(ar[0].Secondi, tfloatformat.ffNumber, 1, 0) + 's';

   edit1.seltext := output;
   edit1.SelStart:= length(edit1.text) ;
   //edit17.text := floattostrf(ar[0].Ore, tfloatformat.ffNumber, 1, 0);
   //edit18.text := floattostrf(ar[0].Minuti, tfloatformat.ffNumber, 1, 0);
   //edit19.text := floattostrf(ar[0].Secondi, tfloatformat.ffNumber, 1, 0);

end;

procedure TForm1.Button98Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (isnumber(edit20.text) = false) then exit;
  edit1.seltext := 'LTOEV(' + edit20.text + ')';
  edit1.selstart := length(edit1.text);


end;

procedure TForm1.Button99Click(Sender: TObject);
begin
  if (checkbox2.checked = false) then exit;
  if (isnumber(edit21.text) = false) then exit;
  edit1.seltext := 'EVTOL(' + edit21.text + ')';
  edit1.selstart := length(edit1.text);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin

  if (checkbox2.checked = true) then
  begin
    edit1.seltext  := '7';
    edit1.SelStart:= length(edit1.text);
     inserimento := false;
    exit;
  end;


  if (checkbox1.checked = true) then
  begin
    If (edit1.text = '0') then edit1.clear;
    if (inserimento = true) then
    begin
      edit1.clear;
      inserimento := false;
    end;
    edit1.text := edit1.text + '7';
    edit1.selstart := length(edit1.text);
    inserimento := false;
    exit;
  end;

  if (edit1.text = '0') or (edit1.text = 'Error!') or (edit1.text = '+Inf') or (edit1.text = '-Inf') then
  begin
    edit1.text := '7';
    Inserimento := false;
    exit;
  end;
  if (edit1.text <> '0') then
  begin
    if (inserimento = true) then
    begin
      edit1.text := '7';
      inserimento := false;
      exit;
    end;

    edit1.Text := edit1.text + '7';
  end;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
var mn1:int64;
begin
  if (checkbox5.checked = true) then
  begin
    checkbox1.checked := false;
    exit;
  end;


  if (checkbox2.checked = false) then
  begin
  button5.enabled := not checkbox1.checked;
  button32.enabled := not checkbox1.checked;
  button29.enabled := not checkbox1.checked;
  button31.enabled := not checkbox1.checked;
  button30.enabled := not checkbox1.checked;
  button36.enabled := not checkbox1.checked;
  button41.enabled := not checkbox1.checked;
  button20.enabled := not checkbox1.checked;
  button21.enabled := not checkbox1.checked;
  button19.enabled := not checkbox1.checked;
  button16.enabled := not checkbox1.checked;
  button17.enabled := not checkbox1.checked;
  button18.enabled := not checkbox1.checked;
  button33.enabled := not checkbox1.checked;
  button26.enabled := not checkbox1.checked;
  button27.enabled := not checkbox1.checked;
  button46.enabled := not checkbox1.checked;
  button50.enabled := not checkbox1.checked;
  button34.enabled := not checkbox1.checked;
  button22.enabled := not checkbox1.checked;
  button42.enabled := not checkbox1.checked;
  button43.enabled := not checkbox1.checked;
  button63.enabled := not checkbox1.checked;
  button70.enabled := not checkbox1.checked;
  button81.enabled := not checkbox1.checked;
  button82.enabled := not checkbox1.checked;
  button43.enabled := not checkbox1.checked;
  button42.enabled := not checkbox1.checked;
  button66.enabled := not checkbox1.checked;
  button67.enabled := not checkbox1.checked;
  button73.enabled := not checkbox1.checked;
  button74.enabled := not checkbox1.checked;
  button75.enabled := not checkbox1.checked;
  button76.enabled := not checkbox1.checked;
  button77.enabled := not checkbox1.checked;
  button78.enabled := not checkbox1.checked;
  button79.enabled := not checkbox1.checked;
  button80.enabled := not checkbox1.checked;

  button106.enabled := not checkbox1.checked;
  button88.enabled := not checkbox1.checked;
  button87.enabled := not checkbox1.checked;


  end;



  //if (checkbox1.checked = true) then
  //begin
  //  checkbox2.checked := not checkbox1.checked;
  //  checkbox2.enabled := not checkbox1.checked;
  //end
  //else
  //begin
  //  checkbox2.checked := false;
  //  checkbox2.enabled := not checkbox1.checked;
  //end;
  button44.enabled := checkbox1.checked;
  button45.enabled := checkbox1.checked;
  button54.enabled := checkbox1.checked;
  button55.enabled := checkbox1.checked;
  button56.enabled := checkbox1.checked;
  button57.enabled := checkbox1.checked;
  button105.enabled := checkbox1.checked;
  button105.Caption:= 'H';

  try

  if (checkbox1.checked = true) then
  begin
    if (edit1.text = '') then exit;
    if (IsBin(edit1.text) = true) then
    begin
      edit1.text := MyBinToHex(edit1.text) + 'H';
      edit1.selstart := length(edit1.text);
      exit;
    end;




    if (pos('H', edit1.text) > 0) then exit;
    if (pos('.', edit1.text) > 0) then
    begin
      edit1.text := '0';
      edit1.SelStart:= length(edit1.text);
      exit;
    end;
    if (strtoint(edit1.text) = 0) then
    begin
      edit1.text := '0';
      edit1.SelStart:= length(edit1.text);
      exit;
    end
    else
    begin
      edit1.text := inttohex(strtoint64(edit1.text),CifreH) + 'H';
      edit1.SelStart:= length(edit1.text);
      exit;
    end;
  end
  else
  begin
    if (edit1.text = '') then exit;
    if (edit1.text = 'Error!') then exit;
    if (edit1.text = 'Error') then exit;
    if (pos('H', edit1.text) = 0) then exit;

    mn1 := MyHex2Dec(edit1.text + 'H');
    edit1.text := inttostr(mn1);
    edit1.SelStart:= length(edit1.text);
  end;


  except
       on e: exception do
       edit1.text := 'Error!';
  end;

end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
  if (checkbox2.checked = true) then
  begin
    edit1.Clear;
    edit1.Font.Size := 8;
    edit1.Height:= 40;
  end
  else
  begin
    edit1.font.size := 14;
    edit1.Height:= 40;
  end;
end;

procedure TForm1.CheckBox5Change(Sender: TObject);
var toc : int64;
var ass: int64;
var conv:string;
var neg : boolean;
begin
  if (checkbox1.checked = true) then
  begin
    checkbox5.checked := false;
    exit;
  end;

  if (checkbox2.checked = false) then
  begin
  button5.enabled := not checkbox5.checked;
  button32.enabled := not checkbox5.checked;
  button29.enabled := not checkbox5.checked;
  button31.enabled := not checkbox5.checked;
  button30.enabled := not checkbox5.checked;
  button36.enabled := not checkbox5.checked;
  button41.enabled := not checkbox5.checked;
  button20.enabled := not checkbox5.checked;
  button21.enabled := not checkbox5.checked;
  button19.enabled := not checkbox5.checked;
  button16.enabled := not checkbox5.checked;
  button17.enabled := not checkbox5.checked;
  button18.enabled := not checkbox5.checked;
  button33.enabled := not checkbox5.checked;
  button26.enabled := not checkbox5.checked;
  button27.enabled := not checkbox5.checked;
  button46.enabled := not checkbox5.checked;
  button50.enabled := not checkbox5.checked;
  button34.enabled := not checkbox5.checked;
  button22.enabled := not checkbox5.checked;
  button42.enabled := not checkbox5.checked;
  button43.enabled := not checkbox5.checked;
  button63.enabled := not checkbox5.checked;
  button70.enabled := not checkbox5.checked;
  button81.enabled := not checkbox5.checked;
  button82.enabled := not checkbox5.checked;
  button43.enabled := not checkbox5.checked;
  button42.enabled := not checkbox5.checked;
  button66.enabled := not checkbox5.checked;
  button67.enabled := not checkbox5.checked;
  button73.enabled := not checkbox5.checked;
  button74.enabled := not checkbox5.checked;
  button75.enabled := not checkbox5.checked;
  button76.enabled := not checkbox5.checked;
  button77.enabled := not checkbox5.checked;
  button78.enabled := not checkbox5.checked;
  button79.enabled := not checkbox5.checked;
  button80.enabled := not checkbox5.checked;

  button106.enabled := not checkbox5.checked;
  button88.enabled := not checkbox5.checked;
  button87.enabled := not checkbox5.checked;


  end;


  button3.Enabled := not checkbox5.checked;
  button4.enabled := not checkbox5.checked;
  button5.enabled := not checkbox5.checked;
  button6.enabled := not checkbox5.checked;
  button7.enabled := not checkbox5.checked;
  button8.enabled := not checkbox5.checked;
  button9.enabled := not checkbox5.checked;
  button10.enabled := not checkbox5.checked;
  button11.enabled := not checkbox5.checked;
  button44.enabled := not checkbox5.checked;
  button45.enabled :=  not checkbox5.checked;
  button54.enabled :=  not checkbox5.checked;
  button55.enabled :=  not checkbox5.checked;
  button56.enabled :=  not checkbox5.checked;
  button57.enabled :=  not checkbox5.checked;
  button105.enabled := checkbox5.checked;
  button105.Caption:= 'B';



  case checkbox5.checked of
  true: begin
          if (IsHex2(edit1.text) = false) and (IsNumber(edit1.text) = false) then exit;
          if (ishex2(edit1.text) = true) then
          begin
            toc := MyHex2Dec(edit1.text);
          end
          else
          begin
            toc := strtoint64(edit1.text);
          end;
          neg := boolean(toc < 0);
          ass := abs(toc);
          ass := trunc(sqrt(ass));
          ass += 4;
          if (neg = true) then
          begin
            edit1.text := '-' + inttobin(abs(toc), ass) + 'B';
          end
          else
          begin
            edit1.text := inttobin(abs(toc), ass) + 'B';

          end;
          edit1.SelStart := length(edit1.text);

          exit;
        end;

  false: begin


           if (IsHex2(edit1.text) = false) and (IsBin(edit1.text) = false) then exit;

           if (IsHex2(edit1.text) = true) then
           begin
             toc := MyHex2Dec(edit1.text);
             edit1.Text := inttostr(toc);
             edit1.SelStart := length(edit1.text);
             exit;
           end;
           if (IsBin(edit1.text) = true) then
           begin

             toc := BinToDec(edit1.text);
             edit1.Text := inttostr(toc);
             edit1.SelStart := length(edit1.text);
             exit;
           end;
         end;



  end;

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Undo = true) then exit;
  Undos.Add(edit1.text);
  if (pos('|', edit1.text) > 0) or (checkbox2.checked = true) then
  begin
    edit1.Font.Size := 8;
    edit1.Height:= 40;
    edit1.BiDiMode:= bdLeftToRight;
  end
  else
  begin
    //if (checkbox1.checked = true) or (checkbox5.checked = true) then
    //begin
    //  edit1.BiDiMode:= bdRightToLeftNoAlign;
    //end
    //else
    //begin
    //  edit1.BiDiMode:= bdLeftToRight;
    //end;
    edit1.font.size := 14;
    edit1.Height:= 40;
  end;

end;

procedure TForm1.Edit1EditingDone(Sender: TObject);
begin

end;







procedure TForm1.FormCreate(Sender: TObject);
var cindex : integer;
begin
  self.Constraints.MaxHeight := 793;
  self.Constraints.MaxWidth := 544;
  self.Position:= poScreenCenter;
  DefaultFormatSettings.DecimalSeparator:= '.';
  DefaultFormatSettings.TimeSeparator:= ':';
  DefaultFormatSettings.DateSeparator:= '/';
  DefaultFormatSettings.ShortDateFormat:= 'd/m/y';
  DefaultFormatSettings.ThousandSeparator:= chr(0);
  version := resourceVersionInfo;
  self.Caption:= 'Calculator PRO v' + version + ' by Andrea Verdi';
  PageControl1.ActivePage := TabSheet1;
  Undos := tstringlist.Create;
  Undo := false;

  titololst := tstringlist.Create;
  combobox1.Clear;
  combobox2.clear;
  combobox1.Items.Add('1.0');
  combobox1.Items.Add('1.2');
  combobox1.Items.Add('1.4');
  combobox1.Items.Add('1.7');
  combobox1.Items.Add('1.8');
  combobox1.Items.Add('2.0');
  combobox1.Items.Add('2.4');
  combobox1.Items.Add('2.5');
  combobox1.Items.Add('2.8');
  combobox1.Items.Add('3.2');
  combobox1.Items.Add('3.4');
  combobox1.Items.Add('3.5');
  combobox1.Items.Add('4.0');
  combobox1.Items.Add('4.5');
  combobox1.Items.Add('5.0');
  combobox1.Items.Add('5.6');
  combobox1.Items.Add('6.3');
  combobox1.Items.Add('7.1');
  combobox1.Items.Add('8.0');
  combobox1.Items.Add('9.0');
  combobox1.Items.Add('10.0');
  combobox1.Items.Add('11.0');
  combobox1.Items.Add('13.0');
  combobox1.Items.Add('14.0');
  combobox1.Items.Add('16.0');
  combobox1.Items.Add('18.0');
  combobox1.Items.Add('20.0');
  combobox1.Items.Add('22.0');
  combobox2.items.add('1/8000');
  combobox2.items.add('1/6400');
  combobox2.items.add('1/4000');
  combobox2.items.add('1/3200');
  combobox2.items.add('1/2400');
  combobox2.items.add('1/2000');
  combobox2.items.add('1/1600');
  combobox2.items.add('1/1250');
  combobox2.items.add('1/1000');
  combobox2.items.add('1/800');
  combobox2.items.add('1/640');
  combobox2.items.add('1/500');
  combobox2.items.add('1/400');
  combobox2.items.add('1/320');
  combobox2.items.add('1/250');
  combobox2.items.add('1/200');
  combobox2.items.add('1/160');
  combobox2.items.add('1/125');
  combobox2.items.add('1/100');
  combobox2.items.add('1/80');
  combobox2.items.add('1/60');
  combobox2.items.add('1/50');
  combobox2.items.add('1/40');
  combobox2.items.add('1/30');
  combobox2.items.add('1/25');
  combobox2.items.add('1/20');
  combobox2.items.add('1/15');
  combobox2.items.add('1/13');
  combobox2.items.add('1/10');
  combobox2.items.add('1/8');
  combobox2.items.add('1/6');
  combobox2.items.add('1/5');
  combobox2.items.add('1/4');

  for cindex := 0 to ComponentCount-1 do
    if (Components[cindex] is TEdit) then
      TEdit(Components[cindex]).Text := '0';

  edit2.text := floattostr(-2*pi);
  edit3.text := floattostr(2*pi);
  edit4.text := '0.1';
  datetimepicker1.DateTime := now;
  datetimepicker2.DateTime := now;
  label12.top := 110;
  label11.top := 142;
  label4.top := 90;
  label5.top := 122;
  AggiornaStatusBar;


end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if (Key = VK_NUMPAD0) then
  begin
    button1.SetFocus;
    button1.click;
  end;
  if (Key = VK_NUMPAD1) then
  begin
    button2.SetFocus;
    button2.Click;
  end;
  if (Key = VK_NUMPAD2) then
  begin
    button3.setfocus;
    button3.click;
  end;
  if (Key = VK_NUMPAD3) then
  begin
    button4.setfocus;
    button4.click;
  end;
  if (Key = VK_DECIMAL) then
  begin
    button5.setfocus;
    button5.click;
  end;
  if (Key = VK_NUMPAD4) then
  begin
    button6.setfocus;
    button6.click;
  end;
  if (Key = VK_NUMPAD5) then
  begin
    button7.setfocus;
    button7.click;
  end;
  if  (Key = VK_NUMPAD6) then
  begin
    button8.setfocus;
    button8.click;
  end;
  if (Key = VK_NUMPAD7) then
  begin
    button9.setfocus;
    button9.click;
  end;
  if  (Key = VK_NUMPAD8) then
  begin
    button10.setfocus;
    button10.click;
  end;
  if (Key = VK_NUMPAD9) then
  begin
    button11.setfocus;
    button11.click;
  end;
  //if (Key = ord('%')) then
  //begin
  //  button40.setfocus;
  //  button40.click;
  //end;
  if (Key = VK_DIVIDE) then
  begin
    button12.setfocus;
    button12.click;
  end;
  if (Key = VK_MULTIPLY) then
  begin
    button13.setfocus;
    button13.click;
  end;
  if (Key = VK_SUBTRACT) then
  begin
    button14.setfocus;
    button14.click;
  end;
  if (Key = VK_ADD) then
  begin
    button15.setfocus;
    button15.click;
  end;
  if (Key = VK_RETURN) then
  begin
    button39.SetFocus;
    button39.Click;
  end;
  if (Key = VK_BACK) then
  begin
    if (edit1.Focused) then
    begin
      edit1.SetFocus;
      Button35.Click;
    end;
  end;


end;

procedure TForm1.ListBox1Click(Sender: TObject);
var st : string;
begin
  st := listbox1.GetSelectedText;

  if (pos('|', st) > 0) then
  begin
    checkbox2.checked := false;
    checkbox1.checked := false;
  end
  else
  begin
    if (pos('H', st) > 0) then
    begin
      checkbox2.checked := true;
      checkbox1.checked := true;
      checkbox5.checked := false;
    end
    else
    begin
      if (pos('B', st) > 0) then
      begin
        checkbox2.checked := true;
        checkbox1.checked := false;
        checkbox5.checked := true;
      end
      else
      begin
        checkbox2.checked := true;
        checkbox1.checked := false;
        checkbox5.checked := false;
      end;

    end;
  end;
  edit1.text := st;
  edit1.SelStart:= length(edit1.text);
end;

procedure TForm1.ListBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = TMouseButton.mbRight) then
  begin
    popupmenu3.PopUp;
  end;
end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = TMouseButton.mbRight) then
  begin
    popupmenu4.PopUp;
  end;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  if (checkbox1.checked = true) then exit;
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := floattostr(pi);
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  edit1.text := floattostr(pi);


end;

procedure TForm1.MenuItem12Click(Sender: TObject);
var i : integer;
var retval:extended;
begin
  if (checkbox1.checked = true) then exit;

  retval := 2.71828182845904523536;
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := floattostrf(retval, tfloatformat.ffNumber, 1,25);
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  edit1.text := floattostrf(retval, tfloatformat.ffNumber, 1,25);

end;

procedure TForm1.MenuItem14Click(Sender: TObject);
var i : integer;
var retval:extended;
begin
  if (checkbox1.checked = true) then exit;

  retval := 9.80665;
  if (checkbox2.checked = true) then
  begin
    edit1.seltext := floattostrf(retval, tfloatformat.ffNumber, 1,6);
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  edit1.text := floattostrf(retval, tfloatformat.ffNumber, 1,6);

end;

procedure TForm1.MenuItem15Click(Sender: TObject);
var i : integer;
var retval1:extended;
var retval2:extended;
var retval:extended;
begin
  if (checkbox1.checked = true) then exit;

  retval := 6.67384 * power(10,-11);

  if (checkbox2.checked = true) then
  begin
    edit1.seltext := floattostrf(retval, tfloatformat.ffNumber, 1,25);
    edit1.SelStart:= length(edit1.text);
    exit;
  end;
  edit1.text := floattostrf(retval, tfloatformat.ffNumber, 1,25);

end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  edit2.Text := floattostr(-2 * pi);
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  edit3.Text := floattostr(2 * pi);
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  MenuItem16.Click;
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  MenuItem17.Click;
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  clipboard.AsText := edit1.Text;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
var i : integer;
begin
  i := listbox1.ItemIndex;
  if (i = -1) then exit;
  clipboard.AsText:= listbox1.Items[i];
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
var i : integer;
begin
  i := listbox2.ItemIndex;
  if (i = -1) then exit;
  clipboard.AsText:= listbox2.Items[i];
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var frm3 : TForm3;
begin

  frm3 := TForm3.Create(self);

  frm3.ShowModal;


end;

procedure TForm1.MenuItem3Click(Sender: TObject);
var frm3 : TForm3;
begin

  frm3 := TForm3.Create(self);

  frm3.ShowModal;


end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  setlength(artotal,0);
  setlength(arfunc,0);
  setlength(ArStMyStatTot,0);
  setlength(ArNMyStatTot,0);
  setlength(ArNMyStatTotNew,0);
  setlength(backup,0);
  setlength(zscores,0);
  setlength(Pred,0);
  setlength(Pred2,0);
  setlength(ArX,0);
  setlength(DCook,0);
  setlength(DCook2,0);
  setlength(Residui,0);
  setlength(PredY,0);
  setlength(Leverage,0);
  setlength(trovati,0);
  setlength(ModMSE, 0);
  setlength(Rstudent,0);
  setlength(DFFITS,0);
  setlength(ArGaus,0);
  setlength(Istog,0);
  Libera;
  halt;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
var lst:tstringlist;
var lstout:tstringlist;
var variable: array[1..2] of string;   // ?1 value    ?pi
type tvariable = array[1..2] of string;
type tvariables = array of tvariable;
var variables : array of tvariable;
var i,v,k,j,o,p : integer;
var buffer:string;
var names,value:string;
var namef,expr:string;
var resultexpr:string;
var arresult: MathResult;
var varout : string;
var arout : array of string;
var filepath:string;
var filename : string;
var path:string;
var logica : string;
var blogica : boolean;
var stbool : string;
var retvalb : boolean;
var modifica : boolean;
var st:string;
var startloop,endloop:boolean;
var lstloop:tstringlist;
var st1,st2,stl:string;
var loopexpr1, loopexpr2 : string;
var stloop:string;
var num1,num2:integer;
begin

  opendialog1.Filter := 'My Script|*.mys';
  if (opendialog1.execute) then
  begin
    filepath := opendialog1.FileName;
    filename := ExtractFileNameOnly(filepath);
    path := extractfilepath(filepath);
    if (fileexists(filepath) = false) then exit;
  end
  else
  begin
    exit;
  end;

  lst := tstringlist.create;
  lstout := tstringlist.create;
  lstloop := tstringlist.create;
  lst.Clear;
  lstout.clear;
  lstloop.Clear;
  lst.LoadFromFile(filepath);
  DefaultFormatSettings.ShortDateFormat:= 'd/m/y';
  modifica := false;
  startloop := false;
  endloop := false;
  // variable;?nome;value
  // variable;?r;5
  // ?areac = ?r^2*pi
  // variabili stringa vengono messe tra ''
  // nome variabile deve iniziare con ?xxx
  // ho deciso di utilizzare ?nomevariabile per non
  // creare casini coi replace
  setlength(variables, 0);
  setlength(arout,0);

  for i := 0 to lst.count - 1 do
  begin
    buffer := lst[i];
    if (pos('!startloop', buffer) > 0) then
    begin
      startloop := true;
      endloop := false;
      j := i + 1;
      st := extractword(2, buffer, [';']);
      st1 := extractword(2, buffer, [';']);
      st2 := extractword(3, buffer, [';']);
      if (pos('$', st) > 0) then
      begin
         loopexpr1 := st;
         for k := 0 to length(variables) - 1 do
         begin
            loopexpr1 := replacestr(loopexpr1, variables[k][1], variables[k][2]);
            loopexpr1 := stringreplace(loopexpr1, variables[k][1], variables[k][2], [rfReplaceAll, rfIgnoreCase]);
         end;
         loopexpr2 := '1=1';

      end
      else
      begin
        num1 := strtoint(st1);
        num2 := strtoint(st2);
        loopexpr1 := trim(st1) + '<=' + trim(st2);
        loopexpr2 := '1=1';
      end;

      loopexpr2 := '1=1';
      lstloop.clear;
      lstloop := GetLoopList(lst, j);

      while ((round(mathsolver(loopexpr1)[1]) = 1) and (round(mathsolver(loopexpr2)[1]) = 1)) do
      begin
        for k := 0 to lstloop.count - 1 do
        begin
           stloop := lstloop[k];

          if (pos('!variable', stloop) > 0) then
           begin
             names := trim(extractword(2, stloop, [';']));
             value := trim(extractword(3, stloop, [';']));
             if (lowercase(value) = 'now') then
             begin
               value :=  chr(39) + datetostr(now) + chr(39);
               value := replacestr(value, '-', '/');
             end;

             variable[1] := names;
             variable[2] := value;
             setlength(variables, length(variables) + 1);
             variables[length(variables) - 1] := variable;
             continue;
           end;

           if (pos('=', stloop) > 0) and (pos('!output', stloop) = 0) and (pos('!logic', stloop) = 0)  then
           begin
             namef := trim(extractword(1, stloop, ['=']));
             expr := trim(extractword(2, stloop, ['=']));
             for o := 0 to length(variables) - 1 do
             begin
                expr := replacestr(expr, variables[o][1], variables[o][2]);
                expr := stringreplace(expr, variables[o][1], variables[o][2], [rfReplaceAll, rfIgnoreCase]);
             end;

             if(pos('?', expr) >0) then exit;

             arresult := mathsolver(expr);


             if (arresult[2] = 1) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,20);
             if (arresult[2] = 2) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,0);

             variable[1] := namef;
             variable[2] := resultexpr;
             modifica := false;
             for o := 0 to length(variables) - 1 do
             begin
               if (variables[o][1] = namef) then
               begin
                 variables[o][2] := resultexpr;
                 modifica := true;
                 break;
               end;

             end;

             if (modifica = false) then
             begin
               setlength(variables, length(variables) + 1);
               variables[length(variables) - 1] := variable;
             end;
             continue;
           end;

           if (pos('=', stloop) > 0) and (pos('!output',stloop) > 0) and (pos('!logic', stloop) = 0)  then
           begin
             varout := trim(extractword(2, stloop, ['=']));
             if (pos(';', varout) = 0) then
             begin
               setlength(arout, length(arout)+1);
               arout[length(arout)-1] := trim(varout);
             end
             else
             begin
               arout := varout.Split(';');
             end;

             for o := 0 to length(arout) - 1 do
             begin
               for p := 0 to length(variables) - 1 do
               begin
                 if (arout[o] = variables[p][1]) then
                 begin
                   lstout.add(variables[p][1] + '=' + variables[p][2]);
                 end;
               end;
             end;

           end;

           // logic;$>=$;true/false;$v=blablal;$=
           // logic;$>=$;true

           if (pos('!output', stloop) = 0) and (pos('!logic', stloop) > 0)  then
           begin
              logica := extractword(2, stloop, [';']);
              stbool := extractword(3, stloop, [';']);
              logica := trim(logica);
              stbool := trim(stbool);
              for o := 0 to length(variables) - 1 do
              begin
                 logica := replacestr(logica, variables[o][1], variables[o][2]);
                 logica := stringreplace(logica, variables[o][1], variables[o][2], [rfReplaceAll, rfIgnoreCase]);
              end;
              arresult := mathsolver(logica);
              blogica := boolean(round(arresult[1]));
              retvalb := StringToBoolean(stbool);
              if (blogica = retvalb) then
              begin
                v := 4;
                repeat
                    stl := extractword(v, stloop, [';']);
                    if (stl = '') then continue;
                    if (length(stl) = 0) then continue;
                    namef := trim(extractword(1, stl, ['=']));
                    expr := trim(extractword(2, stl, ['=']));
                    for o := 0 to length(variables) - 1 do
                    begin
                       expr := replacestr(expr, variables[o][1], variables[o][2]);
                       expr := stringreplace(expr, variables[o][1], variables[o][2], [rfReplaceAll, rfIgnoreCase]);
                    end;

                    if(pos('?', expr) >0) then exit;
                    arresult := mathsolver(expr);
                    if (arresult[2] = 1) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,20);
                    if (arresult[2] = 2) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,0);

                    variable[1] := namef;
                    variable[2] := resultexpr;
                    modifica := false;
                    for o := 0 to length(variables) - 1 do
                    begin
                      if (variables[o][1] = namef) then
                      begin
                        variables[o][2] := resultexpr;
                        modifica := true;
                        break;
                      end;

                    end;

                    if (modifica = false) then
                    begin
                      setlength(variables, length(variables) + 1);
                      variables[length(variables) - 1] := variable;
                    end;
                    v += 1;

                until (stl = '') or (length(stl) = 0);
              end;
           end;


        end;


        st := extractword(2, buffer, [';']);
        st1 := extractword(2, buffer, [';']);
        st2 := extractword(3, buffer, [';']);
        if (pos('$', st) > 0) then
        begin
           loopexpr1 := st;
           for o := 0 to length(variables) - 1 do
           begin
              loopexpr1 := replacestr(loopexpr1, variables[o][1], variables[o][2]);
              loopexpr1 := stringreplace(loopexpr1, variables[o][1], variables[o][2], [rfReplaceAll, rfIgnoreCase]);
           end;
           loopexpr2 := '1=1';

        end
        else
        begin
          num1 += 1;
          num2 := num2;
          st1 := inttostr(num1);
          st2 := inttostr(num2);
          loopexpr1 := trim(st1) + '<=' + trim(st2);
          loopexpr2 := '1=1';
        end;

        loopexpr2 := '1=1';


      end;


      continue;

    end;

    if (pos('!endloop', buffer) > 0)  then
    begin
      startloop := false;
      endloop := true;
      continue;
    end;



    if (pos('!variable', buffer) > 0) and (startloop = false) then
    begin
      names := trim(extractword(2, buffer, [';']));
      value := trim(extractword(3, buffer, [';']));
      if (lowercase(value) = 'now') then
      begin
        value :=  chr(39) + datetostr(now) + chr(39);
        value := replacestr(value, '-', '/');
      end;

      variable[1] := names;
      variable[2] := value;
      setlength(variables, length(variables) + 1);
      variables[length(variables) - 1] := variable;
      continue;
    end;

    if (pos('=', buffer) > 0) and (pos('!output', buffer) = 0) and (pos('!logic', buffer) = 0) and (startloop = false) then
    begin
      namef := trim(extractword(1, buffer, ['=']));
      expr := trim(extractword(2, buffer, ['=']));
      for j := 0 to length(variables) - 1 do
      begin
         expr := replacestr(expr, variables[j][1], variables[j][2]);
         expr := stringreplace(expr, variables[j][1], variables[j][2], [rfReplaceAll, rfIgnoreCase]);
      end;
      if(pos('?', expr) >0) then exit;
      arresult := mathsolver(expr);
      if (arresult[2] = 1) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,20);
      if (arresult[2] = 2) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,0);

      variable[1] := namef;
      variable[2] := resultexpr;
      modifica := false;
      for j := 0 to length(variables) - 1 do
      begin
        if (variables[j][1] = namef) then
        begin
          variables[j][2] := resultexpr;
          modifica := true;
          break;
        end;

      end;

      if (modifica = false) then
      begin
        setlength(variables, length(variables) + 1);
        variables[length(variables) - 1] := variable;
      end;
      continue;
    end;

    if (pos('=', buffer) > 0) and (pos('!output', buffer) > 0) and (pos('!logic', buffer) = 0) and (startloop = false) then
    begin
      varout := trim(extractword(2, buffer, ['=']));
      if (pos(';', varout) = 0) then
      begin
        setlength(arout, length(arout)+1);
        arout[length(arout)-1] := trim(varout);
      end
      else
      begin
        arout := varout.Split(';');
      end;

      for j := 0 to length(arout) - 1 do
      begin
        for k := 0 to length(variables) - 1 do
        begin
          if (arout[j] = variables[k][1]) then
          begin
            lstout.add(variables[k][1] + '=' + variables[k][2]);
          end;
        end;
      end;

    end;

    // logic;$>=$;true/false;$v=blablal;$=
    // logic;$>=$;true

    if (pos('!output', buffer) = 0) and (pos('!logic', buffer) > 0) and (startloop = false) then
    begin
       logica := extractword(2, buffer, [';']);
       stbool := extractword(3, buffer, [';']);
       logica := trim(logica);
       stbool := trim(stbool);
       for j := 0 to length(variables) - 1 do
       begin
          logica := replacestr(logica, variables[j][1], variables[j][2]);
          logica := stringreplace(logica, variables[j][1], variables[j][2], [rfReplaceAll, rfIgnoreCase]);
       end;
       arresult := mathsolver(logica);
       blogica := boolean(round(arresult[1]));
       retvalb := StringToBoolean(stbool);
       if (blogica = retvalb) then
       begin
         v := 4;
         repeat
             st := extractword(v, buffer, [';']);
             if (st = '') then continue;
             if (length(st) = 0) then continue;
             namef := trim(extractword(1, st, ['=']));
             expr := trim(extractword(2, st, ['=']));
             for j := 0 to length(variables) - 1 do
             begin
                expr := replacestr(expr, variables[j][1], variables[j][2]);
                expr := stringreplace(expr, variables[j][1], variables[j][2], [rfReplaceAll, rfIgnoreCase]);
             end;
             if(pos('?', expr) >0) then exit;
             arresult := mathsolver(expr);
             if (arresult[2] = 1) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,20);
             if (arresult[2] = 2) then resultexpr := floattostrf(arresult[1], tfloatformat.ffNumber, 1,0);

             variable[1] := namef;
             variable[2] := resultexpr;
             modifica := false;
             for j := 0 to length(variables) - 1 do
             begin
               if (variables[j][1] = namef) then
               begin
                 variables[j][2] := resultexpr;
                 modifica := true;
                 break;
               end;

             end;

             if (modifica = false) then
             begin
               setlength(variables, length(variables) + 1);
               variables[length(variables) - 1] := variable;
             end;
             v += 1;

         until (st = '') or (length(st) = 0);
       end;
    end;
  end;
  lstout.SaveToFile(path + filename + '.out');
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  self.WindowState:= wsMaximized;
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin

end;


procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d:extended;
var valore : extended;
var n : integer;
begin
  if (isnumber(edit4.text) = false) then exit;
  valore := strtofloat(edit4.text);
  d := abs(frac(valore));
  if (d = nan) or (d = 0) then
  begin
    d := 0.1;
  end;
  n := length(floattostr(d));
  d := d/d;

  d := d / (Power(10, n-2));
  if (button = TUDBtnType.btNext) then
  begin
    valore := valore + d;
    edit4.text := floattostr(valore);
    exit;
  end;
  if (button = TUDBtnType.btPrev) then
  begin
    valore := valore - d;
    edit4.text := floattostr(valore);
    exit;
  end;

end;


procedure TForm1.AggiornaStatusBar;
begin
  statusbar1.Panels[0].Text := 'Ans = ' + Ans;
  statusbar1.panels[0].width := 250;
end;

end.

