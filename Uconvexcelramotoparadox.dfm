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
      'i\Vitor\BancoAtual\Ramo_Atividade.xls;Extended Properties="Excel' +
      ' 8.0;";Persist Security Info=False'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'Tabela___Atividades$'
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
    TableName = 'Tramo.db'
    Left = 92
    Top = 100
    object TrCodIni: TStringField
      FieldName = 'CodIni'
      Size = 5
    end
    object TrCodFim: TStringField
      FieldName = 'CodFim'
      Size = 5
    end
    object TrDescramo: TStringField
      FieldName = 'Descramo'
      Size = 50
    end
  end
end
