object FPE_: TFPE_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Produtos do Estoque'
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
      DataSource = DMSEVEN_.DSPE
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGTP: TDBGrid
    Left = 0
    Top = 305
    Width = 964
    Height = 272
    Align = alClient
    DataSource = DMSEVEN_.DSPE
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
    Height = 256
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Cod. Tipo Estoq.'
      FocusControl = DBEDPENCGTE
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 58
      Height = 13
      Caption = 'Cod. Classif.'
      FocusControl = DBEDPENCGCE
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 88
      Height = 13
      Caption = 'Cod. Nome Gen'#233'r.'
      FocusControl = DBEDPENCGNE
    end
    object Label4: TLabel
      Left = 16
      Top = 144
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDPENCODG
    end
    object Label5: TLabel
      Left = 120
      Top = 144
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEDPECDESC
    end
    object Label6: TLabel
      Left = 120
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Tipo de Estoque'
      FocusControl = DBEDPENCGTE
    end
    object Label7: TLabel
      Left = 120
      Top = 64
      Width = 62
      Height = 13
      Caption = 'Classifica'#231#227'o'
      FocusControl = DBEDPENCGTE
    end
    object Label8: TLabel
      Left = 120
      Top = 104
      Width = 74
      Height = 13
      Caption = 'Nome Gen'#233'rico'
      FocusControl = DBEDPENCGTE
    end
    object DBEDPENCGTE: TDBEdit
      Left = 16
      Top = 40
      Width = 97
      Height = 21
      DataField = 'PENCGTE'
      DataSource = DMSEVEN_.DSPE
      TabOrder = 0
    end
    object DBEDPENCGCE: TDBEdit
      Left = 16
      Top = 80
      Width = 97
      Height = 21
      DataField = 'PENCGCE'
      DataSource = DMSEVEN_.DSPE
      TabOrder = 2
    end
    object DBEDPENCGNE: TDBEdit
      Left = 16
      Top = 120
      Width = 97
      Height = 21
      DataField = 'PECCGNE'
      DataSource = DMSEVEN_.DSPE
      TabOrder = 4
    end
    object DBEDPENCODG: TDBEdit
      Left = 16
      Top = 160
      Width = 97
      Height = 21
      DataField = 'PENCODG'
      DataSource = DMSEVEN_.DSPE
      TabOrder = 6
    end
    object DBEDPECDESC: TDBEdit
      Left = 120
      Top = 160
      Width = 394
      Height = 21
      DataField = 'PENCDESC'
      DataSource = DMSEVEN_.DSPE
      TabOrder = 7
    end
    object DBRGPECTIPO: TDBRadioGroup
      Left = 16
      Top = 184
      Width = 497
      Height = 49
      Caption = 'Tipo'
      Columns = 2
      DataField = 'PENCTIPO'
      DataSource = DMSEVEN_.DSPE
      Items.Strings = (
        '&Produto'
        '&Servi'#231'o')
      TabOrder = 8
      Values.Strings = (
        'P'
        'S')
    end
    object DBEDPECDCTE: TDBLookupComboBox
      Left = 120
      Top = 40
      Width = 393
      Height = 21
      KeyField = 'TENCODG'
      ListField = 'TECDESC'
      ListSource = DMSEVEN_.DSTE
      TabOrder = 1
    end
    object DBLCNECDCCE: TDBLookupComboBox
      Left = 120
      Top = 80
      Width = 393
      Height = 21
      KeyField = 'CENCODG'
      ListField = 'CECDESC'
      ListSource = DMSEVEN_.DSCE
      TabOrder = 3
    end
    object DBLCPECDCNE: TDBLookupComboBox
      Left = 120
      Top = 120
      Width = 393
      Height = 21
      KeyField = 'NENCODG'
      ListField = 'NECDESC'
      ListSource = DMSEVEN_.DSNE
      TabOrder = 5
    end
  end
end
