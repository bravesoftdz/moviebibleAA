unit Unit2; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  LCLIntf, ActnList, ColorBox, Unit8, Unit5, Unit7, Unit6, Unit9, Unit12, Unit11, Unit13, Unit14, Unit15;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button12: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure ColorButton1ColorChanged(Sender: TObject);
    procedure ColorButton2Click(Sender: TObject);
    procedure ColorButton2ColorChanged(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2: TForm2;
  PaziUKomboBox1 : boolean;
  bl : text;

implementation
uses Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Timer1.Enabled:=True;
  Form1.Label1.Visible:=False;
  Form1.Label3.Visible:=False;
  pauza:=false;
  Form2.Hide;
  Form1.SetFocus;
  if PositionSeSmeni then pozicija:=arPozicija[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1,ComboBox3.ItemIndex+1];
  if TrialZavrsi and (pozicija < LevaGranicaMatej11) then pozicija:=LevaGranicaMatej11;
  Sekundi:=1;
end; //procedure TForm2.Button1Click

procedure TForm2.Button10Click(Sender: TObject);
begin
  some13pozicija:=arPozicija[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1,ComboBox3.ItemIndex+1];
  val(arKniga[some13pozicija], Knigabe);
  val(arGlava[some13pozicija], Glavabe);
  Form13.Label2.Caption:=arKnigaNaslov[Knigabe]+' '+arGlava[some13pozicija]+','+arStih[some13pozicija];
  Form13.Label5.Visible:=False;
  Form13.Edit1.Text:='';
  Form13.Show;
end;


procedure TForm2.Button12Click(Sender: TObject);
begin
  Form15.Show;
end;

procedure TForm2.Button13Click(Sender: TObject);
begin

end;

procedure TForm2.Button2Click(Sender: TObject);
var
    k : Word;
begin
   k := 67;
   Form1.Button1KeyDown(Button1, k, []);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  OpenURL('http://sourceforge.net/projects/mbfbh/');
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
  Form14.Show;
end;

procedure TForm2.Button9Click(Sender: TObject);
var s, linija: String;
begin
  Form12.Show;
  Form12.Memo2.Clear;
  Form12.Memo2.Lines.LoadFromFile('BibleList.txt');
  if ShowBibleNames then Form12.CheckBox1.Checked:=True
                    else Form12.CheckBox1.Checked:=False;
end;

procedure TForm2.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked then minintray:='minimizedintray'
                       else minintray:='normal';
end;

procedure TForm2.CheckBox2Change(Sender: TObject);
begin
  if CheckBox2.Checked then begin
                         if conditionexit > 0 then begin
                         end
                       end else
                       begin
                       end;
end;

procedure TForm2.CheckBox3Change(Sender: TObject);
begin
  if CheckBox3.Checked then mbmany:=True
                       else mbmany:=False;
end;

procedure TForm2.CheckBox4Change(Sender: TObject);
begin
  if CheckBox4.Checked then bStopAtPosition:=true
                       else begin
                                 bStopAtPosition:=false;
                                 Edit1.Text:='';
                            end;
end;

procedure TForm2.ColorButton1Click(Sender: TObject);
begin

end;


procedure TForm2.Button4Click(Sender: TObject);
begin
  Form8.Show;
  if Form8.RadioButton1.Checked then begin
                                       Form8.ListBox2.ItemIndex:=0;
                                       Form8.CheckBox1.Checked:=False;
                                       Form8.CheckBox1.Enabled:=False;
                                     end
                                     else if OneByOne then Form8.CheckBox1.Checked:=True
                                                      else Form8.CheckBox1.Checked:=False;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm2.ColorButton1ColorChanged(Sender: TObject);
begin
  Form1.Color:=ColorButton1.ButtonColor;
  Form1.Memo1.Color:=ColorButton1.ButtonColor;
  Form1Color:=ColorButton1.ButtonColor;
end;

procedure TForm2.ColorButton2Click(Sender: TObject);
begin

end;

procedure TForm2.ColorButton2ColorChanged(Sender: TObject);
begin
  Form1.Memo1.Font.Color:=ColorButton2.ButtonColor;
  Font1Color:=ColorButton2.ButtonColor;
  Form1.Label1.Font.Color:=Form1.Memo1.Font.Color;
  Form1.Label2.Font.Color:=Form1.Memo1.Font.Color;
  Form1.Label3.Font.Color:=Form1.Memo1.Font.Color;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
var stNovItem : String;
    i , VkupnoStihoviVokniga, KnigaToInt, ETimeinSec: Integer;
    EThours, ETmin, ETsec, OstatokSekundi : Integer;
    sEThours, sETmin, sETsec, sNumOfChapters, svkupnostihovi: String;
begin
  if not(PaziUKomboBox1) then begin
  ComboBox2.Items.Clear;
  ComboBox3.Items.Clear;
  for i:=1 to arKnigakonGlava[ComboBox1.ItemIndex+1] do begin
     str(i, stNovItem);
     ComboBox2.AddItem(stNovItem, nil);
  end;
  ComboBox2.ItemIndex:=0;
  for i:=1 to arKnigaGlava[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1] do begin
     str(i, stNovItem);
     ComboBox3.AddItem(stNovItem, nil);
  end;
  ComboBox3.ItemIndex:=0;
  end; // if paziukombobox1
  // labela Kniga: glavi stihovi estimated time
  VkupnoStihoviVoKniga:=0;
  for i:=1 to 31102 do begin
     val(arKniga[i], KnigaToInt);
     if KnigaToInt = (ComboBox1.ItemIndex+1) then VkupnoStihoviVoKniga:=VkupnoStihoviVoKniga+1;
  end;
  ETimeinSec:=BrSekundi*VkupnoStihoviVoKniga;
  EThours:=trunc(ETimeinSec / 3600);
  OstatokSekundi:=EtimeinSec mod 3600;
  ETmin:=round(OstatokSekundi / 60);
  ETsec:=OstatokSekundi mod 60;
  if (EThours = 0 ) and (ETmin = 0) then ETmin:=1;
  str(EThours, sEThours); str(ETmin, sETmin);  str(ETsec, sETsec);
  str(ComboBox2.Items.count, sNumOfChapters);
  str(VkupnoStihoviVoKniga, svkupnostihovi);
  Label4.Caption:=arKnigaNaslov[ComboBox1.ItemIndex+1]+' chapters: '+ sNumOfChapters+' / total verses: ' + svkupnostihovi+ ' / estimated time: ' +sEThours +' hours ' + sETmin +' minutes';
  PositionSeSmeni:=true;
  Edit2.Text:=IntToStr(arPozicija[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1,ComboBox3.ItemIndex+1]);
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
var stNovItem : String;
    i : Integer;
begin
  ComboBox3.Items.Clear;
  for i:=1 to arKnigaGlava[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1] do begin
     str(i, stNovItem);
     ComboBox3.AddItem(stNovItem, nil);
  end;
  ComboBox3.ItemIndex:=0;
  PositionSeSmeni:=true;
  Edit2.Text:=IntToStr(arPozicija[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1,ComboBox3.ItemIndex+1]);
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
begin
  PositionSeSmeni:=true;
  Edit2.Text:=IntToStr(arPozicija[ComboBox1.ItemIndex+1,ComboBox2.ItemIndex+1,ComboBox3.ItemIndex+1]);
end;

procedure TForm2.ComboBox4Change(Sender: TObject);
begin
  Case ComboBox4.ItemIndex of
      0: BrSekundi:=1;
      1: BrSekundi:=2;
      2: BrSekundi:=3;
      3: BrSekundi:=4;
      4: BrSekundi:=5;
      5: BrSekundi:=6;
      6: BrSekundi:=7;
      7: BrSekundi:=8;
      8: BrSekundi:=9;
      9: BrSekundi:=10;
     10: BrSekundi:=11;
     11: BrSekundi:=12;
     12: BrSekundi:=13;
     13: BrSekundi:=14;
     14: BrSekundi:=15;
     15: BrSekundi:=16;
     16: BrSekundi:=17;
     17: BrSekundi:=18;
     18: BrSekundi:=19;
     19: BrSekundi:=20;
     20: BrSekundi:=21;
     21: BrSekundi:=22;
     22: BrSekundi:=23;
     23: BrSekundi:=24;
     24: BrSekundi:=25;
     25: BrSekundi:=25;
     26: BrSekundi:=27;
     27: BrSekundi:=28;
     28: BrSekundi:=29;
     29: BrSekundi:=30;
     30: BrSekundi:=31;
     31: BrSekundi:=32;
     32: BrSekundi:=33;
     33: BrSekundi:=34;
     34: BrSekundi:=35;
     35: BrSekundi:=36;
     36: BrSekundi:=37;
     37: BrSekundi:=38;
     38: BrSekundi:=39;
     39: BrSekundi:=40;
     40: BrSekundi:=41;
     41: BrSekundi:=42;
     42: BrSekundi:=43;
     43: BrSekundi:=44;
     44: BrSekundi:=45;
     45: BrSekundi:=46;
     46: BrSekundi:=47;
     47: BrSekundi:=48;
     48: BrSekundi:=49;
     49: BrSekundi:=50;
     50: BrSekundi:=51;
     51: BrSekundi:=52;
     52: BrSekundi:=53;
     53: BrSekundi:=54;
     54: BrSekundi:=55;
     55: BrSekundi:=56;
     56: BrSekundi:=57;
     57: BrSekundi:=58;
     58: BrSekundi:=59;
     59: BrSekundi:=60;
     60: BrSekundi:=61;
     61: BrSekundi:=62;
     62: BrSekundi:=63;
     63: BrSekundi:=64;
     64: BrSekundi:=65;
     65: BrSekundi:=66;

  end;
  PaziUKomboBox1:=true;
  ComboBox1Change(ComboBox1);
  PaziUKomboBox1:=false;
end;

procedure TForm2.ComboBox5Change(Sender: TObject);
var nFont : integer;
begin                                       // vidi molime te nema slucajnosti!
  Case ComboBox5.ItemIndex of
      0: Form1.Memo1.Font.Size:=12;
      1: Form1.Memo1.Font.Size:=13;
      2: Form1.Memo1.Font.Size:=14;
      3: Form1.Memo1.Font.Size:=15;
      4: Form1.Memo1.Font.Size:=16;
      5: Form1.Memo1.Font.Size:=17;
      6: Form1.Memo1.Font.Size:=19;
      7: Form1.Memo1.Font.Size:=20;
      8: Form1.Memo1.Font.Size:=22;
      9: Form1.Memo1.Font.Size:=30;
      10: Form1.Memo1.Font.Size:=40;
      11: Form1.Memo1.Font.Size:=50;
      12: Form1.Memo1.Font.Size:=60;
      13: Form1.Memo1.Font.Size:=70;
      14: Form1.Memo1.Font.Size:=80;
      15: Form1.Memo1.Font.Size:=90;
      16: Form1.Memo1.Font.Size:=100;
  end;
  Case ComboBox5.ItemIndex of
      0: Form11.Memo1.Font.Size:=12;
      1: Form11.Memo1.Font.Size:=13;
      2: Form11.Memo1.Font.Size:=14;
      3: Form11.Memo1.Font.Size:=15;
      4: Form11.Memo1.Font.Size:=16;
      5: Form11.Memo1.Font.Size:=17;
      6: Form11.Memo1.Font.Size:=19;
      7: Form11.Memo1.Font.Size:=20;
      8: Form11.Memo1.Font.Size:=22;
      9: Form11.Memo1.Font.Size:=30;
      10: Form11.Memo1.Font.Size:=40;
      11: Form11.Memo1.Font.Size:=50;
      12: Form11.Memo1.Font.Size:=60;
      13: Form11.Memo1.Font.Size:=70;
      14: Form11.Memo1.Font.Size:=80;
      15: Form11.Memo1.Font.Size:=90;
      16: Form11.Memo1.Font.Size:=100;
  end;

  nFont:=Form1.Memo1.Font.Size;
  str(nFont, KojFont);
end;

procedure TForm2.ComboBox6Change(Sender: TObject);
begin
  Case ComboBox6.ItemIndex of
    0: conditionexit:=0;
    1: conditionexit:=1;
    2: conditionexit:=5;
    3: conditionexit:=10;
    4: conditionexit:=16;
    5: conditionexit:=22;
    6: conditionexit:=29;
    7: conditionexit:=35;
    8: conditionexit:=40;
    9: conditionexit:=45;
    10: conditionexit:=50;
    11: conditionexit:=60;
    12: conditionexit:=70;
    13: conditionexit:=80;
    14: conditionexit:=90;
    15: conditionexit:=96;
    16: conditionexit:=91;
    17: conditionexit:=92;
    18: conditionexit:=93;
    19: conditionexit:=95;

  end;
  if conditionexit > 0 then begin
                               if checkBox2.Checked then begin
                               end
                               else begin
                               end;
                            end
                            else begin
                            end;
end;

procedure TForm2.ComboBox7Change(Sender: TObject);
begin
  Case ComboBox7.ItemIndex of
    0 : PreLines:=0;
    1 : PreLines:=1;
    2 : PreLines:=2;
    3 : PreLines:=3;
    4 : PreLines:=4;
   end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  sStopAtPosition:=Trim(Edit1.Text);
  iStopAtPosition:=StrToIntDef(sStopAtPosition, 31102);
end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  PaziUKomboBox1:=false;
  ComboBox6.ItemIndex:=0;
  if LevoDesno then CheckBox2.Checked:=True;
end;

procedure TForm2.Memo1Change(Sender: TObject);
begin

end;


end.

