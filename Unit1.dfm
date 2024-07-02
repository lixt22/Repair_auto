object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1056#1077#1084#1086#1085#1090#1085#1099#1081' '#1083#1080#1089#1090
  ClientHeight = 729
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 99
    Width = 714
    Height = 460
    Align = alClient
    DataSource = DataModule2.DS_Q_v_goods_catalog
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'brandName'
        Title.Caption = #1041#1088#1077#1085#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'modelName'
        Title.Caption = #1052#1086#1076#1077#1083#1100
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'God_vipuska'
        Title.Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Win_number'
        Title.Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
        Width = 145
        Visible = True
      end>
  end
  object PanelToInputValues: TPanel
    Left = 0
    Top = 559
    Width = 714
    Height = 120
    Align = alBottom
    TabOrder = 1
    Visible = False
    ExplicitTop = 558
    ExplicitWidth = 710
    object Label1: TLabel
      Left = 60
      Top = 6
      Width = 103
      Height = 15
      Caption = #1041#1088#1077#1085#1076' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
    end
    object Label2: TLabel
      Left = 60
      Top = 53
      Width = 97
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080
    end
    object Label3: TLabel
      Left = 328
      Top = 6
      Width = 68
      Height = 15
      Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
    end
    object Label4: TLabel
      Left = 336
      Top = 48
      Width = 60
      Height = 15
      Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 177
      Top = 6
      Width = 120
      Height = 23
      DataField = 'IDbrand'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDbrand'
      ListField = 'brandName'
      ListSource = DataModule2.DS_T_brand_car
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 177
      Top = 48
      Width = 120
      Height = 23
      DataField = 'modelName'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 441
      Top = 6
      Width = 120
      Height = 23
      DataField = 'God_vipuska'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 441
      Top = 48
      Width = 120
      Height = 23
      DataField = 'Win_number'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 3
    end
    object PostButton: TButton
      Left = 177
      Top = 89
      Width = 75
      Height = 25
      Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
      TabOrder = 4
      OnClick = PostButtonClick
    end
    object CancelButton: TButton
      Left = 392
      Top = 89
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 5
      OnClick = CancelButtonClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 99
    Align = alTop
    TabOrder = 2
    object E_Filter: TEdit
      Left = 16
      Top = 22
      Width = 345
      Height = 23
      TabOrder = 0
      TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1073#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1074#1080#1085'-'#1085#1086#1084#1077#1088#1072
      OnChange = E_FilterChange
    end
    object GroupBox1: TGroupBox
      Left = 392
      Top = 22
      Width = 233
      Height = 52
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1091
      TabOrder = 1
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 0
        Top = 21
        Width = 113
        Height = 23
        DataField = 'IDbrand'
        DataSource = DataModule2.DS_T_goods_catalog
        KeyField = 'IDbrand'
        ListField = 'brandName'
        ListSource = DataModule2.DS_T_brand_car
        TabOrder = 0
      end
      object CheckBox1: TCheckBox
        Left = 135
        Top = 21
        Width = 86
        Height = 17
        Caption = #1042#1082#1083#1102#1095#1080#1090#1100
        TabOrder = 1
        OnClick = CheckBox1Click
      end
    end
    object InsertButton: TButton
      Left = 16
      Top = 59
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = InsertButtonClick
    end
    object DeleteButton: TButton
      Left = 296
      Top = 59
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 3
      OnClick = DeleteButtonClick
    end
    object EditButton: TButton
      Left = 153
      Top = 59
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = EditButtonClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 679
    Width = 714
    Height = 50
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 678
    ExplicitWidth = 710
    object Button1: TButton
      Left = 249
      Top = 6
      Width = 241
      Height = 33
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1088#1072#1089#1095#1077#1090#1091' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1088#1077#1084#1086#1085#1090#1072
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 664
    Top = 632
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N8: TMenuItem
      Caption = #1056#1077#1084#1086#1085#1090#1085#1072#1103' '#1073#1072#1079#1072
      OnClick = N8Click
    end
    object N7: TMenuItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072#1084#1080
      OnClick = N7Click
    end
    object N4: TMenuItem
      Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077
      object N5: TMenuItem
        Caption = #1043#1088#1072#1092#1080#1082#1080
        OnClick = N5Click
      end
      object N3: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1056#1077#1084#1086#1085#1090#1085#1099#1081' '#1083#1080#1089#1090'"'
        OnClick = N3Click
      end
      object N6: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1077#1084#1086#1085#1090#1072' '#1072#1074#1090#1086'"'
        OnClick = N6Click
      end
    end
  end
end
