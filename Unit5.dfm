object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1085#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
  ClientHeight = 494
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 185
    Width = 706
    Height = 309
    Align = alClient
    DataSource = DataModule2.DS_T_history_rabot
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'elemName'
        Title.Caption = #1069#1083#1077#1084#1077#1085#1090
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vidName'
        Title.Caption = #1042#1080#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_pokr'
        Title.Caption = #1055#1086#1082#1088#1072#1089#1082#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_zam'
        Title.Caption = #1047#1072#1084#1077#1085#1072
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_polir'
        Title.Caption = #1055#1086#1083#1080#1088#1086#1074#1082#1072
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_rem'
        Title.Caption = #1056#1077#1084#1086#1085#1090
        Width = 99
        Visible = True
      end>
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 185
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 702
    object DBText5: TDBText
      Left = 356
      Top = 19
      Width = 121
      Height = 15
      DataField = 'brandName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object DBText6: TDBText
      Left = 356
      Top = 51
      Width = 121
      Height = 17
      DataField = 'modelName'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object DBText7: TDBText
      Left = 356
      Top = 83
      Width = 121
      Height = 17
      DataField = 'God_vipuska'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object DBText8: TDBText
      Left = 356
      Top = 115
      Width = 121
      Height = 17
      DataField = 'Win_number'
      DataSource = DataModule2.DS_Q_v_goods_catalog
    end
    object Label10: TLabel
      Left = 224
      Top = 50
      Width = 97
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080
    end
    object Label11: TLabel
      Left = 224
      Top = 83
      Width = 68
      Height = 15
      Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
    end
    object Label12: TLabel
      Left = 224
      Top = 115
      Width = 60
      Height = 15
      Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
    end
    object Label7: TLabel
      Left = 224
      Top = 144
      Width = 33
      Height = 15
      Caption = #1048#1090#1086#1075#1086
    end
    object Label2: TLabel
      Left = 356
      Top = 144
      Width = 6
      Height = 15
      Caption = '0'
    end
    object Label1: TLabel
      Left = 224
      Top = 19
      Width = 94
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1088#1077#1085#1076#1072
    end
    object Panel12: TPanel
      Left = 212
      Top = 7
      Width = 293
      Height = 6
      ParentBackground = False
      TabOrder = 0
    end
    object Panel14: TPanel
      Left = 327
      Top = 7
      Width = 6
      Height = 164
      TabOrder = 1
    end
    object Panel15: TPanel
      Left = 499
      Top = 7
      Width = 6
      Height = 164
      ParentBackground = False
      TabOrder = 2
    end
    object Panel16: TPanel
      Left = 212
      Top = 165
      Width = 293
      Height = 6
      TabOrder = 3
    end
    object Panel17: TPanel
      Left = 212
      Top = 7
      Width = 6
      Height = 164
      TabOrder = 4
    end
    object Panel18: TPanel
      Left = 212
      Top = 39
      Width = 293
      Height = 6
      ParentBackground = False
      TabOrder = 5
    end
    object Panel19: TPanel
      Left = 212
      Top = 135
      Width = 293
      Height = 6
      TabOrder = 6
    end
    object Panel20: TPanel
      Left = 212
      Top = 103
      Width = 293
      Height = 6
      TabOrder = 7
    end
    object Panel21: TPanel
      Left = 212
      Top = 71
      Width = 293
      Height = 6
      TabOrder = 8
    end
  end
end
