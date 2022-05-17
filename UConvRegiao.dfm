object Form1: TForm1
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 76
    Width = 501
    Height = 225
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 316
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object AD: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Programas do Bel' +
      'i\Vitor\BancoAtual\Rga_Muns_SP.xls;Extended Properties="Excel 8.' +
      '0;";Persist Security Info=False'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'Rga_Mun_por_Est$'
    Left = 156
    Top = 4
    object ADNGA: TWideStringField
      FieldName = 'NGA'
      Size = 255
    end
    object ADMCP: TWideStringField
      FieldName = 'MCP'
      Size = 255
    end
    object ADEST: TWideStringField
      FieldName = 'EST'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = AD
    Left = 108
    Top = 8
  end
  object TR: TTable
    DatabaseName = 'FIESP'
    TableName = 'Tregiao.db'
    Left = 240
    Top = 16
    object TRMCP: TStringField
      FieldName = 'MCP'
      Size = 50
    end
    object TRRegiao: TStringField
      FieldName = 'Regiao'
      Size = 50
    end
  end
  object Tcad: TTable
    DatabaseName = 'FIESP'
    TableName = 'FIESPDB.db'
    Left = 280
    Top = 16
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
