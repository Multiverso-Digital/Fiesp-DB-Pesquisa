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
    Left = 228
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 36
    Top = 176
    Width = 485
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object AT: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Programas do Bel' +
      'i\Vitor\BancoAtual\Produto.xls;Extended Properties="Excel 8.0;";' +
      'Persist Security Info=False'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'CNAE5$'
    Left = 148
    Top = 48
    object ATCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 255
    end
    object ATDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = AT
    Left = 240
    Top = 28
  end
  object Tr: TTable
    DatabaseName = 'FIESP'
    TableName = 'Tprod.db'
    Left = 92
    Top = 100
    object TrCodprod: TStringField
      FieldName = 'Codprod'
      Size = 5
    end
    object TrDescprod: TMemoField
      FieldName = 'Descprod'
      BlobType = ftMemo
      Size = 200
    end
  end
end
