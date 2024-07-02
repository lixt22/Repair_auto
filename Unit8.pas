unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TForm8 = class(TForm)
    PanelToInputValues: TPanel;
    PostButton: TButton;
    CancelButton: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label9: TLabel;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    DBLookupComboBox6: TDBLookupComboBox;
    CheckBox2: TCheckBox;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button6: TButton;
    Button7: TButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid2: TDBGrid;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    DBLookupComboBox13: TDBLookupComboBox;
    CheckBox3: TCheckBox;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button8: TButton;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Button9: TButton;
    Button13: TButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    DBLookupComboBox14: TDBLookupComboBox;
    CheckBox4: TCheckBox;
    Panel7: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Button17: TButton;
    Button18: TButton;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox15: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBGrid4: TDBGrid;
    DBEdit5: TDBEdit;
    DBLookupComboBox18: TDBLookupComboBox;
    procedure InstertButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  CSort_st: Integer = -1;
  OrderBy_field:string;
  f1:string;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7;

procedure TForm8.E_FilterChange(Sender: TObject);
//var
//  baseSQL, filter_s: string;
//  orderBy_s: string; // Модификация (объявление переменной)
begin
//  DataModule2.Q_v_elements.DisableControls;
//  DataModule2.Q_v_elements.Active := false;
//  baseSQL := 'SELECT * FROM view_elements ';
//  filter_s := '';
//  orderBy_s := ''; // Модификация (задание пустого значения)
//  if length(E_Filter.Text) > 0 then
//    filter_s := 'WHERE brandName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
//      ' OR modelName LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
//      ' OR Win_number LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
//  // Модификация (проверка указано ли поле сортировки)
//  if length(OrderBy_field) > 0 then
//    // задание строки с параметром сортировки,
//    // если дина значения OrderBy_field больше 0
//    orderBy_s := ' ORDER BY ' + OrderBy_field;
//  DataModule2.Q_v_elements.SQL.Text := baseSQL + filter_s + orderBy_s;
//  DataModule2.Q_v_elements.Active := True;
//  DataModule2.Q_v_elements.EnableControls;
end;

procedure TForm8.InstertButtonClick(Sender: TObject);
begin
//if DataModule2.T_elements_car_s_vidom.State = dsBrowse then
// begin
// // Отключим возможность изменения курсора НД в компоненте DBGrid1
// DBGrid1.Enabled := False;
// DataModule2.Q_v_elements.Requery();
// // Сделаем невидимой панель с кнопками Вставить, Изменить,
// // Удалить
// DataModule2.T_elements_car_s_vidom.Append;
// Panel1.Visible := False;
// // Сделаем видимой панель для ввода значения в запись
// PanelToInputValues.Visible := True;
// end;
end;

procedure TForm8.PostButtonClick(Sender: TObject);
begin
//if DataModule2.T_elements_car_s_vidom.State in [dsInsert, dsEdit] then
// begin
// // Выполним операцию сохранения
// DataModule2.T_elements_car_s_vidom.Post;
// // Сделаем видимой панель с кнопками Вставить, Изменить,
// // Удалить
// Panel1.Visible := True;
// // Сделаем невидимой панель для ввода значения в запись
// PanelToInputValues.Visible := False;
// // Включим возможность изменения курсора НД
// // в компоненте DBGrid1
// DBGrid1.Enabled := True;
// end;
end;


end.
