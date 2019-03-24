object FTT_: TFTT_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Temas por Tipo de Evento'
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
      DataSource = DMSEVEN_.DSTT
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
    DataSource = DMSEVEN_.DSTT
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
        FieldName = 'TTNCGTV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTCDCTV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTNCGTM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTCDCTM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTNMIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTNMAX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTDCADT'
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
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 65
      Height = 13
      Caption = 'Cod. Tipo Ev.'
      FocusControl = DBEDTTNCGTV
    end
    object Label2: TLabel
      Left = 104
      Top = 24
      Width = 73
      Height = 13
      Caption = 'Tipo de Evento'
      FocusControl = DBLCTTNDCTV
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 52
      Height = 13
      Caption = 'Cod. Tema'
      FocusControl = DBEDTTNCGTM
    end
    object Label4: TLabel
      Left = 104
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Tema'
      FocusControl = DBLCTTCDCTM
    end
    object Label5: TLabel
      Left = 104
      Top = 104
      Width = 65
      Height = 13
      Caption = 'Idade M'#237'nima'
      FocusControl = DBEDTTNMIN
    end
    object Label6: TLabel
      Left = 288
      Top = 104
      Width = 66
      Height = 13
      Caption = 'Idade M'#225'xima'
      FocusControl = DBEDTTNMAX
    end
    object Label7: TLabel
      Left = 16
      Top = 104
      Width = 59
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEDTTDCADT
    end
    object DBEDTTNCGTV: TDBEdit
      Left = 16
      Top = 40
      Width = 81
      Height = 21
      DataField = 'TTNCGTV'
      DataSource = DMSEVEN_.DSTT
      TabOrder = 0
    end
    object DBLCTTNDCTV: TDBLookupComboBox
      Left = 104
      Top = 40
      Width = 388
      Height = 21
      DataField = 'TTCDCTV'
      DataSource = DMSEVEN_.DSTT
      TabOrder = 1
    end
    object DBEDTTNCGTM: TDBEdit
      Left = 16
      Top = 80
      Width = 81
      Height = 21
      DataField = 'TTNCGTM'
      DataSource = DMSEVEN_.DSTT
      TabOrder = 2
    end
    object DBLCTTCDCTM: TDBLookupComboBox
      Left = 104
      Top = 80
      Width = 388
      Height = 21
      DataField = 'TTCDCTM'
      DataSource = DMSEVEN_.DSTT
      TabOrder = 3
    end
    object DBEDTTNMIN: TDBEdit
      Left = 104
      Top = 120
      Width = 177
      Height = 21
      DataField = 'TTNMIN'
      DataSource = DMSEVEN_.DSTT
      TabOrder = 5
    end
    object DBEDTTNMAX: TDBEdit
      Left = 288
      Top = 120
      Width = 201
      Height = 21
      DataField = 'TTNMAX'
      DataSource = DMSEVEN_.DSTT
      TabOrder = 6
    end
    object DBEDTTDCADT: TDBEdit
      Left = 16
      Top = 120
      Width = 81
      Height = 21
      DataField = 'TTDCADT'
      DataSource = DMSEVEN_.DSTT
      MaxLength = 10
      TabOrder = 4
    end
  end
end
