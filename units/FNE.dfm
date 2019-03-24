object FNE_: TFNE_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Nomes Gen'#233'ricos de Estoque'
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
      DataSource = DMSEVEN_.DSNE
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
    DataSource = DMSEVEN_.DSNE
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
    Height = 168
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Cod. Tipo Estoq.'
      FocusControl = DBEDNENCGTE
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 58
      Height = 13
      Caption = 'Cod. Classif.'
      FocusControl = DBEDNENCGCE
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDNENCODG
    end
    object Label4: TLabel
      Left = 112
      Top = 104
      Width = 74
      Height = 13
      Caption = 'Nome Gen'#233'rico'
      FocusControl = DBEDNECDESC
    end
    object Label5: TLabel
      Left = 112
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Tipo de Estoque'
      FocusControl = DBEDNENCGTE
    end
    object Label6: TLabel
      Left = 112
      Top = 64
      Width = 62
      Height = 13
      Caption = 'Classifica'#231#227'o'
      FocusControl = DBEDNENCGTE
    end
    object DBEDNENCGTE: TDBEdit
      Left = 16
      Top = 40
      Width = 89
      Height = 21
      DataField = 'NENCGTE'
      DataSource = DMSEVEN_.DSNE
      TabOrder = 0
    end
    object DBEDNENCGCE: TDBEdit
      Left = 16
      Top = 80
      Width = 89
      Height = 21
      DataField = 'NENCGCE'
      DataSource = DMSEVEN_.DSNE
      TabOrder = 2
    end
    object DBEDNENCODG: TDBEdit
      Left = 16
      Top = 120
      Width = 89
      Height = 21
      DataField = 'NENCODG'
      DataSource = DMSEVEN_.DSNE
      TabOrder = 4
    end
    object DBEDNECDESC: TDBEdit
      Left = 112
      Top = 120
      Width = 441
      Height = 21
      DataField = 'NECDESC'
      DataSource = DMSEVEN_.DSNE
      TabOrder = 5
    end
    object DBLCNECDCTE: TDBLookupComboBox
      Left = 112
      Top = 40
      Width = 441
      Height = 21
      KeyField = 'TENCODG'
      ListField = 'TECDESC'
      ListSource = DMSEVEN_.DSTE
      TabOrder = 1
    end
    object DBLCNECDCCE: TDBLookupComboBox
      Left = 112
      Top = 80
      Width = 441
      Height = 21
      KeyField = 'CENCODG'
      ListField = 'CECDESC'
      ListSource = DMSEVEN_.DSCE
      TabOrder = 3
    end
  end
end
