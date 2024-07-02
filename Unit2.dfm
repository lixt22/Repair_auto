object DataModule2: TDataModule2
  Height = 955
  Width = 807
  object T_goods_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_goods_catalogAfterPost
    AfterDelete = T_goods_catalogAfterDelete
    TableName = 'goods_catalog'
    Left = 152
    Top = 8
    object T_goods_catalogIDcc: TAutoIncField
      FieldName = 'IDcc'
      ReadOnly = True
    end
    object T_goods_catalogmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 50
    end
    object T_goods_catalogWin_number: TWideStringField
      FieldName = 'Win_number'
      Size = 17
    end
    object T_goods_catalogGod_vipuska: TIntegerField
      FieldName = 'God_vipuska'
    end
    object T_goods_catalogIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
  end
  object T_brand_car: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'brand_car'
    Left = 152
    Top = 64
    object T_brand_carIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
    object T_brand_carbrandName: TWideStringField
      FieldName = 'brandName'
    end
  end
  object T_elements_car: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'elements_car'
    Left = 152
    Top = 120
    object T_elements_carIDelem: TAutoIncField
      FieldName = 'IDelem'
      ReadOnly = True
    end
    object T_elements_carelemName: TWideStringField
      FieldName = 'elemName'
      Size = 30
    end
  end
  object T_elements_car_s_vidom: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_elements_car_s_vidomAfterPost
    TableName = 'elements_car_s_vidom'
    Left = 152
    Top = 176
    object T_elements_car_s_vidomIDelemvid: TAutoIncField
      FieldName = 'IDelemvid'
      ReadOnly = True
    end
    object T_elements_car_s_vidomElemCost: TBCDField
      FieldName = 'ElemCost'
      Precision = 10
      Size = 2
    end
    object T_elements_car_s_vidomIDelem: TIntegerField
      FieldName = 'IDelem'
    end
    object T_elements_car_s_vidomIDvid: TIntegerField
      FieldName = 'IDvid'
    end
    object T_elements_car_s_vidomIDcc: TIntegerField
      FieldName = 'IDcc'
    end
  end
  object T_pokraska_elements: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'pokraska_elements'
    Left = 152
    Top = 232
    object T_pokraska_elementsIDpokras: TAutoIncField
      FieldName = 'IDpokras'
      ReadOnly = True
    end
    object T_pokraska_elementsPrice_hour1: TBCDField
      FieldName = 'Price_hour1'
      Precision = 10
      Size = 0
    end
    object T_pokraska_elementsAmount_hour1: TIntegerField
      FieldName = 'Amount_hour1'
    end
    object T_pokraska_elementsIDmaterial: TIntegerField
      FieldName = 'IDmaterial'
    end
    object T_pokraska_elementsAmount_material: TIntegerField
      FieldName = 'Amount_material'
    end
    object T_pokraska_elementsIDelemvid: TIntegerField
      FieldName = 'IDelemvid'
    end
    object T_pokraska_elementsIDbrand: TIntegerField
      FieldName = 'IDbrand'
    end
  end
  object T_rashod_materials: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'rashod_materials'
    Left = 152
    Top = 288
    object T_rashod_materialsIDmaterial: TAutoIncField
      FieldName = 'IDmaterial'
      ReadOnly = True
    end
    object T_rashod_materialsmaterialName: TWideStringField
      FieldName = 'materialName'
      Size = 25
    end
    object T_rashod_materialsCost_material: TBCDField
      FieldName = 'Cost_material'
      Precision = 10
      Size = 2
    end
  end
  object T_vid_zapchasti: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'vid_zapchasti'
    Left = 152
    Top = 344
    object T_vid_zapchastiIDvid: TIntegerField
      FieldName = 'IDvid'
    end
    object T_vid_zapchastividName: TWideStringField
      FieldName = 'vidName'
      Size = 25
    end
  end
  object T_zamena_elements: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'zamena_elements'
    Left = 152
    Top = 400
    object T_zamena_elementsIDzamena: TAutoIncField
      FieldName = 'IDzamena'
      ReadOnly = True
    end
    object T_zamena_elementsIDelemvid: TIntegerField
      FieldName = 'IDelemvid'
    end
    object T_zamena_elementsPrice_hour2: TBCDField
      FieldName = 'Price_hour2'
      Precision = 10
      Size = 0
    end
    object T_zamena_elementsAmount_hour2: TIntegerField
      FieldName = 'Amount_hour2'
    end
  end
  object DS_T_goods_catalog: TDataSource
    DataSet = T_goods_catalog
    Left = 320
    Top = 8
  end
  object DS_T_brand_car: TDataSource
    DataSet = T_brand_car
    Left = 320
    Top = 64
  end
  object DS_T_elements_car: TDataSource
    DataSet = T_elements_car
    Left = 320
    Top = 120
  end
  object DS_T_elements_car_s_vidom: TDataSource
    DataSet = T_elements_car_s_vidom
    Left = 320
    Top = 176
  end
  object DS_T_pokraska_elements: TDataSource
    DataSet = T_pokraska_elements
    Left = 320
    Top = 232
  end
  object DS_T_rashod_materials: TDataSource
    DataSet = T_rashod_materials
    Left = 320
    Top = 288
  end
  object DS_T_vid_zapchasti: TDataSource
    DataSet = T_vid_zapchasti
    Left = 320
    Top = 344
  end
  object DS_T_zamena_elements: TDataSource
    DataSet = T_zamena_elements
    Left = 320
    Top = 400
  end
  object Q_v_pokraska: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_pokraska')
    Left = 480
    Top = 8
  end
  object Q_v_zamena: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_zamena')
    Left = 480
    Top = 64
  end
  object DS_Q_v_pokraska: TDataSource
    DataSet = Q_v_pokraska
    Left = 640
    Top = 8
  end
  object DS_Q_v_zamena: TDataSource
    DataSet = Q_v_zamena
    Left = 640
    Top = 64
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=localhost;UID=ro' +
      'ot;DATABASE=goodsmanager;PORT=3306;CHARSET=utf8mb4;COLUMN_SIZE_S' +
      '32=1"'
    Left = 40
    Top = 8
  end
  object Q_v_goods_catalog: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_goods_catalogAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_goods_catalog')
    Left = 480
    Top = 120
    object Q_v_goods_catalogIDcc: TIntegerField
      FieldName = 'IDcc'
    end
    object Q_v_goods_catalogbrandName: TWideStringField
      FieldName = 'brandName'
    end
    object Q_v_goods_catalogmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 50
    end
    object Q_v_goods_catalogGod_vipuska: TIntegerField
      FieldName = 'God_vipuska'
    end
    object Q_v_goods_catalogWin_number: TWideStringField
      FieldName = 'Win_number'
      Size = 17
    end
  end
  object DS_Q_v_goods_catalog: TDataSource
    DataSet = Q_v_goods_catalog
    Left = 640
    Top = 120
  end
  object Q_v_full_pokraska_elem: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_full_pokraska_elem')
    Left = 480
    Top = 176
  end
  object DS_Q_v_full_pokraska_elem: TDataSource
    DataSet = Q_v_full_pokraska_elem
    Left = 640
    Top = 176
  end
  object DS_Q_v_fullcost: TDataSource
    DataSet = Q_v_fullcost
    Left = 640
    Top = 232
  end
  object T_history_rabot: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = T_history_rabotAfterInsert
    AfterPost = T_history_rabotAfterPost
    TableName = 'history_rabot'
    Left = 152
    Top = 456
    object T_history_rabotIDhis: TAutoIncField
      FieldName = 'IDhis'
      ReadOnly = True
    end
    object T_history_rabotelemName: TWideStringField
      FieldName = 'elemName'
      Size = 30
    end
    object T_history_rabotvidName: TWideStringField
      FieldName = 'vidName'
      Size = 30
    end
    object T_history_rabotcost_pokr: TBCDField
      FieldName = 'cost_pokr'
      Precision = 10
      Size = 0
    end
    object T_history_rabotcost_zam: TBCDField
      FieldName = 'cost_zam'
      Precision = 10
      Size = 0
    end
    object T_history_rabotcost_polir: TBCDField
      FieldName = 'cost_polir'
      Precision = 10
      Size = 0
    end
    object T_history_rabotcost_rem: TBCDField
      FieldName = 'cost_rem'
      Precision = 10
      Size = 0
    end
  end
  object DS_T_history_rabot: TDataSource
    DataSet = T_history_rabot
    Left = 320
    Top = 456
  end
  object Q_v_fullcost: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_fullcost')
    Left = 480
    Top = 232
  end
  object Q_cost_zamena: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT zam_elem, elemName'
      'FROM view_zamena'
      'WHERE vidName='#39#1054#1088#1080#1075#1080#1085#1072#1083#39' AND IDcc=1')
    Left = 384
    Top = 752
  end
  object Q_cost_pokraska: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT pokr_elem, elemName'
      'FROM view_fullcost'
      'WHERE vidName='#39#1054#1088#1080#1075#1080#1085#1072#1083#39' AND IDcc=2')
    Left = 472
    Top = 864
  end
  object Q_kolvo_grynta: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT materialName, elemName, expr1'
      'FROM view_pokraska'
      'WHERE vidName='#39'Analog'#39' AND IDcc=1 AND IDmaterial=2')
    Left = 560
    Top = 752
  end
  object Q_kolvo_kraski: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT materialName, elemName, expr1'
      'FROM view_pokraska'
      'WHERE vidName='#39'Original'#39' AND IDcc=1 AND IDmaterial=1')
    Left = 472
    Top = 752
  end
  object Q_kolvo_laka: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT materialName, elemName, expr1'
      'FROM view_pokraska'
      'WHERE vidName='#39#1054#1088#1080#1075#1080#1085#1072#1083#39' AND IDcc=1 AND IDmaterial=3')
    Left = 472
    Top = 808
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_v_fullcost
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 552
  end
  object Rep_zamena: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45427.608822488400000000
    ReportOptions.LastChange = 45427.608822488400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 584
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 240.000000000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 9.600000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.400000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."modelName"'
        DrillDown = True
        KeepTogether = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434879
          Memo.UTF8W = (
            '[frxDBDataset1."brandName"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434879
          Memo.UTF8W = (
            '[frxDBDataset1."modelName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 268.800000000000000000
          Top = 9.600000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434879
          Memo.UTF8W = (
            '[frxDBDataset1."God_vipuska"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 345.600000000000000000
          Top = 9.600000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13434879
          Memo.UTF8W = (
            '[frxDBDataset1."Win_number"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 163.200000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          Memo.UTF8W = (
            '[frxDBDataset1."elemName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          Memo.UTF8W = (
            '[frxDBDataset1."vidName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 268.800000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13296895
          Memo.UTF8W = (
            '[frxDBDataset1."zam_elem"]')
          ParentFont = False
        end
      end
    end
  end
  object Rep_pokr: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45427.643271365700000000
    ReportOptions.LastChange = 45427.643271365700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 640
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 153.600000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790335
          Memo.UTF8W = (
            '[frxDBDataset2."elemName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790335
          Memo.UTF8W = (
            '[frxDBDataset2."pokr_elem"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 230.400000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 9.600000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."modelName"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16055023
          Memo.UTF8W = (
            '[frxDBDataset2."modelName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16055023
          Memo.UTF8W = (
            '[frxDBDataset2."brandName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 9.600000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16055023
          Memo.UTF8W = (
            '[frxDBDataset2."God_vipuska"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 9.600000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16055023
          Memo.UTF8W = (
            '[frxDBDataset2."Win_number"]')
          ParentFont = False
        end
      end
    end
  end
  object T_polirovka_elements: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'polirovka_elements'
    Left = 152
    Top = 512
    object T_polirovka_elementsIDpol: TAutoIncField
      FieldName = 'IDpol'
      ReadOnly = True
    end
    object T_polirovka_elementsPrice_hour3: TBCDField
      FieldName = 'Price_hour3'
      Precision = 10
      Size = 0
    end
    object T_polirovka_elementsAmount_hour3: TIntegerField
      FieldName = 'Amount_hour3'
    end
    object T_polirovka_elementsIDmaterial: TIntegerField
      FieldName = 'IDmaterial'
    end
    object T_polirovka_elementsAmount_material: TIntegerField
      FieldName = 'Amount_material'
    end
    object T_polirovka_elementsIDelemvid: TIntegerField
      FieldName = 'IDelemvid'
    end
  end
  object DS_T_polirovka_elements: TDataSource
    DataSet = T_polirovka_elements
    Left = 320
    Top = 512
  end
  object Q_v_polirovka: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_polirovka')
    Left = 480
    Top = 288
  end
  object DS_Q_v_polirovka: TDataSource
    DataSet = Q_v_polirovka
    Left = 640
    Top = 288
  end
  object T_remont_elements: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'remont_elements'
    Left = 152
    Top = 568
    object T_remont_elementsIDremont: TAutoIncField
      FieldName = 'IDremont'
      ReadOnly = True
    end
    object T_remont_elementsIDelemvid: TIntegerField
      FieldName = 'IDelemvid'
    end
    object T_remont_elementsPrice_hour4: TBCDField
      FieldName = 'Price_hour4'
      Precision = 10
      Size = 0
    end
    object T_remont_elementsAmount_hour4: TIntegerField
      FieldName = 'Amount_hour4'
    end
  end
  object DS_T_remont_elements: TDataSource
    DataSet = T_remont_elements
    Left = 320
    Top = 568
  end
  object Q_v_remont: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_remont')
    Left = 480
    Top = 344
  end
  object DS_Q_v_remont: TDataSource
    DataSet = Q_v_remont
    Left = 640
    Top = 344
  end
  object Q_cost_polirovka: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT polir_elem, elemName'
      'FROM view_polirovka'
      'WHERE vidName='#39#1040#1085#1072#1083#1086#1075#39' AND IDcc=1')
    Left = 384
    Top = 808
  end
  object Q_cost_remont: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT rem_elem, elemName'
      'FROM view_remont'
      'WHERE vidName='#39#1041#1091#39' AND IDcc=1')
    Left = 552
    Top = 808
  end
  object Rep_polir: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45429.383192187500000000
    ReportOptions.LastChange = 45429.383192187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 696
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 230.400000000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 9.600000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."modelName"'
        KeepTogether = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16777190
          Memo.UTF8W = (
            '[frxDBDataset2."brandName"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 172.800000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16777190
          Memo.UTF8W = (
            '[frxDBDataset2."modelName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Top = 9.600000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16777190
          Memo.UTF8W = (
            '[frxDBDataset2."God_vipuska"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Top = 9.600000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16777190
          Memo.UTF8W = (
            '[frxDBDataset2."Win_number"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 153.600000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16771315
          Memo.UTF8W = (
            '[frxDBDataset2."elemName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 172.800000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16772341
          Memo.UTF8W = (
            '[frxDBDataset2."polir_elem"]')
          ParentFont = False
        end
      end
    end
  end
  object Rep_rem: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45429.383192187500000000
    ReportOptions.LastChange = 45429.383192187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 752
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 230.400000000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 9.600000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 105.600000000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."modelName"'
        KeepTogether = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14281983
          Memo.UTF8W = (
            '[frxDBDataset2."brandName"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Top = 9.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14281983
          Memo.UTF8W = (
            '[frxDBDataset2."modelName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 268.800000000000000000
          Top = 9.600000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14281983
          Memo.UTF8W = (
            '[frxDBDataset2."God_vipuska"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 9.600000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14281983
          Memo.UTF8W = (
            '[frxDBDataset2."Win_number"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 153.600000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13893370
          Memo.UTF8W = (
            '[frxDBDataset2."elemName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13893370
          Memo.UTF8W = (
            '[frxDBDataset2."rem_elem"]')
          ParentFont = False
        end
      end
    end
  end
  object Q_v_history_rabot: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_history_rabot')
    Left = 480
    Top = 400
  end
  object DS_Q_v_history_rabot: TDataSource
    DataSet = Q_v_history_rabot
    Left = 640
    Top = 400
  end
  object T_remont_basa: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterDelete = T_remont_basaAfterDelete
    TableName = 'remont_basa'
    Left = 152
    Top = 624
    object T_remont_basaIDbasa: TAutoIncField
      FieldName = 'IDbasa'
      ReadOnly = True
    end
    object T_remont_basamodelName: TWideStringField
      FieldName = 'modelName'
      Size = 30
    end
    object T_remont_basaWin_number: TWideStringField
      FieldName = 'Win_number'
      Size = 17
    end
    object T_remont_basaelemName: TWideStringField
      FieldName = 'elemName'
      Size = 30
    end
    object T_remont_basavidName: TWideStringField
      FieldName = 'vidName'
      Size = 30
    end
    object T_remont_basacost_pokr: TBCDField
      FieldName = 'cost_pokr'
      Precision = 10
      Size = 0
    end
    object T_remont_basacost_zam: TBCDField
      FieldName = 'cost_zam'
      Precision = 10
      Size = 0
    end
    object T_remont_basacost_polir: TBCDField
      FieldName = 'cost_polir'
      Precision = 10
      Size = 0
    end
    object T_remont_basacost_rem: TBCDField
      FieldName = 'cost_rem'
      Precision = 10
      Size = 0
    end
  end
  object DS_T_remont_basa: TDataSource
    DataSet = T_remont_basa
    Left = 320
    Top = 624
  end
  object Q_v_remont_basa: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_remont_basaAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_remont_basa')
    Left = 480
    Top = 456
  end
  object DS_Q_v_remont_basa: TDataSource
    DataSet = Q_v_remont_basa
    Left = 640
    Top = 456
  end
  object Q_rep: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *FROM view_fullcost WHERE vidName="Original"')
    Left = 440
    Top = 688
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Q_rep
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 616
  end
  object Q_remont_auto: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT modelName,Win_number, SUM(cost_pokr + cost_zam + cost_pol' +
        'ir + cost_rem) AS total_sum '
      'FROM view_remont_basa '
      'GROUP BY modelName,Win_number')
    Left = 552
    Top = 688
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = Q_remont_auto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 680
  end
  object Rep_cost_auto: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45434.413980416700000000
    ReportOptions.LastChange = 45434.413980416700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 760
    Top = 816
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 153.600000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 374.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."total_sum"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."modelName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 182.400000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Win_number"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 76.800000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 19.200000000000000000
          Width = 355.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1077#1084#1086#1085#1090#1072' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081', '#1087#1086#1089#1090#1088#1072#1076#1072#1074#1096#1080#1093' '#1074' '#1044#1058#1055)
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    DataSet = Q_v_goods_catalog
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 752
  end
  object Rem_list: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45434.450855231500000000
    ReportOptions.LastChange = 45434.450855231500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 760
    Top = 872
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.400000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 153.600000000000000000
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1077#1088#1077#1095#1077#1085#1100' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081', '#1087#1086#1089#1090#1088#1072#1076#1072#1074#1096#1080#1093' '#1074' '#1044#1058#1055)
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 115.200000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."brandName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 182.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."modelName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."God_vipuska"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 374.400000000000000000
          Width = 182.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Win_number"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 192.000000000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 9.600000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
end
