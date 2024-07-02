unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    E_filter: TEdit;
    DeleteButton: TButton;
    procedure E_filterChange(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  CSort_st: Integer = -1;
  OrderBy_field:string;
  f1:string;
implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit6;

procedure TForm7.DeleteButtonClick(Sender: TObject);
begin
 if DataModule2.T_remont_basa.State = dsBrowse then
  if MessageDlg('Подтвердите удаление записи', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  DataModule2.T_remont_basa.Delete;
end;

procedure TForm7.E_filterChange(Sender: TObject);
var
  baseSQL, filter_s: string;
  orderBy_s: string; // Модификация (объявление переменной)
begin
  DataModule2.Q_v_remont_basa.DisableControls;
  DataModule2.Q_v_remont_basa.Active := false;
  baseSQL := 'SELECT * FROM view_remont_basa ';
  filter_s := '';
  orderBy_s := ''; // Модификация (задание пустого значения)
  if length(E_Filter.Text) > 0 then
    filter_s := 'WHERE Win_number LIKE ' + QuotedStr('%' + E_Filter.Text + '%')
    + ' OR modelName LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
  // Модификация (проверка указано ли поле сортировки)
  if length(OrderBy_field) > 0 then
    // задание строки с параметром сортировки,
    // если дина значения OrderBy_field больше 0
    orderBy_s := ' ORDER BY ' + OrderBy_field;
  DataModule2.Q_v_remont_basa.SQL.Text := baseSQL + filter_s + orderBy_s;
  DataModule2.Q_v_remont_basa.Active := True;
  DataModule2.Q_v_remont_basa.EnableControls;
end;


end.
