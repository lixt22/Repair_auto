unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Data.DB, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Panel10: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Panel12: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit6, Unit7;
procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
var
QueryString: AnsiString;
i:integer;
begin
QueryString:='DELETE FROM history_rabot';
with DataModule2.Q_v_history_rabot do
begin
  SQL.Clear;
  SQL.Add(QueryString);
  ExecSQL;
end;
for i := 0 to 99 do
  begin
    Form4.vidName[i] := '';
    Form4.Name_elem[i] := '';
    Form4.modelName[i] := '';
    Form4.Win_number[i] := '';
    //Form4.rabotName[i] := '';
    Form4.Name_elem[i] := '';
    Form4.pokr_elem[i] := 0;
    Form4.zam_elem[i] := 0;
    Form4.polir_elem[i] := 0;
    Form4.rem_elem[i] := 0;
  end;

DataModule2.T_history_rabot.Active:=False;
DataModule2.T_history_rabot.Active:=True;
DataModule2.Q_v_remont_basa.Requery;
label2.Caption:='0';
end;

end.
