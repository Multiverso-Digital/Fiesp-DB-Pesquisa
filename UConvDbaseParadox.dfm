object Form1: TForm1
  Left = 165
  Top = 111
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
  object Button1: TButton
    Left = 216
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Te: TTable
    DatabaseName = 'FIESP'
    TableName = 'BancoPrincipal'
    TableType = ttDBase
    Left = 184
    Top = 92
    object TeCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object TeRAZ: TStringField
      FieldName = 'RAZ'
      Size = 60
    end
    object TeEND: TStringField
      FieldName = 'END'
      Size = 50
    end
    object TeCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object TeMCP: TStringField
      FieldName = 'MCP'
      Size = 30
    end
    object TeEST: TStringField
      FieldName = 'EST'
      Size = 2
    end
    object TeFON: TStringField
      FieldName = 'FON'
      Size = 30
    end
    object TeFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object TeRAM: TStringField
      FieldName = 'RAM'
      Size = 50
    end
    object TeRAMO_COD: TStringField
      FieldName = 'RAMO_COD'
      Size = 5
    end
    object TeTAM: TStringField
      FieldName = 'TAM'
      Size = 15
    end
    object TeNEX: TStringField
      FieldName = 'NEX'
      Size = 50
    end
    object TeCEX: TStringField
      FieldName = 'CEX'
      Size = 30
    end
    object TeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TeHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
  end
  object TS: TTable
    DatabaseName = 'FIESP'
    IndexFieldNames = 'Cnpj'
    TableName = 'FIESPDB.db'
    TableType = ttParadox
    Left = 236
    Top = 92
    object TSCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 14
    end
    object TSRaz: TStringField
      FieldName = 'Raz'
      Size = 60
    end
    object TSEnd: TStringField
      FieldName = 'End'
      Size = 50
    end
    object TSCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object TSMcp: TStringField
      FieldName = 'Mcp'
      Size = 30
    end
    object TSEst: TStringField
      FieldName = 'Est'
      Size = 2
    end
    object TSFon: TStringField
      FieldName = 'Fon'
      Size = 30
    end
    object TSFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object TSRam: TStringField
      FieldName = 'Ram'
      Size = 50
    end
    object TSRam_cod: TStringField
      FieldName = 'Ram_cod'
      Size = 5
    end
    object TSTam: TStringField
      FieldName = 'Tam'
      Size = 15
    end
    object TSNex: TStringField
      FieldName = 'Nex'
      Size = 50
    end
    object TSCex: TStringField
      FieldName = 'Cex'
      Size = 30
    end
    object TSEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object TSHomepage: TStringField
      FieldName = 'Homepage'
      Size = 50
    end
    object TSRegadm: TStringField
      FieldName = 'Regadm'
      Size = 50
    end
    object TSImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
  end
end
