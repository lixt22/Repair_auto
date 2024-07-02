unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Samples.Spin, Vcl.Menus, Vcl.ComCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    E_Filter: TEdit;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    InsertButton: TButton;
    DeleteButton: TButton;
    EditButton: TButton;
    Panel2: TPanel;
    Button1: TButton;
    PanelToInputValues: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    PostButton: TButton;
    CancelButton: TButton;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure InsertButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CSort_st: Integer = -1;
  OrderBy_field:string;
  f1:string;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TForm1.Button1Click(Sender: TObject);
begin
//DataModule2.T_remont_basa.Append;
//DataModule2.T_remont_basaIDcc.Value:=
//DataModule2.Q_v_goods_catalogIDcc.Value;
Form4.ShowModal;
end;

procedure TForm1.CancelButtonClick(Sender: TObject);
begin
if DataModule2.T_goods_catalog.State in [dsInsert, dsEdit] then
 begin
 // Выполним операцию отмены
 DataModule2.T_goods_catalog.Cancel;
 Panel1.Visible := True;
 PanelToInputValues.Visible := False;
 DBGrid1.Enabled := True;
 end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
  if CheckBox1.Checked then
    f1 := ' brandName LIKE ' +
      QuotedStr('%' + DBLookupComboBox1.Text + '%')
       else f1:='';

  filter_s := '';
  if length(f1) > 0 then
    if length(filter_s) > 0 then
    begin
      filter_s := filter_s + ' and ' + f1;
    end
    else
      filter_s := f1;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog';
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
  if length(filter_s) > 0 then
    DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + ' WHERE ' + filter_s;
  DataModule2.Q_v_goods_catalog.Active := True;
end;

procedure TForm1.DeleteButtonClick(Sender: TObject);
begin
  if DataModule2.T_goods_catalog.State = dsBrowse then
  if MessageDlg('Подтвердите удаление записи', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  DataModule2.T_goods_catalog.Delete;
end;

procedure TForm1.EditButtonClick(Sender: TObject);
begin
if DataModule2.T_goods_catalog.State = dsBrowse then
 begin
 DBGrid1.Enabled := False;
 DataModule2.Q_v_goods_catalog.Locate('IDcc',
 DataModule2.T_goods_catalogIDcc.Value, []);
 DataModule2.T_goods_catalog.edit;
 Panel1.Visible := False;
 PanelToInputValues.Visible := True;
 // Переведем НД в режим редактирования записи, используя
 // метод Edit
 end;
end;

procedure TForm1.E_FilterChange(Sender: TObject);
var
  baseSQL, filter_s: string;
  orderBy_s: string; // Модификация (объявление переменной)
begin
  DataModule2.Q_v_goods_catalog.DisableControls;
  DataModule2.Q_v_goods_catalog.Active := false;
  baseSQL := 'SELECT * FROM view_goods_catalog ';
  filter_s := '';
  orderBy_s := ''; // Модификация (задание пустого значения)
  if length(E_Filter.Text) > 0 then
    filter_s := 'WHERE brandName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR modelName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
      ' OR Win_number LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
  // Модификация (проверка указано ли поле сортировки)
  if length(OrderBy_field) > 0 then
    // задание строки с параметром сортировки,
    // если дина значения OrderBy_field больше 0
    orderBy_s := ' ORDER BY ' + OrderBy_field;
  DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s + orderBy_s;
  DataModule2.Q_v_goods_catalog.Active := True;
  DataModule2.Q_v_goods_catalog.EnableControls;
end;

procedure TForm1.InsertButtonClick(Sender: TObject);
begin
if DataModule2.T_goods_catalog.State = dsBrowse then
 begin
 // Отключим возможность изменения курсора НД в компоненте DBGrid1
 DBGrid1.Enabled := False;
 DataModule2.Q_v_goods_catalog.Requery();
 // Сделаем невидимой панель с кнопками Вставить, Изменить,
 // Удалить
 DataModule2.T_goods_catalog.Append;
 Panel1.Visible := False;
 // Сделаем видимой панель для ввода значения в запись
 PanelToInputValues.Visible := True;
 end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
//DataModule2.Rep_polir.ShowReport();
DataModule2.Rem_list.ShowReport();
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
//DataModule2.Rep_zamena.ShowReport();
DataModule2.Rep_cost_auto.ShowReport();
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
DataModule2.Rep_rem.ShowReport();
end;

procedure TForm1.PostButtonClick(Sender: TObject);
begin
if DataModule2.T_goods_catalog.State in [dsInsert, dsEdit] then
 begin
 // Выполним операцию сохранения
 DataModule2.T_goods_catalog.Post;
 // Сделаем видимой панель с кнопками Вставить, Изменить,
 // Удалить
 Panel1.Visible := True;
 // Сделаем невидимой панель для ввода значения в запись
 PanelToInputValues.Visible := False;
 // Включим возможность изменения курсора НД
 // в компоненте DBGrid1
 DBGrid1.Enabled := True;
 end;
end;

end.
