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
  object Button1: TButton
    Left = 200
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Tcad: TTable
    DatabaseName = 'FIESP'
    TableName = 'FIESPDB.db'
    Left = 64
    Top = 48
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
  end
  object Tbusca: TTable
    DatabaseName = 'FIESP'
    TableName = 'Tbusca.db'
    Left = 172
    Top = 44
    object TbuscaCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 14
    end
    object TbuscaTexto: TMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
      Size = 200
    end
  end
  object Tprod: TTable
    DatabaseName = 'FIESP'
    TableName = 'Tprod.db'
    Left = 68
    Top = 100
    object TprodCodprod: TStringField
      FieldName = 'Codprod'
      Size = 5
    end
    object TprodDescprod: TMemoField
      FieldName = 'Descprod'
      BlobType = ftMemo
      Size = 200
    end
  end
end
