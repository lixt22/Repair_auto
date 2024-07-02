unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.Grids;

type
  TForm4 = class(TForm)
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    Image2: TImage;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    vidName: array [0..99] of string;
  Name_elem: array [0..99] of string;
Win_number: array[0..99] of string;
modelName: array[0..99] of string;
//rabotName: array[0..99] of string;
pokr_elem, zam_elem, polir_elem, rem_elem: array [0..99] of integer;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit6, Unit7;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form5.ShowModal;
end;


procedure TForm4.Button8Click(Sender: TObject);
begin
//Form3.ShowModal;
end;

procedure TForm4.DBLookupComboBox1Click(Sender: TObject);
begin
Form4.Close;
end;
procedure TForm4.FormActivate(Sender: TObject);
begin
StringGrid1.Cells[0, 0] := 'P';
StringGrid1.Cells[0, 1] := 'Покраска';
StringGrid1.Cells[1, 0] := 'Ch or';
StringGrid1.Cells[1, 1] := 'Замена на оригинал';
StringGrid1.Cells[2, 0] := 'Ch an';
StringGrid1.Cells[2, 1] := 'Замена на аналог';
StringGrid1.Cells[3, 0] := 'Ch by';
StringGrid1.Cells[3, 1] := 'Замена на БУ';
StringGrid1.Cells[4, 0] := 'Pol';
StringGrid1.Cells[4, 1] := 'Полировка';
StringGrid1.Cells[5, 0] := 'R';
StringGrid1.Cells[5, 1] := 'Ремонт';
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;
ComboBox3.ItemIndex:=0;
ComboBox4.ItemIndex:=0;
ComboBox5.ItemIndex:=0;
ComboBox6.ItemIndex:=0;
ComboBox7.ItemIndex:=0;
ComboBox8.ItemIndex:=0;
ComboBox9.ItemIndex:=0;
ComboBox10.ItemIndex:=0;
ComboBox11.ItemIndex:=0;
ComboBox12.ItemIndex:=0;
ComboBox13.ItemIndex:=0;
ComboBox14.ItemIndex:=0;
ComboBox15.ItemIndex:=0;
ComboBox16.ItemIndex:=0;
ComboBox17.ItemIndex:=0;
ComboBox18.ItemIndex:=0;
ComboBox19.ItemIndex:=0;
ComboBox20.ItemIndex:=0;
ComboBox21.ItemIndex:=0;
ComboBox22.ItemIndex:=0;
ComboBox23.ItemIndex:=0;
Form5.Label2.Caption:='0';
end;


function check(oper:string):integer;
begin
if oper='Ничего' then
Result:=0;
if oper='П' then
Result:=1;
if oper='З на о' then
Result:=2;
if oper='З на а' then
Result:=3;
if oper='З на бу' then
Result:=4;
if oper='Пол' then
Result:=5;
if oper='Р' then
Result:=6;
end;

function getname(name:string):string;
begin
  Result:=name;
end;


var
kol_box:integer;

function test(ComboBox,NameofElem:string):integer;
var
temp:integer;
 a:integer;
SelectedValue: string;
SelectedRow: integer;
WinValue:string;
modelValue:string;
b: string;
c: string;
begin
b:='Ничего';

if (ComboBox<>b) then
begin
kol_box:=kol_box+1;
end;
SelectedRow := Form1.DBGrid1.DataSource.DataSet.RecNo; // Получаем номер выбранной строки в DBGrid
SelectedValue := Form1.DBGrid1.DataSource.DataSet.FieldByName('IDcc').AsString.Trim;
WinValue:= Form1.DBGrid1.DataSource.DataSet.FieldByName('Win_number').AsString.Trim;
modelValue:= Form1.DBGrid1.DataSource.DataSet.FieldByName('modelName').AsString.Trim;
temp:=check(ComboBox);
if temp=1 then
begin
DataModule2.Q_v_fullcost.SQL.Text:='SELECT pokr_elem,vidName,elemName FROM view_fullcost WHERE elemName='+QuotedStr(NameofElem)+' AND vidName='+QuotedStr('Оригинал')+' AND IDcc='+SelectedValue;
DataModule2.Q_v_fullcost.Open;
try
Form4.pokr_elem[kol_box] := DataModule2.Q_v_fullcost.FieldByName('pokr_elem').AsInteger;
//Form4.vidName[kol_box] := DataModule2.Q_v_fullcost.FieldByName('vidName').AsString;
Form4.Name_elem[kol_box] := NameofElem;
Form4.Win_number[kol_box]:= WinValue;
Form4.modelName[kol_box]:= modelValue;
//Form4.rabotName[kol_box]:=ComboBox;
ComboBox:= DataModule2.Q_v_fullcost.FieldByName('pokr_elem').AsString;
finally
DataModule2.Q_v_fullcost.Close;
end;
a:=StrToInt(Form5.Label2.Caption);
a:=a+StrToInt(ComboBox);
Form5.Label2.Caption:=IntToStr(a);
end;
if temp=2 then
begin
DataModule2.Q_v_fullcost.SQL.Text:='SELECT zam_elem,vidName,elemName FROM view_fullcost WHERE elemName='+QuotedStr(NameofElem)+' AND vidName='+QuotedStr('Оригинал')+' AND IDcc='+SelectedValue;
DataModule2.Q_v_fullcost.Open;
try
Form4.zam_elem[kol_box] := DataModule2.Q_v_fullcost.FieldByName('zam_elem').AsInteger;
Form4.vidName[kol_box] := DataModule2.Q_v_fullcost.FieldByName('vidName').AsString;
Form4.Name_elem[kol_box] := NameofElem;
Form4.Win_number[kol_box]:= WinValue;
Form4.modelName[kol_box]:= modelValue;
//Form4.rabotName[kol_box]:=ComboBox;
ComboBox:= DataModule2.Q_v_fullcost.FieldByName('zam_elem').AsString;
finally
DataModule2.Q_v_fullcost.Close;
end;
a:=StrToInt(Form5.Label2.Caption);
a:=a+StrToInt(ComboBox);
Form5.Label2.Caption:=IntToStr(a);
end;
if temp=3 then
begin
DataModule2.Q_v_fullcost.SQL.Text:='SELECT zam_elem,vidName,elemName FROM view_fullcost WHERE elemName='+QuotedStr(NameofElem)+' AND vidName='+QuotedStr('Аналог')+' AND IDcc='+SelectedValue;
DataModule2.Q_v_fullcost.Open;
try
Form4.zam_elem[kol_box] := DataModule2.Q_v_fullcost.FieldByName('zam_elem').AsInteger;
Form4.vidName[kol_box] := DataModule2.Q_v_fullcost.FieldByName('vidName').AsString;
Form4.Name_elem[kol_box] := NameofElem;
Form4.Win_number[kol_box]:= WinValue;
Form4.modelName[kol_box]:= modelValue;
//Form4.rabotName[kol_box]:=ComboBox;
ComboBox:= DataModule2.Q_v_fullcost.FieldByName('zam_elem').AsString;
finally
DataModule2.Q_v_fullcost.Close;
end;
a:=StrToInt(Form5.Label2.Caption);
a:=a+StrToInt(ComboBox);
Form5.Label2.Caption:=IntToStr(a);
end;
if temp=4 then
begin
DataModule2.Q_v_fullcost.SQL.Text:='SELECT zam_elem,vidName,elemName FROM view_fullcost WHERE elemName='+QuotedStr(NameofElem)+' AND vidName='+QuotedStr('БУ')+' AND IDcc='+SelectedValue;
DataModule2.Q_v_fullcost.Open;
try
Form4.zam_elem[kol_box] := DataModule2.Q_v_fullcost.FieldByName('zam_elem').AsInteger;
Form4.vidName[kol_box] := DataModule2.Q_v_fullcost.FieldByName('vidName').AsString;
Form4.Name_elem[kol_box] := NameofElem;
Form4.Win_number[kol_box]:= WinValue;
Form4.modelName[kol_box]:= modelValue;
//Form4.rabotName[kol_box]:=ComboBox;
ComboBox:= DataModule2.Q_v_fullcost.FieldByName('zam_elem').AsString;
finally
DataModule2.Q_v_fullcost.Close;
end;

a:=StrToInt(Form5.Label2.Caption);
a:=a+StrToInt(ComboBox);
Form5.Label2.Caption:=IntToStr(a);
end;
if temp=5 then
begin
DataModule2.Q_v_fullcost.SQL.Text:='SELECT polir_elem,vidName,elemName FROM view_fullcost WHERE elemName='+QuotedStr(NameofElem)+' AND vidName='+QuotedStr('Оригинал')+' AND IDcc='+SelectedValue;
DataModule2.Q_v_fullcost.Open;
try
Form4.polir_elem[kol_box] := DataModule2.Q_v_fullcost.FieldByName('polir_elem').AsInteger;
//Form4.vidName[kol_box] := DataModule2.Q_v_fullcost.FieldByName('vidName').AsString;
Form4.Name_elem[kol_box] := NameofElem;
Form4.Win_number[kol_box]:= WinValue;
Form4.modelName[kol_box]:= modelValue;
//Form4.rabotName[kol_box]:=ComboBox;
ComboBox:= DataModule2.Q_v_fullcost.FieldByName('polir_elem').AsString;
finally
DataModule2.Q_v_fullcost.Close;
end;
a:=StrToInt(Form5.Label2.Caption);
a:=a+StrToInt(ComboBox);
Form5.Label2.Caption:=IntToStr(a);
end;
if temp=6 then
begin
DataModule2.Q_v_fullcost.SQL.Text:='SELECT rem_elem,vidName,elemName FROM view_fullcost WHERE elemName='+QuotedStr(NameofElem)+' AND vidName='+QuotedStr('Оригинал')+' AND IDcc='+SelectedValue;
DataModule2.Q_v_fullcost.Open;
try
Form4.rem_elem[kol_box] := DataModule2.Q_v_fullcost.FieldByName('rem_elem').AsInteger;
//Form4.vidName[kol_box] := DataModule2.Q_v_fullcost.FieldByName('vidName').AsString;
Form4.Name_elem[kol_box] := NameofElem;
Form4.Win_number[kol_box]:= WinValue;
Form4.modelName[kol_box]:= modelValue;
//Form4.rabotName[kol_box]:=ComboBox;
ComboBox:= DataModule2.Q_v_fullcost.FieldByName('rem_elem').AsString;
finally
DataModule2.Q_v_fullcost.Close;
end;
a:=StrToInt(Form5.Label2.Caption);
a:=a+StrToInt(ComboBox);
Form5.Label2.Caption:=IntToStr(a);
end;
Result:=0;
end;


procedure TForm4.Image2Click(Sender: TObject);
var
temp:integer;
a:integer;
i:integer;
begin
a:=test(Form4.ComboBox1.Text, 'крышка багажника');
a:=test(Form4.ComboBox2.Text,'крыша');
a:=test(Form4.ComboBox3.Text, 'передний бампер');
a:=test(Form4.ComboBox4.Text,'передняя левая дверь');
a:=test(Form4.ComboBox5.Text,'переднее левое крыло');
a:=test(Form4.ComboBox6.Text, 'задняя левая дверь');
a:=test(Form4.ComboBox7.Text,'заднее левое крыло');
a:=test(Form4.ComboBox8.Text,'передняя правая дверь');
a:=test(Form4.ComboBox9.Text, 'переднее левое стекло');
a:=test(Form4.ComboBox10.Text,'заднее левое стекло');
a:=test(Form4.ComboBox11.Text,'задняя правая дверь');
a:=test(Form4.ComboBox12.Text, 'заднее правое стекло');
a:=test(Form4.ComboBox13.Text,'переднее правое стекло');
a:=test(Form4.ComboBox14.Text,'переднее правое крыло');
a:=test(Form4.ComboBox15.Text, 'заднее правое крыло');
a:=test(Form4.ComboBox16.Text,'задний бампер');
a:=test(Form4.ComboBox17.Text,'задняя левая фара');
a:=test(Form4.ComboBox18.Text, 'задняя правая фара');
a:=test(Form4.ComboBox19.Text,'заднее стекло');
a:=test(Form4.ComboBox20.Text,'лобовое стекло');
a:=test(Form4.ComboBox21.Text,'передняя левая фара');
a:=test(Form4.ComboBox22.Text, 'передняя правая фара');
a:=test(Form4.ComboBox23.Text,'передний бампер');
with DataModule2.Q_v_fullcost do
begin
for i:=1 to kol_box do
 begin
  SQL.Clear;
  SQL.ADD('INSERT INTO history_rabot(elemName,vidName,cost_pokr,cost_zam,cost_polir,cost_rem)');
  SQL.ADD('VALUES( '+QuotedStr(Name_elem[i])+', '+QuotedStr(vidName[i])+', :cost_pokr, :cost_zam, :cost_polir, :cost_rem)');
  //Parameters.ParamByName('elemName').Value := Name_elem[i];
  //Parameters.ParamByName('vidName').Value := vidName[i];
  Parameters.ParamByName('cost_pokr').Value := pokr_elem[i];
  Parameters.ParamByName('cost_zam').Value := zam_elem[i];
  Parameters.ParamByName('cost_polir').Value := polir_elem[i];
  Parameters.ParamByName('cost_rem').Value := rem_elem[i];
  ExecSQL;
  DataModule2.T_history_rabot.Active:=False;
  DataModule2.T_history_rabot.Active:=True;
 end;
 for i:=1 to kol_box do
 begin
  SQL.Clear;
  SQL.ADD('INSERT INTO remont_basa(modelName, Win_number, elemName,vidName,cost_pokr,cost_zam,cost_polir,cost_rem)');
  SQL.ADD('VALUES( :modelName, :Win_number, '+QuotedStr(Name_elem[i])+', '+QuotedStr(vidName[i])+', :cost_pokr, :cost_zam, :cost_polir, :cost_rem)');
  Parameters.ParamByName('modelName').Value := modelName[i];
  Parameters.ParamByName('Win_number').Value := Win_number[i];
  //rameters.ParamByName('elemName').Value := Name_elem[i];
  //rameters.ParamByName('vidName').Value := vidName[i];
  //Parameters.ParamByName('rabotName').Value := rabotName[i];
  Parameters.ParamByName('cost_pokr').Value := pokr_elem[i];
  Parameters.ParamByName('cost_zam').Value := zam_elem[i];
  Parameters.ParamByName('cost_polir').Value := polir_elem[i];
  Parameters.ParamByName('cost_rem').Value := rem_elem[i];
  ExecSQL;
  DataModule2.T_remont_basa.Active:=False;
  DataModule2.T_remont_basa.Active:=True;
 end;
end;

Form5.ShowModal;
kol_box:=0;
end;


end.
