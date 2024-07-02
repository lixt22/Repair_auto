object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 716
  ClientWidth = 717
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
    Width = 717
    Height = 716
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 713
    ExplicitHeight = 715
    object Label1: TLabel
      Left = 72
      Top = 88
      Width = 94
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1088#1077#1085#1076#1072
    end
    object Label2: TLabel
      Left = 72
      Top = 136
      Width = 97
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080
    end
    object Label3: TLabel
      Left = 72
      Top = 184
      Width = 68
      Height = 15
      Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
    end
    object Label4: TLabel
      Left = 72
      Top = 232
      Width = 60
      Height = 15
      Caption = #1042#1080#1085' '#1085#1086#1084#1077#1088
    end
    object DBText1: TDBText
      Left = 256
      Top = 88
      Width = 65
      Height = 15
      DataField = 'brandName'
    end
    object DBText2: TDBText
      Left = 256
      Top = 134
      Width = 65
      Height = 17
      DataField = 'modelName'
    end
    object DBText3: TDBText
      Left = 256
      Top = 182
      Width = 65
      Height = 17
      DataField = 'God_vipuska'
    end
    object DBText4: TDBText
      Left = 256
      Top = 232
      Width = 121
      Height = 17
      DataField = 'Win_number'
    end
    object Label5: TLabel
      Left = 72
      Top = 272
      Width = 115
      Height = 15
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086#1082#1088#1072#1089#1082#1080
    end
    object TLabel
      Left = 72
      Top = 312
      Width = 105
      Height = 15
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1084#1077#1085#1099
    end
    object DBText5: TDBText
      Left = 256
      Top = 272
      Width = 65
      Height = 17
    end
    object DBText6: TDBText
      Left = 256
      Top = 312
      Width = 65
      Height = 17
    end
    object Label6: TLabel
      Left = 72
      Top = 350
      Width = 47
      Height = 15
      Caption = #1069#1083#1077#1084#1077#1085#1090
    end
    object DBText7: TDBText
      Left = 256
      Top = 350
      Width = 65
      Height = 17
      DataField = 'elemName'
    end
    object Button1: TButton
      Left = 136
      Top = 448
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1088#1072#1089#1082#1072
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 416
      Top = 448
      Width = 75
      Height = 25
      Caption = #1047#1072#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 256
      Top = 384
      Width = 145
      Height = 23
      DataField = 'IDvid'
      KeyField = 'IDvid'
      ListField = 'vidName'
      TabOrder = 2
    end
  end
end
