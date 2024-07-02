object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082#1080
  ClientHeight = 830
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 716
    Height = 830
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 712
    ExplicitHeight = 829
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1084#1077#1085#1072' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 708
        Height = 800
        DepthAxis.Labels = False
        DepthAxis.LabelsFormat.Visible = False
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 704
        ExplicitHeight = 799
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: THorizBarSeries
          HoverElement = []
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_cost_zamena
          ShowInLegend = False
          XLabelsSource = 'elemName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'zam_elem'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1082#1088#1072#1089#1082#1072' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 0
        Top = 0
        Width = 708
        Height = 800
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: THorizBarSeries
          HoverElement = []
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_cost_pokraska
          ShowInLegend = False
          XLabelsSource = 'elemName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'pokr_elem'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1086#1083#1080#1088#1086#1074#1082#1072' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      ImageIndex = 3
      object DBChart4: TDBChart
        Left = 0
        Top = 0
        Width = 708
        Height = 800
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series4: THorizBarSeries
          HoverElement = []
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_cost_polirovka
          ShowInLegend = False
          XLabelsSource = 'elemName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'polir_elem'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1056#1077#1084#1086#1085#1090' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      ImageIndex = 4
      object DBChart5: TDBChart
        Left = 0
        Top = 0
        Width = 708
        Height = 800
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series5: THorizBarSeries
          HoverElement = []
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_cost_remont
          ShowInLegend = False
          XLabelsSource = 'elemName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'rem_elem'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1077#1084#1086#1085#1090#1072' '#1072#1074#1090#1086
      ImageIndex = 4
      object DBChart3: TDBChart
        Left = 0
        Top = 0
        Width = 708
        Height = 800
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: THorizBarSeries
          HoverElement = []
          Legend.Visible = False
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.Style = smsValue
          DataSource = DataModule2.Q_remont_auto
          ShowInLegend = False
          XLabelsSource = 'modelName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'total_sum'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
    end
  end
end
