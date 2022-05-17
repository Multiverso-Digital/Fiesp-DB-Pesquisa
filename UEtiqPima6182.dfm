object Fpima6182: TFpima6182
  Left = 84
  Top = 107
  Width = 700
  Height = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000000000000000000000000F00F00F000000000000000000000000
    0F00F00F0000000000000000000000000F0F0F0F000000000000000000000000
    0F0F0F0F00000000AAAAAA00000000000F00F00F00000AAAAAAAAAAA00000000
    0F00000F000AFAFAFAFAAAAA000000000F00F00F0FAFAAAAAAAAA00000000000
    0F0F0000FAFAFAFAFA0002AA0000000000F0000FAFAAAFAA00222A2A00000000
    000F00FAFAFAFAF002A2A2A00000000000000FAFAFAFA0020A2A2AA000000000
    0000FAFAFAFA022202A2AA00000000000000FFFFAFA0222A0A2A2A0000000000
    000AFAFAFA0F22A202A2A00000000000000FFFAFA0F0F22A0A2A000000000000
    00FAFAFA02AF0FA202A200000000000000FFAFF02222F0FA0AA0000000000000
    00FAFAF022A2AF0F0A000000000000000FFFFF02222A2AF00000000000000000
    0FFAF000000000000F0F0000000000000FFFF0222A2A2AA0F0F0F00000000000
    0FFA02A2A2A2A2000F00F000000000000FFF022A2A2A2000F000F00000000000
    0FFA02A2A2A000000FFF0F00000000000FF02A2A2A0000000000FF0000000000
    00F0222200000000000000000000000000F02200000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFF84FFFFFF84FFFFFF80FF03FF80F800FF90E0007F8080007F9000007F820
    0007FC400007FE80000FFF00000FFE00001FFE00001FFC00003FFC00007FF800
    007FF80000FFF80001FFF00003FFF00002FFF000007FF000187FF000307FF000
    783FF001FF3FF803FFFFF80FFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = -10
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Taux
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      210
      2794
      210
      2159
      35
      35
      50)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 13
      Top = 79
      Width = 385
      Height = 128
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        338.666666666667
        1018.64583333333)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 23
        Top = 24
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          60.8541666666667
          63.5
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tcad
        DataField = 'Raz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 23
        Top = 36
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          60.8541666666667
          95.25
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tcad
        DataField = 'Nex'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 23
        Top = 49
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          60.8541666666667
          129.645833333333
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tcad
        DataField = 'Cex'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 23
        Top = 64
        Width = 19
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          60.8541666666667
          169.333333333333
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tcad
        DataField = 'End'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 23
        Top = 76
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          60.8541666666667
          201.083333333333
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tcad
        DataField = 'Mcp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 23
        Top = 92
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          60.8541666666667
          243.416666666667
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tcad
        DataField = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText6Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object Taux: TTable
    DatabaseName = 'FIESP'
    TableName = 'Ttemp.db'
    Left = 164
    Top = 212
    object TauxRaz: TStringField
      FieldName = 'Raz'
      Size = 60
    end
    object TauxCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 14
    end
  end
  object DataSource1: TDataSource
    DataSet = Taux
    Left = 204
    Top = 212
  end
  object Tcad: TTable
    DatabaseName = 'FIESP'
    IndexName = 'RazCnpj'
    MasterFields = 'Raz;Cnpj'
    MasterSource = DataSource1
    TableName = 'FIESPDB.db'
    Left = 248
    Top = 216
    object TcadCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 14
    end
    object TcadRaz: TStringField
      FieldName = 'Raz'
      Size = 60
    end
    object TcadEnd: TStringField
      FieldName = 'End'
      Size = 50
    end
    object TcadCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object TcadMcp: TStringField
      FieldName = 'Mcp'
      Size = 30
    end
    object TcadEst: TStringField
      FieldName = 'Est'
      Size = 2
    end
    object TcadFon: TStringField
      FieldName = 'Fon'
      Size = 30
    end
    object TcadFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object TcadRam: TStringField
      FieldName = 'Ram'
      Size = 50
    end
    object TcadRam_cod: TStringField
      FieldName = 'Ram_cod'
      Size = 5
    end
    object TcadTam: TStringField
      FieldName = 'Tam'
      Size = 15
    end
    object TcadNex: TStringField
      FieldName = 'Nex'
      Size = 50
    end
    object TcadCex: TStringField
      FieldName = 'Cex'
      Size = 30
    end
    object TcadEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object TcadHomepage: TStringField
      FieldName = 'Homepage'
      Size = 50
    end
    object TcadRegadm: TStringField
      FieldName = 'Regadm'
      Size = 50
    end
    object TcadImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
  end
end
