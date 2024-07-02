unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    T_goods_catalog: TADOTable;
    T_brand_car: TADOTable;
    T_elements_car: TADOTable;
    T_elements_car_s_vidom: TADOTable;
    T_pokraska_elements: TADOTable;
    T_rashod_materials: TADOTable;
    T_vid_zapchasti: TADOTable;
    T_zamena_elements: TADOTable;
    DS_T_goods_catalog: TDataSource;
    DS_T_brand_car: TDataSource;
    DS_T_elements_car: TDataSource;
    DS_T_elements_car_s_vidom: TDataSource;
    DS_T_pokraska_elements: TDataSource;
    DS_T_rashod_materials: TDataSource;
    DS_T_vid_zapchasti: TDataSource;
    DS_T_zamena_elements: TDataSource;
    Q_v_pokraska: TADOQuery;
    Q_v_zamena: TADOQuery;
    DS_Q_v_pokraska: TDataSource;
    DS_Q_v_zamena: TDataSource;
    ADOConnection1: TADOConnection;
    T_brand_carIDbrand: TIntegerField;
    T_brand_carbrandName: TWideStringField;
    T_rashod_materialsIDmaterial: TAutoIncField;
    T_rashod_materialsmaterialName: TWideStringField;
    T_rashod_materialsCost_material: TBCDField;
    T_vid_zapchastiIDvid: TIntegerField;
    T_vid_zapchastividName: TWideStringField;
    Q_v_goods_catalog: TADOQuery;
    DS_Q_v_goods_catalog: TDataSource;
    Q_v_full_pokraska_elem: TADOQuery;
    DS_Q_v_full_pokraska_elem: TDataSource;
    T_elements_car_s_vidomIDelemvid: TAutoIncField;
    T_elements_car_s_vidomElemCost: TBCDField;
    T_elements_car_s_vidomIDelem: TIntegerField;
    T_elements_car_s_vidomIDvid: TIntegerField;
    T_elements_car_s_vidomIDcc: TIntegerField;
    T_elements_carIDelem: TAutoIncField;
    T_elements_carelemName: TWideStringField;
    DS_Q_v_fullcost: TDataSource;
    T_history_rabot: TADOTable;
    DS_T_history_rabot: TDataSource;
    Q_v_fullcost: TADOQuery;
    Q_cost_zamena: TADOQuery;
    Q_cost_pokraska: TADOQuery;
    Q_kolvo_grynta: TADOQuery;
    Q_kolvo_kraski: TADOQuery;
    Q_kolvo_laka: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    Rep_zamena: TfrxReport;
    Rep_pokr: TfrxReport;
    T_goods_catalogIDcc: TAutoIncField;
    T_goods_catalogmodelName: TWideStringField;
    T_goods_catalogWin_number: TWideStringField;
    T_goods_catalogGod_vipuska: TIntegerField;
    T_goods_catalogIDbrand: TIntegerField;
    T_polirovka_elements: TADOTable;
    DS_T_polirovka_elements: TDataSource;
    Q_v_polirovka: TADOQuery;
    DS_Q_v_polirovka: TDataSource;
    T_remont_elements: TADOTable;
    DS_T_remont_elements: TDataSource;
    Q_v_remont: TADOQuery;
    DS_Q_v_remont: TDataSource;
    Q_v_goods_catalogIDcc: TIntegerField;
    Q_v_goods_catalogbrandName: TWideStringField;
    Q_v_goods_catalogmodelName: TWideStringField;
    Q_v_goods_catalogGod_vipuska: TIntegerField;
    Q_v_goods_catalogWin_number: TWideStringField;
    Q_cost_polirovka: TADOQuery;
    Q_cost_remont: TADOQuery;
    Rep_polir: TfrxReport;
    Rep_rem: TfrxReport;
    Q_v_history_rabot: TADOQuery;
    DS_Q_v_history_rabot: TDataSource;
    T_remont_basa: TADOTable;
    DS_T_remont_basa: TDataSource;
    Q_v_remont_basa: TADOQuery;
    DS_Q_v_remont_basa: TDataSource;
    T_history_rabotIDhis: TAutoIncField;
    T_history_rabotelemName: TWideStringField;
    T_history_rabotvidName: TWideStringField;
    T_history_rabotcost_pokr: TBCDField;
    T_history_rabotcost_zam: TBCDField;
    T_history_rabotcost_polir: TBCDField;
    T_history_rabotcost_rem: TBCDField;
    Q_rep: TADOQuery;
    frxDBDataset2: TfrxDBDataset;
    Q_remont_auto: TADOQuery;
    frxDBDataset3: TfrxDBDataset;
    Rep_cost_auto: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    Rem_list: TfrxReport;
    T_zamena_elementsIDzamena: TAutoIncField;
    T_zamena_elementsIDelemvid: TIntegerField;
    T_zamena_elementsPrice_hour2: TBCDField;
    T_zamena_elementsAmount_hour2: TIntegerField;
    T_polirovka_elementsIDpol: TAutoIncField;
    T_polirovka_elementsPrice_hour3: TBCDField;
    T_polirovka_elementsAmount_hour3: TIntegerField;
    T_polirovka_elementsIDmaterial: TIntegerField;
    T_polirovka_elementsAmount_material: TIntegerField;
    T_polirovka_elementsIDelemvid: TIntegerField;
    T_remont_elementsIDremont: TAutoIncField;
    T_remont_elementsIDelemvid: TIntegerField;
    T_remont_elementsPrice_hour4: TBCDField;
    T_remont_elementsAmount_hour4: TIntegerField;
    T_remont_basaIDbasa: TAutoIncField;
    T_remont_basamodelName: TWideStringField;
    T_remont_basaWin_number: TWideStringField;
    T_remont_basaelemName: TWideStringField;
    T_remont_basavidName: TWideStringField;
    T_remont_basacost_pokr: TBCDField;
    T_remont_basacost_zam: TBCDField;
    T_remont_basacost_polir: TBCDField;
    T_remont_basacost_rem: TBCDField;
    T_pokraska_elementsIDpokras: TAutoIncField;
    T_pokraska_elementsPrice_hour1: TBCDField;
    T_pokraska_elementsAmount_hour1: TIntegerField;
    T_pokraska_elementsIDmaterial: TIntegerField;
    T_pokraska_elementsAmount_material: TIntegerField;
    T_pokraska_elementsIDelemvid: TIntegerField;
    T_pokraska_elementsIDbrand: TIntegerField;
    procedure Q_v_goods_catalogAfterScroll(DataSet: TDataSet);
    procedure T_goods_catalogAfterPost(DataSet: TDataSet);
    procedure T_goods_catalogAfterDelete(DataSet: TDataSet);
    procedure T_history_rabotAfterInsert(DataSet: TDataSet);
    procedure T_history_rabotAfterPost(DataSet: TDataSet);
    procedure T_remont_basaAfterDelete(DataSet: TDataSet);
    procedure Q_v_remont_basaAfterScroll(DataSet: TDataSet);
    procedure T_elements_car_s_vidomAfterPost(DataSet: TDataSet);
    procedure Q_v_elementsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit1, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TDataModule2.Q_v_elementsAfterScroll(DataSet: TDataSet);
begin
//// проверка количества отображаемых записей
// if Q_v_elements.RecordCount > 0 then
// begin
// // выполнение синхронизации методом Locate
// T_elements_car_s_vidom.Locate('IDelemvid', Q_v_elementsIDelemvid.Value, []);
// end;
end;

procedure TDataModule2.Q_v_goods_catalogAfterScroll(DataSet: TDataSet);
begin
// проверка количества отображаемых записей
 if Q_v_goods_catalog.RecordCount > 0 then
 begin
 // выполнение синхронизации методом Locate
 T_goods_catalog.Locate('IDcc', Q_v_goods_catalogIDcc.Value, []);
 end;
end;

procedure TDataModule2.Q_v_remont_basaAfterScroll(DataSet: TDataSet);
begin
// проверка количества отображаемых записей
 if Q_v_remont_basa.RecordCount > 0 then
T_remont_basa.Locate('IDbasa', Q_v_remont_basa.FieldByName('IDbasa').AsInteger, []);
end;

procedure TDataModule2.T_elements_car_s_vidomAfterPost(DataSet: TDataSet);
//var
// IDVal: integer;
begin
// IDVal := T_elements_car_s_vidomIDelemvid.Value;
// Q_v_elements.DisableControls();
// Q_v_elements.Requery();
// Q_v_elements.Locate('IDelemvid', IDVal, []);
// Q_v_elements.EnableControls();
 //Q_v_operations_fullcost.Requery();
end;

procedure TDataModule2.T_goods_catalogAfterDelete(DataSet: TDataSet);
begin
Q_v_goods_catalog.DisableControls();
 Q_v_goods_catalog.Requery();
 Q_v_goods_catalog.EnableControls();
end;

procedure TDataModule2.T_goods_catalogAfterPost(DataSet: TDataSet);
var
 IDccVal: integer;
begin
 IDccVal := T_goods_catalogIDcc.Value;
 Q_v_goods_catalog.DisableControls();
 Q_v_goods_catalog.Requery();
 Q_v_goods_catalog.Locate('IDcc', IDccVal, []);
 Q_v_goods_catalog.EnableControls();
 //Q_v_operations_fullcost.Requery();
end;

procedure TDataModule2.T_history_rabotAfterInsert(DataSet: TDataSet);
var
 IDhisVal: integer;
begin
end;

procedure TDataModule2.T_history_rabotAfterPost(DataSet: TDataSet);
var
 IDhisVal: integer;
begin
end;
procedure TDataModule2.T_remont_basaAfterDelete(DataSet: TDataSet);
begin
 Q_v_remont_basa.DisableControls();
 Q_v_remont_basa.Requery();
 Q_v_remont_basa.EnableControls();
end;

end.
