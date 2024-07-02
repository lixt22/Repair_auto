unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    //DBText5: TDBText;
    DBText6: TDBText;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText7: TDBText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5;

procedure TForm3.Button1Click(Sender: TObject);
//var
//sum, test: integer;
begin
//test:=StrToInt(Form5.Label2.Caption);
//sum:=StrToInt(DBText5.Caption)+test;
//test:=test+sum;
//Form5.label2.Caption:=IntToStr(sum);
//ShowMessage('Добавлено в корзину');
//Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
sum, test: integer;
begin
test:=StrToInt(Form5.Label2.Caption);
sum:=StrToInt(DBText6.Caption)+test;
test:=test+sum;
Form5.label2.Caption:=IntToStr(sum);
ShowMessage('Добавлено в корзину');
Form3.Close;
end;

end.
