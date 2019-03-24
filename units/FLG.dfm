object FLG_: TFLG_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Logradouros'
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
      DataSource = DMSEVEN_.DSLG
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 297
    Width = 964
    Height = 280
    Align = alClient
    DataSource = DMSEVEN_.DSLG
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
        FieldName = 'LGCCEP'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LGCDESC'
        Width = 312
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LGNCGTL'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LGCDCTL'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LGNCGBR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LGNCGCD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LGCUF'
        Width = 34
        Visible = True
      end>
  end
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 248
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 184
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEDLGCCEP
    end
    object Label2: TLabel
      Left = 88
      Top = 184
      Width = 54
      Height = 13
      Caption = 'Logradouro'
      FocusControl = DBLCLGCDESC
    end
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEDLGNCGES
    end
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 58
      Height = 13
      Caption = 'Cod. Cidade'
      FocusControl = DBEDLGNCGCD
    end
    object Label5: TLabel
      Left = 8
      Top = 104
      Width = 52
      Height = 13
      Caption = 'Cod. Bairro'
      FocusControl = DBEDLGNCGBR
    end
    object Label6: TLabel
      Left = 8
      Top = 144
      Width = 73
      Height = 13
      Caption = 'Cod. Tipo Logr.'
      FocusControl = DBEDLGNCGTL
    end
    object Label7: TLabel
      Left = 88
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEDLGNCGES
    end
    object Label8: TLabel
      Left = 88
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEDLGNCGES
    end
    object Label9: TLabel
      Left = 88
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEDLGNCGES
    end
    object Label10: TLabel
      Left = 88
      Top = 144
      Width = 93
      Height = 13
      Caption = 'Tipo de Logradouro'
      FocusControl = DBLCLGCDCTL
    end
    object DBEDLGCCEP: TDBEdit
      Left = 8
      Top = 200
      Width = 73
      Height = 21
      DataField = 'LGCCEP'
      DataSource = DMSEVEN_.DSLG
      MaxLength = 9
      TabOrder = 8
    end
    object DBLCLGCDESC: TDBEdit
      Left = 88
      Top = 200
      Width = 481
      Height = 21
      DataField = 'LGCDESC'
      DataSource = DMSEVEN_.DSLG
      TabOrder = 9
    end
    object DBEDLGNCGES: TDBEdit
      Left = 8
      Top = 40
      Width = 73
      Height = 21
      DataField = 'LGCUF'
      DataSource = DMSEVEN_.DSLG
      TabOrder = 0
    end
    object DBEDLGNCGCD: TDBEdit
      Left = 8
      Top = 80
      Width = 73
      Height = 21
      DataField = 'LGNCGCD'
      DataSource = DMSEVEN_.DSLG
      TabOrder = 2
    end
    object DBEDLGNCGBR: TDBEdit
      Left = 8
      Top = 120
      Width = 73
      Height = 21
      DataField = 'LGNCGBR'
      DataSource = DMSEVEN_.DSLG
      TabOrder = 4
    end
    object DBEDLGNCGTL: TDBEdit
      Left = 8
      Top = 160
      Width = 73
      Height = 21
      DataField = 'LGNCGTL'
      DataSource = DMSEVEN_.DSLG
      TabOrder = 6
    end
    object DBLCLGCDCES: TDBLookupComboBox
      Left = 88
      Top = 40
      Width = 481
      Height = 21
      KeyField = 'ESCUF'
      ListField = 'ESCDESC'
      ListSource = DMSEVEN_.DSES
      TabOrder = 1
    end
    object DBLCLGCDCCD: TDBLookupComboBox
      Left = 88
      Top = 80
      Width = 481
      Height = 21
      KeyField = 'CDNCODG'
      ListField = 'CDCDESC'
      ListSource = DMSEVEN_.DSCD
      TabOrder = 3
    end
    object DBLCLGCDCBR: TDBLookupComboBox
      Left = 88
      Top = 120
      Width = 481
      Height = 21
      KeyField = 'BRNCODG'
      ListField = 'BRCDESC'
      ListSource = DMSEVEN_.DSBR
      TabOrder = 5
    end
    object DBLCLGCDCTL: TDBLookupComboBox
      Left = 88
      Top = 160
      Width = 481
      Height = 21
      DataField = 'LGCDCTL'
      DataSource = DMSEVEN_.DSLG
      TabOrder = 7
    end
  end
end
