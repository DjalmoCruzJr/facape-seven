object FEM_: TFEM_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de E-mails'
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
      DataSource = DMSEVEN_.DSEM
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 185
    Width = 964
    Height = 392
    Align = alClient
    DataSource = DMSEVEN_.DSEM
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
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
    Height = 136
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Cod. Entidade'
      FocusControl = DBEDEMNCGEN
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDEMNCODG
    end
    object Label3: TLabel
      Left = 104
      Top = 64
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEDEMCDESC
    end
    object DBEDEMNCGEN: TDBEdit
      Left = 16
      Top = 40
      Width = 81
      Height = 21
      DataField = 'EMNCGEN'
      DataSource = DMSEVEN_.DSEM
      TabOrder = 0
    end
    object DBEDEMNCODG: TDBEdit
      Left = 16
      Top = 80
      Width = 81
      Height = 21
      DataField = 'EMNCODG'
      DataSource = DMSEVEN_.DSEM
      TabOrder = 2
    end
    object DBEDEMCDESC: TDBEdit
      Left = 104
      Top = 80
      Width = 449
      Height = 21
      DataField = 'EMCDESC'
      DataSource = DMSEVEN_.DSEM
      TabOrder = 3
    end
    object DBLCEMCDCEN: TDBLookupComboBox
      Left = 104
      Top = 40
      Width = 449
      Height = 21
      KeyField = 'ENNCODG'
      ListField = 'ENCDESC'
      ListSource = DMSEVEN_.DSEN
      TabOrder = 1
    end
  end
end
