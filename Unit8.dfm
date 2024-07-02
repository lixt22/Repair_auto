object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072#1084#1080
  ClientHeight = 623
  ClientWidth = 890
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
    Width = 890
    Height = 623
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitTop = -8
    ExplicitWidth = 1153
    object TabSheet4: TTabSheet
      Caption = #1055#1086#1083#1080#1088#1086#1074#1082#1072
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 63
        Align = alTop
        TabOrder = 0
        ExplicitTop = -6
        object Button14: TButton
          Left = 16
          Top = 34
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = InstertButtonClick
        end
        object Button15: TButton
          Left = 160
          Top = 34
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object Button16: TButton
          Left = 300
          Top = 34
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 16
          Top = 5
          Width = 345
          Height = 23
          TabOrder = 3
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1073#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1074#1080#1085'-'#1085#1086#1084#1077#1088#1072
          OnChange = E_FilterChange
        end
        object GroupBox4: TGroupBox
          Left = 392
          Top = 0
          Width = 233
          Height = 52
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1091
          TabOrder = 4
          object DBLookupComboBox14: TDBLookupComboBox
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
          object CheckBox4: TCheckBox
            Left = 135
            Top = 21
            Width = 86
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 1
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 472
        Width = 882
        Height = 121
        Align = alBottom
        TabOrder = 1
        object Label25: TLabel
          Left = 10
          Top = 6
          Width = 33
          Height = 15
          Caption = #1041#1088#1077#1085#1076
        end
        object Label26: TLabel
          Left = 8
          Top = 43
          Width = 43
          Height = 15
          Caption = #1052#1086#1076#1077#1083#1100
        end
        object Label27: TLabel
          Left = 8
          Top = 70
          Width = 62
          Height = 15
          Caption = #1042#1080#1085'-'#1085#1086#1084#1077#1088
        end
        object Label28: TLabel
          Left = 10
          Top = 99
          Width = 47
          Height = 15
          Caption = #1069#1083#1077#1084#1077#1085#1090
        end
        object Label30: TLabel
          Left = 245
          Top = 6
          Width = 130
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
        end
        object Label31: TLabel
          Left = 245
          Top = 46
          Width = 142
          Height = 15
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
        end
        object Label32: TLabel
          Left = 559
          Top = 6
          Width = 175
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' '#1079#1072' 100 '#1075#1088'.'
        end
        object Label33: TLabel
          Left = 559
          Top = 46
          Width = 127
          Height = 15
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
        end
        object Button17: TButton
          Left = 366
          Top = 88
          Width = 75
          Height = 25
          Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
          TabOrder = 0
          OnClick = PostButtonClick
        end
        object Button18: TButton
          Left = 670
          Top = 88
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object DBEdit15: TDBEdit
          Left = 86
          Top = 37
          Width = 117
          Height = 23
          DataField = 'modelName'
          DataSource = DataModule2.DS_Q_v_polirovka
          TabOrder = 2
        end
        object DBEdit16: TDBEdit
          Left = 86
          Top = 66
          Width = 117
          Height = 23
          DataField = 'Win_number'
          DataSource = DataModule2.DS_Q_v_polirovka
          TabOrder = 3
        end
        object DBLookupComboBox15: TDBLookupComboBox
          Left = 86
          Top = 8
          Width = 117
          Height = 23
          DataField = 'IDbrand'
          DataSource = DataModule2.DS_Q_v_polirovka
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 4
        end
        object DBLookupComboBox16: TDBLookupComboBox
          Left = 86
          Top = 95
          Width = 117
          Height = 23
          DataField = 'IDelem'
          DataSource = DataModule2.DS_Q_v_polirovka
          KeyField = 'IDelem'
          ListField = 'elemName'
          ListSource = DataModule2.DS_T_elements_car
          TabOrder = 5
        end
        object DBEdit17: TDBEdit
          Left = 406
          Top = 6
          Width = 117
          Height = 23
          DataField = 'Price_hour3'
          DataSource = DataModule2.DS_Q_v_polirovka
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 406
          Top = 43
          Width = 117
          Height = 23
          DataField = 'Amount_hour3'
          DataSource = DataModule2.DS_Q_v_polirovka
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 750
          Top = 48
          Width = 117
          Height = 23
          DataField = 'Amount_material'
          DataSource = DataModule2.DS_Q_v_polirovka
          TabOrder = 8
        end
        object DBLookupComboBox18: TDBLookupComboBox
          Left = 750
          Top = 6
          Width = 117
          Height = 23
          DataField = 'IDmaterial'
          DataSource = DataModule2.DS_Q_v_polirovka
          KeyField = 'IDmaterial'
          ListField = 'Cost_material'
          ListSource = DataModule2.DS_T_rashod_materials
          TabOrder = 9
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 63
        Width = 882
        Height = 409
        Align = alClient
        DataSource = DataModule2.DS_Q_v_polirovka
        TabOrder = 2
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
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Win_number'
            Title.Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'elemName'
            Title.Caption = #1069#1083#1077#1084#1077#1085#1090
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vidName'
            Title.Caption = #1042#1080#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price_hour3'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount_hour3'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'materialName'
            Title.Caption = #1052#1072#1090#1077#1088#1080#1072#1083
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expr1'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expr2'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 118
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1084#1077#1085#1072
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 65
        Align = alTop
        TabOrder = 0
        object Button1: TButton
          Left = 16
          Top = 34
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = InstertButtonClick
        end
        object Button4: TButton
          Left = 160
          Top = 34
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object Button5: TButton
          Left = 300
          Top = 34
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
        end
        object Edit1: TEdit
          Left = 16
          Top = 5
          Width = 345
          Height = 23
          TabOrder = 3
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1073#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1074#1080#1085'-'#1085#1086#1084#1077#1088#1072
          OnChange = E_FilterChange
        end
        object GroupBox2: TGroupBox
          Left = 392
          Top = 0
          Width = 233
          Height = 52
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1091
          TabOrder = 4
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 0
            Top = 18
            Width = 113
            Height = 23
            DataField = 'IDbrand'
            DataSource = DataModule2.DS_T_goods_catalog
            KeyField = 'IDbrand'
            ListField = 'brandName'
            ListSource = DataModule2.DS_T_brand_car
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 135
            Top = 21
            Width = 86
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 1
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 496
        Width = 882
        Height = 97
        Align = alBottom
        TabOrder = 1
        object Label10: TLabel
          Left = 10
          Top = 6
          Width = 33
          Height = 15
          Caption = #1041#1088#1077#1085#1076
        end
        object Label11: TLabel
          Left = 10
          Top = 43
          Width = 43
          Height = 15
          Caption = #1052#1086#1076#1077#1083#1100
        end
        object Label12: TLabel
          Left = 10
          Top = 72
          Width = 62
          Height = 15
          Caption = #1042#1080#1085'-'#1085#1086#1084#1077#1088
        end
        object Label13: TLabel
          Left = 224
          Top = 6
          Width = 47
          Height = 15
          Caption = #1069#1083#1077#1084#1077#1085#1090
        end
        object Label14: TLabel
          Left = 224
          Top = 35
          Width = 75
          Height = 15
          Caption = #1042#1080#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
        end
        object Label15: TLabel
          Left = 483
          Top = 6
          Width = 130
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
        end
        object Label16: TLabel
          Left = 483
          Top = 38
          Width = 142
          Height = 15
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
        end
        object Label17: TLabel
          Left = 224
          Top = 72
          Width = 115
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1101#1083#1077#1084#1077#1085#1090#1072
        end
        object Button6: TButton
          Left = 483
          Top = 64
          Width = 75
          Height = 25
          Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
          TabOrder = 0
          OnClick = PostButtonClick
        end
        object Button7: TButton
          Left = 665
          Top = 64
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 80
          Top = 36
          Width = 117
          Height = 23
          DataField = 'modelName'
          DataSource = DataModule2.DS_Q_v_zamena
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 80
          Top = 65
          Width = 117
          Height = 23
          DataField = 'Win_number'
          DataSource = DataModule2.DS_Q_v_zamena
          TabOrder = 3
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 80
          Top = 7
          Width = 117
          Height = 23
          DataField = 'IDbrand'
          DataSource = DataModule2.DS_Q_v_zamena
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 4
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 345
          Top = 6
          Width = 117
          Height = 23
          DataField = 'IDelem'
          DataSource = DataModule2.DS_Q_v_zamena
          KeyField = 'IDelem'
          ListField = 'elemName'
          ListSource = DataModule2.DS_T_elements_car
          TabOrder = 5
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 345
          Top = 35
          Width = 117
          Height = 23
          DataField = 'IDvid'
          DataSource = DataModule2.DS_Q_v_zamena
          KeyField = 'IDvid'
          ListField = 'vidName'
          ListSource = DataModule2.DS_T_vid_zapchasti
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 631
          Top = 6
          Width = 117
          Height = 23
          DataField = 'Price_hour2'
          DataSource = DataModule2.DS_Q_v_zamena
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 631
          Top = 35
          Width = 117
          Height = 23
          DataField = 'Amount_hour2'
          DataSource = DataModule2.DS_Q_v_zamena
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 345
          Top = 64
          Width = 117
          Height = 23
          DataField = 'ElemCost'
          DataSource = DataModule2.DS_Q_v_zamena
          TabOrder = 9
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 65
        Width = 882
        Height = 431
        Align = alClient
        DataSource = DataModule2.DS_Q_v_zamena
        TabOrder = 2
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
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Win_number'
            Title.Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'elemName'
            Title.Caption = #1069#1083#1077#1084#1077#1085#1090
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vidName'
            Title.Caption = #1042#1080#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ElemCost'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1101#1083#1077#1084#1077#1085#1090#1072
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price_hour2'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount_hour2'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
            Width = 123
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1082#1088#1072#1089#1082#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 65
        Width = 882
        Height = 407
        Align = alClient
        DataSource = DataModule2.DS_Q_v_pokraska
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
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Win_number'
            Title.Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'elemName'
            Title.Caption = #1069#1083#1077#1084#1077#1085#1090
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vidName'
            Title.Caption = #1042#1080#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price_hour1'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount_hour1'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'materialName'
            Title.Caption = #1052#1072#1090#1077#1088#1080#1072#1083
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expr1'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expr2'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 124
            Visible = True
          end>
      end
      object PanelToInputValues: TPanel
        Left = 0
        Top = 472
        Width = 882
        Height = 121
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 10
          Top = 6
          Width = 33
          Height = 15
          Caption = #1041#1088#1077#1085#1076
        end
        object Label2: TLabel
          Left = 8
          Top = 43
          Width = 43
          Height = 15
          Caption = #1052#1086#1076#1077#1083#1100
        end
        object Label3: TLabel
          Left = 8
          Top = 70
          Width = 62
          Height = 15
          Caption = #1042#1080#1085'-'#1085#1086#1084#1077#1088
        end
        object Label4: TLabel
          Left = 10
          Top = 99
          Width = 47
          Height = 15
          Caption = #1069#1083#1077#1084#1077#1085#1090
        end
        object Label6: TLabel
          Left = 245
          Top = 6
          Width = 130
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
        end
        object Label7: TLabel
          Left = 245
          Top = 46
          Width = 142
          Height = 15
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
        end
        object Label8: TLabel
          Left = 570
          Top = 6
          Width = 175
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' '#1079#1072' 100 '#1075#1088'.'
        end
        object Label9: TLabel
          Left = 570
          Top = 46
          Width = 127
          Height = 15
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
        end
        object PostButton: TButton
          Left = 366
          Top = 88
          Width = 75
          Height = 25
          Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
          TabOrder = 0
          OnClick = PostButtonClick
        end
        object CancelButton: TButton
          Left = 670
          Top = 88
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 86
          Top = 37
          Width = 117
          Height = 23
          DataField = 'modelName'
          DataSource = DataModule2.DS_Q_v_pokraska
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 86
          Top = 66
          Width = 117
          Height = 23
          DataField = 'Win_number'
          DataSource = DataModule2.DS_Q_v_pokraska
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 86
          Top = 8
          Width = 117
          Height = 23
          DataField = 'IDbrand'
          DataSource = DataModule2.DS_Q_v_pokraska
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 4
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 86
          Top = 95
          Width = 117
          Height = 23
          DataField = 'IDelem'
          DataSource = DataModule2.DS_Q_v_pokraska
          KeyField = 'IDelem'
          ListField = 'elemName'
          ListSource = DataModule2.DS_T_elements_car
          TabOrder = 5
        end
        object DBEdit3: TDBEdit
          Left = 406
          Top = 6
          Width = 117
          Height = 23
          DataField = 'Price_hour1'
          DataSource = DataModule2.DS_Q_v_pokraska
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 406
          Top = 43
          Width = 117
          Height = 23
          DataField = 'Amount_hour1'
          DataSource = DataModule2.DS_Q_v_pokraska
          TabOrder = 7
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 759
          Top = 6
          Width = 117
          Height = 23
          DataField = 'IDmaterial'
          DataSource = DataModule2.DS_Q_v_pokraska
          KeyField = 'IDmaterial'
          ListField = 'Cost_material'
          ListSource = DataModule2.DS_T_rashod_materials
          TabOrder = 8
        end
        object DBEdit5: TDBEdit
          Left = 759
          Top = 48
          Width = 117
          Height = 23
          DataField = 'expr1'
          DataSource = DataModule2.DS_Q_v_pokraska
          TabOrder = 9
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 65
        Align = alTop
        TabOrder = 2
        object Button10: TButton
          Left = 16
          Top = 34
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = InstertButtonClick
        end
        object Button11: TButton
          Left = 160
          Top = 34
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object Button12: TButton
          Left = 300
          Top = 34
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
        end
        object Edit2: TEdit
          Left = 16
          Top = 5
          Width = 345
          Height = 23
          TabOrder = 3
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1073#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1074#1080#1085'-'#1085#1086#1084#1077#1088#1072
          OnChange = E_FilterChange
        end
        object GroupBox3: TGroupBox
          Left = 392
          Top = 0
          Width = 233
          Height = 52
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1091
          TabOrder = 4
          object DBLookupComboBox13: TDBLookupComboBox
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
          object CheckBox3: TCheckBox
            Left = 135
            Top = 21
            Width = 86
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1084#1086#1085#1090
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 63
        Align = alTop
        TabOrder = 0
        object Button2: TButton
          Left = 16
          Top = 34
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = InstertButtonClick
        end
        object Button3: TButton
          Left = 160
          Top = 34
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object Button8: TButton
          Left = 300
          Top = 34
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 16
          Top = 5
          Width = 345
          Height = 23
          TabOrder = 3
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1073#1088#1077#1085#1076#1072', '#1084#1086#1076#1077#1083#1080' '#1080#1083#1080' '#1074#1080#1085'-'#1085#1086#1084#1077#1088#1072
          OnChange = E_FilterChange
        end
        object GroupBox1: TGroupBox
          Left = 392
          Top = 0
          Width = 233
          Height = 52
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1073#1088#1077#1085#1076#1091
          TabOrder = 4
          object DBLookupComboBox4: TDBLookupComboBox
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
          end
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 63
        Width = 882
        Height = 409
        Align = alClient
        DataSource = DataModule2.DS_Q_v_remont
        TabOrder = 1
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
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Win_number'
            Title.Caption = #1042#1080#1085'-'#1085#1086#1084#1077#1088
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'elemName'
            Title.Caption = #1069#1083#1077#1084#1077#1085#1090
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vidName'
            Title.Caption = #1042#1080#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount_hour4'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price_hour4'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
            Width = 136
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 472
        Width = 882
        Height = 121
        Align = alBottom
        TabOrder = 2
        object Label18: TLabel
          Left = 10
          Top = 6
          Width = 33
          Height = 15
          Caption = #1041#1088#1077#1085#1076
        end
        object Label19: TLabel
          Left = 10
          Top = 43
          Width = 43
          Height = 15
          Caption = #1052#1086#1076#1077#1083#1100
        end
        object Label20: TLabel
          Left = 10
          Top = 72
          Width = 62
          Height = 15
          Caption = #1042#1080#1085'-'#1085#1086#1084#1077#1088
        end
        object Label21: TLabel
          Left = 10
          Top = 102
          Width = 47
          Height = 15
          Caption = #1069#1083#1077#1084#1077#1085#1090
        end
        object Label23: TLabel
          Left = 292
          Top = 6
          Width = 130
          Height = 15
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1072
        end
        object Label24: TLabel
          Left = 292
          Top = 45
          Width = 142
          Height = 15
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1086#1088#1084#1086'-'#1095#1072#1089#1086#1074
        end
        object Button9: TButton
          Left = 270
          Top = 75
          Width = 75
          Height = 25
          Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
          TabOrder = 0
          OnClick = PostButtonClick
        end
        object Button13: TButton
          Left = 494
          Top = 75
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 96
          Top = 37
          Width = 117
          Height = 23
          DataField = 'modelName'
          DataSource = DataModule2.DS_Q_v_remont
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 96
          Top = 66
          Width = 117
          Height = 23
          DataField = 'Win_number'
          DataSource = DataModule2.DS_Q_v_remont
          TabOrder = 3
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 96
          Top = 8
          Width = 117
          Height = 23
          DataField = 'IDbrand'
          DataSource = DataModule2.DS_Q_v_remont
          KeyField = 'IDbrand'
          ListField = 'brandName'
          ListSource = DataModule2.DS_T_brand_car
          TabOrder = 4
        end
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 96
          Top = 95
          Width = 117
          Height = 23
          DataField = 'IDelem'
          DataSource = DataModule2.DS_Q_v_remont
          KeyField = 'IDelem'
          ListField = 'elemName'
          ListSource = DataModule2.DS_T_elements_car
          TabOrder = 5
        end
        object DBEdit13: TDBEdit
          Left = 468
          Top = 6
          Width = 117
          Height = 23
          DataField = 'Price_hour4'
          DataSource = DataModule2.DS_Q_v_remont
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 468
          Top = 45
          Width = 117
          Height = 23
          DataField = 'Amount_hour4'
          DataSource = DataModule2.DS_Q_v_remont
          TabOrder = 7
        end
      end
    end
  end
end
