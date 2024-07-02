object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1056#1077#1084#1086#1085#1090#1085#1072#1103' '#1073#1072#1079#1072
  ClientHeight = 468
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 731
    object E_filter: TEdit
      Left = 24
      Top = 18
      Width = 353
      Height = 23
      TabOrder = 0
      TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1074#1080#1085' '#1085#1086#1084#1077#1088' '#1080#1083#1080' '#1084#1086#1076#1077#1083#1100' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
      OnChange = E_filterChange
    end
    object DeleteButton: TButton
      Left = 456
      Top = 17
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 1
      OnClick = DeleteButtonClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 735
    Height = 411
    Align = alClient
    DataSource = DataModule2.DS_Q_v_remont_basa
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDbasa'
        Title.Caption = 'ID'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'modelName'
        Title.Caption = #1052#1086#1076#1077#1083#1100
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Win_number'
        Title.Caption = #1042#1080#1085'-'#1085#1086#1084#1077#1088
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elemName'
        Title.Caption = #1069#1083#1077#1084#1077#1085#1090
        Width = 129
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
        FieldName = 'cost_pokr'
        Title.Caption = #1055#1086#1082#1088#1072#1089#1082#1072
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_zam'
        Title.Caption = #1047#1072#1084#1077#1085#1072
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_polir'
        Title.Caption = #1055#1086#1083#1080#1088#1086#1074#1082#1072
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost_rem'
        Title.Caption = #1056#1077#1084#1086#1085#1090
        Width = 48
        Visible = True
      end>
  end
end
