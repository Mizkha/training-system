unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, Menus, JPEG, pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label9: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label12: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label14: TLabel;
    Button5: TButton;
    Label15: TLabel;
    Label16: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Button6: TButton;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ComboBox2: TComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel3: TPanel;
    Button7: TButton;
    Button8: TButton;
    Label29: TLabel;
    Memo2: TMemo;
    Label31: TLabel;
    Label32: TLabel;
    CheckBox10: TCheckBox;
    Button10: TButton;
    Label30: TLabel;
    Label33: TLabel;
    Panel4: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  r,r1,r2:real;
  times: word;
  cabo,protein,fats:real;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
  var water:real;
begin
  if radiobutton3.Checked=true then   water:=(35*StrToInt(Edit4.Text))/1000;
  if radiobutton4.Checked=true then   water:=(31*StrToInt(Edit4.Text))/1000;
    label30.Caption:=FloatToStr(water);
      Label30.Show;
        Label33.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
gu:word;
t:real;
one,two,three,four,five,six,r:real;
begin
gu:=StrToInt((Edit1.Text))*60;
   if gu>1440 then
        begin
          ShowMessage('Привышен лимит часов в сутки!,Попробуйте ещё раз =)');
          end else
                  begin
if RadioButton1.Checked = True
  then
      begin
        t:=3;
        one:=(gu+30)/60;
          if one>24 then one:=one-24;
        two:=one+t;
         if two>24 then two:=two-24;
        three:=two+t;
         if three>24 then three:=three-24;
        four:=three+t;
         if four>24 then four:=four-24;
        five:=four+t;
         if five>24 then five:=five-24;
        Label4.Caption:=FloatToStr(Trunc(two))+':'+FloatToStr((Frac(two))*60);
        Label3.Caption:=FloatToStr(Trunc(one))+':'+FloatToStr((Frac(one))*60);
        Label5.Caption:=FloatToStr(Trunc(three))+':'+FloatToStr((Frac(three))*60);
        Label6.Caption:=FloatToStr(Trunc(four))+':'+FloatToStr((Frac(four))*60);
        Label7.Caption:=FloatToStr(Trunc(five))+':'+FloatToStr((Frac(five))*60);
      end
          else
              begin
                //ShowMessage('выберите число потреблений пищщи');
              end;
if RadioButton2.Checked = True
  then
      begin
        t:=2.5;
        one:=(gu+30)/60;
         if one>24 then one:=one-24;
        two:=one+t;
         if two>24 then two:=two-24;
        three:=two+t;
         if three>24 then three:=three-24;
        four:=three+t;
         if four>24 then four:=four-24;
        five:=four+t;
         if five>24 then five:=five-24;
        six:=five+t;
         if six>24 then six:=six-24;
        Label4.Caption:=FloatToStr(Trunc(two))+':'+FloatToStr((Frac(two))*60);
        Label3.Caption:=FloatToStr(Trunc(one))+':'+FloatToStr((Frac(one))*60);
        Label5.Caption:=FloatToStr(Trunc(three))+':'+FloatToStr((Frac(three))*60);
        Label6.Caption:=FloatToStr(Trunc(four))+':'+FloatToStr((Frac(four))*60);
        Label7.Caption:=FloatToStr(Trunc(five))+':'+FloatToStr((Frac(five))*60);
        Label8.Caption:=FloatToStr(Trunc(six))+':'+FloatToStr((Frac(six))*60);
      end
          else
              begin
                //  ShowMessage('выберите число потреблений пищщи');
              end;
                  end;
                      Label2.Visible:=true;
                       Label3.Visible:=true;
                        Label4.Visible:=true;
                         Label5.Visible:=true;
                          Label6.Visible:=true;
                           Label7.Visible:=true;
                            Label8.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
              Panel1.Visible:=true;
              Panel2.Visible:=false;
              Panel3.Visible:=false;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
              Panel1.Visible:=false;
              Panel2.Visible:=true;
              Panel3.Visible:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
              Panel1.Visible:=false;
              Panel2.Visible:=false;
              Panel3.Visible:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
var w,h,a,activity :real;
begin
if (Radiobutton3.Checked = false) and (Radiobutton4.Checked = false)
  or (Edit2.Text='лет')or(Edit2.Text='')
    or (Edit3.Text='см')or(Edit3.Text='')
      or(Edit4.Text='кг')or(Edit4.Text='')
          then Showmessage('Заполните поля!');

  if Radiobutton3.Checked = true then
    begin
      a:=StrtoInt(Edit2.text);
         h:=StrtoInt(Edit3.text);
            w:=StrtoInt(Edit4.text);
              if Checkbox1.Checked = true then  activity:=1.2;
              if Checkbox2.Checked = true then  activity:=1.38;
              if Checkbox3.Checked = true then  activity:=1.55;
              if Checkbox4.Checked = true then  activity:=1.73;
                r:=(66+(13.7*w)+(5*h)-(6.8*a))*activity-500;   //каллории для жизненого минимума
                r1:=(66+(13.7*w)+(5*h)-(6.8*a))*activity;     //калории для тренировок
                  //activity:=0;
    end;
          if Radiobutton4.Checked = true then
              begin
                a:=StrtoInt(Edit2.text);
                  h:=StrtoInt(Edit3.text);
                    w:=StrtoInt(Edit4.text);
                      if Checkbox1.Checked = true then  activity:=1.2;
                      if Checkbox2.Checked = true then  activity:=1.38;
                      if Checkbox3.Checked = true then  activity:=1.55;
                      if Checkbox4.Checked = true then  activity:=1.73;
                        r:=(665+(9.6*w)+(1.8*h)-(4.7*a))*activity-500; //каллории для жизненого минимума
                        r1:=(665+(9.6*w)+(1.8*h)-(4.7*a))*activity;   //калории для тренировок
                          //activity:=0;
              end;
     Label15.Caption:=FloatToStr(r);
      Showmessage('Ваш уровень каллорий в день - '+FloatToStr(r)+' ккал (без учёта тренировок)');
        label15.Visible:=true;
          label17.Visible:=true;
            label18.Visible:=true;
            CheckBox6.Visible:=True;
            CheckBox5.Visible:=True;
             if a>120 then Showmessage ('Вы уверенны что ваш возраст '+FloatToStr(a)+'лет?');
              if h>250 then Showmessage ('Вы точно человек? Ваш рост '+FloatToStr(h)+'см');
               if w>120 then Showmessage ('Вы уверенны что ваш вес '+FloatToStr(w)+'кг?');
end;

procedure TForm1.Button6Click(Sender: TObject);
  var low,high:real;
begin
  if Checkbox6.Checked=true  then  begin
      if StrtoInt(Edit5.text)+StrtoInt(Edit6.text)+StrtoInt(Edit7.text)=100 then  begin
          low:=r-250;
             if low<1200 then
              begin
                low:=1200;
                   Showmessage('Достигнут порог дневного потребления калорий — 1200.Если употреблять меньше, то можно серьезно испортить свой метаболизм');
              end;
          high:=r+100;
            Label19.Caption:='Диапазон калорий: '+FloatToStr(low)+' ~ '+FloatToStr(high)+'.';
         //Showmessage('Диапазон калорий: '+FloatToStr(low)+' ~ '+FloatToStr(high)+'.');
              cabo:=(r*(StrtoInt(Edit5.text)/100))/5;
               protein:=(r*(StrToInt(Edit6.text)/100))/4;
                fats:=(r*(StrToInt(Edit7.Text)/100))/9;
                  Label20.Caption:=FloatToStr(cabo);
                    Label21.Caption:=FloatToStr(protein);
                      Label22.Caption:=FloatToStr(fats);
      end else Showmessage('Введите корректные данные');
  end;
        if Checkbox5.Checked=true  then  begin
          if Checkbox7.Checked=true  then     r{r2}:={r1}r+500;
            if Checkbox8.Checked=true  then   r{r2}:={r1}r+250;
              if Checkbox9.Checked=true  then r{r2}:={r1}r+100;
               cabo:=(r{r2}*(StrtoInt(Edit5.text)/100))/5;
                protein:=(r{r2}*(StrToInt(Edit6.text)/100))/4;
                  fats:=(r{r2}*(StrToInt(Edit7.Text)/100))/9;
                    Label20.Caption:=FormatFloat('000.',(cabo));      {с ограниченной запятой}
                      Label21.Caption:=FormatFloat('000.',(protein));
                       Label22.Caption:=FormatFloat('000.',(fats));

        end;
         label20.Visible:=True;
          label21.Visible:=True;
            label22.Visible:=True;
              label26.Visible:=True;
                label27.Visible:=True;
                  label28.Visible:=True;
                    label19.Visible:=True;
                       if  (CheckBox5.Checked = true)
                          then begin
                        Label32.Caption:=FloatToStr(r);
                          Label31.Show;
                            label32.Show;
                          end;
end;

procedure TForm1.Button7Click(Sender: TObject);
 var cal1,cal2,cal3,cal4,cal5,cal6,p1,p2,p3,p4,p5,p6,f1,f2,f3,f4,f5,f6,c1,c2,c3,c4,c5,c6:double;
     string1,string2,string3,string4,string5,string6:string;

     food:boolean;
     Pfood,Ffood,Cfood,Peat,Feat,Ceat:double;
     g1,g2,g3,g4,g5:word;
begin
Memo2.Show;
  Memo2.Clear;
  if times=5 then
    begin
      cal1:=r*0.3;
        cal2:=r*0.10;
          cal3:=r*0.3;
            cal4:=r*0.15;
              cal5:=r*0.15;

                p1:=protein*0.10;
                  p2:=protein*0.15;
                    p3:=protein*0.15;
                      p4:=protein*0.20;
                        p5:=protein*0.40;

                          f1:=fats*0.13;
                            f2:=fats*0.20;
                              f3:=fats*0.34;
                                f4:=fats*0.17;
                                  f5:=fats*0.16;

                                    c1:=cabo*0.42;
                                      c2:=cabo*0.15;
                                        c3:=cabo*0.25;
                                          c4:=cabo*0.1;
                                            c5:=cabo*0.08;
  if  (CheckBox10.Checked = true) then
    begin
   //1 meal
          Pfood:=0.119;
              Ffood:=0.058;
                Cfood:=0.654;
                  food:=false;
                     peat:=0;
                      feat:=0;
                        ceat:=0;
         while food=false do
          begin
            if Peat<p1 then
              Peat:=Peat+Pfood
            else food:=true;
              if feat<f1 then
                Feat:=feat+Ffood
              else food:=true;
                if Ceat<c1 then
                  Ceat:=Ceat+Cfood
                else food:=true;
                  g1:=g1+1;
          end;
    //2 meal
          Pfood:=0.07;
              Ffood:=0.006;
                Cfood:=0.77;
                  food:=false;
                     peat:=0;
                      feat:=0;
                        ceat:=0;

          while food=false do
          begin
            if Peat<p2 then
              Peat:=Peat+Pfood
            else food:=true;
              if feat<f2 then
                Feat:=feat+Ffood
              else food:=true;
                if Ceat<c2 then
                  Ceat:=Ceat+Cfood
                else food:=true;
                  g2:=g2+1;
          end;
      //3 meal
      Pfood:=0.126;
              Ffood:=0.023;
                Cfood:=0.65;
                  food:=false;
                     peat:=0;
                      feat:=0;
                        ceat:=0;

          while food=false do
          begin
            if Peat<p3 then
              Peat:=Peat+Pfood
            else food:=true;
              if feat<f3 then
                Feat:=feat+Ffood
              else food:=true;
                if Ceat<c3 then
                  Ceat:=Ceat+Cfood
                else food:=true;
                  g3:=g3+1;
          end;
         // 4 meal
          Pfood:=0.127;
              Ffood:=0.115;
                Cfood:=0.7;
                  food:=false;
                     peat:=0;
                      feat:=0;
                        ceat:=0;

          while food=false do
          begin
            if Peat<p4 then
              Peat:=Peat+Pfood
            else food:=true;
              if feat<f4 then
                Feat:=feat+Ffood
              else food:=true;
                if Ceat<c4 then
                  Ceat:=Ceat+Cfood
                else food:=true;
                  g4:=g4+1;
          end;
          //5 meal
            Pfood:=0.18;
              Ffood:=0.1;
                Cfood:=0.03;
                  food:=false;
                     peat:=0;
                      feat:=0;
                        ceat:=0;

          while food=false do
          begin
            if Peat<p5 then
              Peat:=Peat+Pfood
            else food:=true;
              if feat<f5 then
                Feat:=feat+Ffood
              else food:=true;
                if Ceat<c5 then
                  Ceat:=Ceat+Cfood
                else food:=true;
                  g5:=g5+1;
          end;

string6:='Пример:  '+'Овсянка '+IntToStr(g1)+'г + 2 банана   ' +'Рис'+IntToStr(g2)+'г + мяса 50г + овощи  '+'Гречка '+IntToStr(g3)+'г + куриная грудка 100г + овощи  '+'яйца '+IntToStr(g4)+'г + овощи  '+'Творог '+IntToStr(g5)+'г';
    end;

string1:='           '+'1 приём пищи| '+' '+'2 приём пищи| '+' '+'3 приём пищи| '+' '+'4 приём пищи| '+' '+'5 приём пищи| ';
string2:='Каллорий:     '+FormatFloat('0000.',cal1)+'              '+FormatFloat('0000.',cal2)+'                 '+FormatFloat('0000.',cal3)+'                   '+FormatFloat('0000.',cal4)+'                       '+FormatFloat('0000.',cal5);
string3:='Белки:           '+FormatFloat('000.',p1)+'                '+FormatFloat('000.',p2)+'                    '+FormatFloat('000.',p3)+'                      '+FormatFloat('000.',p4)+'                        '+FormatFloat('000.',p5);
string4:='Жиры:           '+FormatFloat('000.',f1)+'                '+FormatFloat('000.',f2)+'                    '+FormatFloat('000.',f3)+'                      '+FormatFloat('000.',f4)+'                        '+FormatFloat('000.',f5);
string5:='Углеводы:    '+FormatFloat('000.',c1)+'                '+FormatFloat('000.',c2)+'                    '+FormatFloat('000.',c3)+'                      '+FormatFloat('000.',c4)+'                        '+FormatFloat('000.',c5);

  Memo2.Lines[0]:=string1;
    Memo2.Lines.Insert(1,string2);
      Memo2.Lines.Insert(2,string3);
        Memo2.Lines.Insert(3,string4);
          Memo2.Lines.Insert(4,string5);
            Memo2.Lines.Insert(5,string6);

    end;
    //6 times
      if times=6 then
    begin
      cal1:=r*0.25;
        cal2:=r*0.05;
          cal3:=r*0.2;
            cal4:=r*0.05;
              cal5:=r*0.25;
                cal6:=r*0.2;

                p1:=protein*0.10;
                  p2:=protein*0.15;
                    p3:=protein*0.14;
                      p4:=protein*0.18;
                        p5:=protein*0.28;
                           p6:=protein*0.15;

                          f1:=fats*0.12;
                            f2:=fats*0.19;
                              f3:=fats*0.28;
                                f4:=fats*0.12;
                                  f5:=fats*0.17;
                                    f6:=fats*0.12;

                                    c1:=cabo*0.40;
                                      c2:=cabo*0.15;
                                        c3:=cabo*0.2;
                                          c4:=cabo*0.1;
                                            c5:=cabo*0.08;
                                              c6:=cabo*0.07;


string1:='           '+'1 приём пищи| '+' '+'2 приём пищи| '+' '+'3 приём пищи| '+' '+'4 приём пищи| '+' '+'5 приём пищи| '+' '+'6 приём пищи| ';
string2:='Каллорий:     '+FormatFloat('0000.',cal1)+'              '+FormatFloat('0000.',cal2)+'                 '+FormatFloat('0000.',cal3)+'                   '+FormatFloat('0000.',cal4)+'                       '+FormatFloat('0000.',cal5)+'                  '+FormatFloat('0000.',cal6);
string3:='Белки:           '+FormatFloat('000.',p1)+'                '+FormatFloat('000.',p2)+'                    '+FormatFloat('000.',p3)+'                      '+FormatFloat('000.',p4)+'                        '+FormatFloat('000.',p5)+'                  '+FormatFloat('000.',p6);
string4:='Жиры:           '+FormatFloat('000.',f1)+'                '+FormatFloat('000.',f2)+'                    '+FormatFloat('000.',f3)+'                      '+FormatFloat('000.',f4)+'                        '+FormatFloat('000.',f5)+'                  '+FormatFloat('000.',f6);
string5:='Углеводы:    '+FormatFloat('000.',c1)+'                '+FormatFloat('000.',c2)+'                    '+FormatFloat('000.',c3)+'                      '+FormatFloat('000.',c4)+'                        '+FormatFloat('000.',c5)+'                  '+FormatFloat('000.',c6);

  Memo2.Lines[0]:=string1;
    Memo2.Lines.Insert(1,string2);
      Memo2.Lines.Insert(2,string3);
        Memo2.Lines.Insert(3,string4);
          Memo2.Lines.Insert(4,string5);
            Memo2.Lines.Insert(5,string6);



    end;
    //
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then Button5.Visible:=true;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Button5.Visible:=true;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  Button5.Visible:=true;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  Button5.Visible:=true;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
    if  (CheckBox5.Checked = true)
          then
            begin
              CheckBox7.Visible:=true;
               CheckBox8.Visible:=true;
                CheckBox9.Visible:=true
           end;
      if  (CheckBox5.Checked = false)
          then
            begin
            ComboBox2.Hide;
              CheckBox7.hide;
               CheckBox8.hide;
                CheckBox9.hide;
                  Label25.hide;
                    Label23.hide;
                      Label24.hide;
                        Edit5.hide;
                          Edit6.hide;
                            Edit7.hide;
                              Button6.hide;
           end;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if  (CheckBox6.Checked = true)
          then
              ComboBox1.Visible:=true;
  if  (CheckBox6.Checked = false)
          then
              begin
              ComboBox1.hide;
                Label25.hide;
                  Label23.hide;
                    Label24.hide;
                      Edit5.hide;
                        Edit6.hide;
                          Edit7.hide;
                            Button6.hide;
              end;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  ComboBox2.Visible:=true;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
    ComboBox2.Visible:=true;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
    ComboBox2.Visible:=true;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var i:word;
begin
   i:=Combobox1.ItemIndex;
   case i of
     0 : begin (Edit5.Text:='50'); (Edit6.Text:='25'); (Edit7.Text:='25');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     1 : begin (Edit5.Text:='55'); (Edit6.Text:='25'); (Edit7.Text:='20');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     2 : begin (Edit5.Text:='40'); (Edit6.Text:='30'); (Edit7.Text:='30');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     3 : begin (Edit5.Text:='60'); (Edit6.Text:='25'); (Edit7.Text:='15');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     4 : begin (Edit5.Text:='25'); (Edit6.Text:='40'); (Edit7.Text:='35');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     5 : begin (Edit5.Text:='10'); (Edit6.Text:='45'); (Edit7.Text:='45');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     6 : begin (Edit5.Text:=''); (Edit6.Text:=''); (Edit7.Text:='');
      (Edit5.ReadOnly:=False);(Edit6.ReadOnly:=False);(Edit7.ReadOnly:=False); end ;
   end;
     Label25.Visible:=true;
      Label23.Visible:=true;
        Label24.Visible:=true;
          Edit5.Visible:=true;
            Edit6.Visible:=true;
              Edit7.Visible:=true;
                Button6.Visible:=true;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
var i:word;
begin
 i:=Combobox2.ItemIndex;
   case i of
     0 : begin (Edit5.Text:='50'); (Edit6.Text:='30'); (Edit7.Text:='20');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     1 : begin (Edit5.Text:='60'); (Edit6.Text:='30'); (Edit7.Text:='10');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
     2 : begin (Edit5.Text:='50'); (Edit6.Text:='35'); (Edit7.Text:='15');
      (Edit5.ReadOnly:=True);(Edit6.ReadOnly:=True);(Edit7.ReadOnly:=True); end;
   end;
    Label25.Visible:=true;
      Label23.Visible:=true;
        Label24.Visible:=true;
          Edit5.Visible:=true;
            Edit6.Visible:=true;
              Edit7.Visible:=true;
                Button6.Visible:=true;
end;



procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
const Digit: Set of Char=['0' .. '9',#8];
begin
if not (Key in Digit) then
 Key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
const Digit: Set of Char=['0' .. '9',#8];
begin
if not (Key in Digit) then
 Key:=#0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
const Digit: Set of Char=['0' .. '9',#8];
begin
if not (Key in Digit) then
 Key:=#0;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
const Digit: Set of Char=['0' .. '9',#8];
begin
if not (Key in Digit) then
 Key:=#0;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
const Digit: Set of Char=['0' .. '9',#8];
begin
if not (Key in Digit) then
 Key:=#0;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
const Digit: Set of Char=['0' .. '9',#8];
begin
if not (Key in Digit) then
 Key:=#0;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
 times:=5;
 Checkbox10.Show;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 times:=6;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
              Edit2.Show;
                Edit3.Show;
                 Edit4.Show;
                  Label12.Show;
                    Label14.Show;
                      Label13.Show;
                        Label16.Show;
                          CheckBox1.Show;
                            CheckBox2.Show;
                              CheckBox3.Show;
                                CheckBox4.Show;

end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin

              Edit2.Show;
                Edit3.Show;
                  Edit4.Show;
                    Label12.Show;
                      Label14.Show;
                        Label13.Show;
                          Label16.Show;
                            CheckBox1.Show;
                              CheckBox2.Show;
                                CheckBox3.Show;
                                  CheckBox4.Show;

end;

end.
