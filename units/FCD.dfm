object FCD_: TFCD_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Cidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PNCONTROLES: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 49
    Align = alTop
    TabOrder = 0
    object DBNAVIGATOR: TDBNavigator
      Left = 1
      Top = 1
      Width = 560
      Height = 47
      DataSource = DMSEVEN_.DSCD
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 169
    Width = 964
    Height = 408
    Align = alClient
    DataSource = DMSEVEN_.DSCD
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CDNCODG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDCDESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDCUF'
        Visible = True
      end>
  end
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 120
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEDCDNCGES
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDCDNCODG
    end
    object Label3: TLabel
      Left = 72
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEDCDCDESC
    end
    object Label4: TLabel
      Left = 72
      Top = 24
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEDCDNCGES
    end
    object DBEDCDNCGES: TDBEdit
      Left = 16
      Top = 40
      Width = 49
      Height = 21
      DataField = 'CDCUF'
      DataSource = DMSEVEN_.DSCD
      TabOrder = 0
    end
    object DBEDCDNCODG: TDBEdit
      Left = 16
      Top = 80
      Width = 49
      Height = 21
      DataField = 'CDNCODG'
      DataSource = DMSEVEN_.DSCD
      TabOrder = 2
    end
    object DBEDCDCDESC: TDBEdit
      Left = 72
      Top = 80
      Width = 345
      Height = 21
      DataField = 'CDCDESC'
      DataSource = DMSEVEN_.DSCD
      TabOrder = 3
    end
    object DBLCCDCDCES: TDBLookupComboBox
      Left = 72
      Top = 40
      Width = 345
      Height = 21
      KeyField = 'ESCUF'
      ListField = 'ESCDESC'
      ListSource = DMSEVEN_.DSES
      TabOrder = 1
    end
  end
end
