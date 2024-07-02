unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  Data.DB, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBChart1: TDBChart;
    Series1: THorizBarSeries;
    DBChart2: TDBChart;
    Series2: THorizBarSeries;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBChart4: TDBChart;
    Series4: THorizBarSeries;
    DBChart5: TDBChart;
    Series5: THorizBarSeries;
    TabSheet3: TTabSheet;
    DBChart3: TDBChart;
    Series3: THorizBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5;

end.
