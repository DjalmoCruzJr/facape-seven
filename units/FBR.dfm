object FBR_: TFBR_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Bairros'
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
      DataSource = DMSEVEN_.DSBR
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 217
    Width = 964
    Height = 360
    Align = alClient
    DataSource = DMSEVEN_.DSBR
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BRNCODG'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRCDESC'
        Width = 252
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRNCGCD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRCUF'
        Width = 30
        Visible = True
      end>
  end
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 168
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEDBRNCGES
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 58
      Height = 13
      Caption = 'Cod. Cidade'
      FocusControl = DBEDBRNCGCD
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDBRNCODG
    end
    object Label4: TLabel
      Left = 88
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEDBRCDESC
    end
    object Label5: TLabel
      Left = 88
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEDBRCDESC
    end
    object Label6: TLabel
      Left = 88
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEDBRCDESC
    end
    object DBEDBRNCGES: TDBEdit
      Left = 16
      Top = 40
      Width = 65
      Height = 21
      DataField = 'BRCUF'
      DataSource = DMSEVEN_.DSBR
      TabOrder = 0
    end
    object DBEDBRNCGCD: TDBEdit
      Left = 16
      Top = 80
      Width = 65
      Height = 21
      DataField = 'BRNCGCD'
      DataSource = DMSEVEN_.DSBR
      TabOrder = 1
    end
    object DBEDBRNCODG: TDBEdit
      Left = 16
      Top = 120
      Width = 65
      Height = 21
      DataField = 'BRNCODG'
      DataSource = DMSEVEN_.DSBR
      TabOrder = 2
    end
    object DBEDBRCDESC: TDBEdit
      Left = 88
      Top = 120
      Width = 473
      Height = 21
      DataField = 'BRCDESC'
      DataSource = DMSEVEN_.DSBR
      TabOrder = 3
    end
    object DBLCBRCDCES: TDBLookupComboBox
      Left = 88
      Top = 40
      Width = 473
      Height = 21
      KeyField = 'ESCUF'
      ListField = 'ESCDESC'
      ListSource = DMSEVEN_.DSES
      TabOrder = 4
    end
    object DBLCBRCDCCD: TDBLookupComboBox
      Left = 88
      Top = 80
      Width = 473
      Height = 21
      KeyField = 'CDNCODG'
      ListField = 'CDCDESC'
      ListSource = DMSEVEN_.DSCD
      TabOrder = 5
    end
  end
end
