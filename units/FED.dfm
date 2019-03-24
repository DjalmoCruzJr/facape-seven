object FED_: TFED_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Endere'#231'os'
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
      DataSource = DMSEVEN_.DSED
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 345
    Width = 964
    Height = 232
    Align = alClient
    DataSource = DMSEVEN_.DSED
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 296
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Cod. Entidade'
      FocusControl = DBEDEDNCGEN
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDEDNCODG
    end
    object Label3: TLabel
      Left = 96
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEDEDCDESC
    end
    object Label4: TLabel
      Left = 424
      Top = 64
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEDEDCCEP
    end
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEDEDCNUM
    end
    object Label6: TLabel
      Left = 96
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBEDEDCOBS
    end
    object Label7: TLabel
      Left = 16
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBMEEDMOBS
    end
    object DBEDEDNCGEN: TDBEdit
      Left = 16
      Top = 40
      Width = 73
      Height = 21
      DataField = 'EDNCGEN'
      DataSource = DMSEVEN_.DSED
      TabOrder = 0
    end
    object DBEDEDNCODG: TDBEdit
      Left = 16
      Top = 80
      Width = 73
      Height = 21
      DataField = 'EDNCODG'
      DataSource = DMSEVEN_.DSED
      TabOrder = 2
    end
    object DBEDEDCDESC: TDBEdit
      Left = 96
      Top = 80
      Width = 321
      Height = 21
      DataField = 'EDCDESC'
      DataSource = DMSEVEN_.DSED
      TabOrder = 3
    end
    object DBEDEDCCEP: TDBEdit
      Left = 424
      Top = 80
      Width = 73
      Height = 21
      DataField = 'EDCCEP'
      DataSource = DMSEVEN_.DSED
      MaxLength = 9
      TabOrder = 4
    end
    object DBEDEDCNUM: TDBEdit
      Left = 16
      Top = 120
      Width = 73
      Height = 21
      DataField = 'EDCNUMR'
      DataSource = DMSEVEN_.DSED
      TabOrder = 5
    end
    object DBEDEDCOBS: TDBEdit
      Left = 96
      Top = 120
      Width = 401
      Height = 21
      DataField = 'EDCOBS'
      DataSource = DMSEVEN_.DSED
      TabOrder = 6
    end
    object DBMEEDMOBS: TDBMemo
      Left = 16
      Top = 160
      Width = 481
      Height = 113
      DataField = 'EDMOBS'
      DataSource = DMSEVEN_.DSED
      TabOrder = 7
    end
    object DBLCEDCDCEN: TDBLookupComboBox
      Left = 96
      Top = 40
      Width = 401
      Height = 21
      KeyField = 'ENNCODG'
      ListField = 'ENCDESC'
      ListSource = DMSEVEN_.DSEN
      TabOrder = 1
    end
  end
end
