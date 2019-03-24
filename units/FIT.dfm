object FIT_: TFIT_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Itens do Pacote'
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
      DataSource = DMSEVEN_.DSIT
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 369
    Width = 964
    Height = 208
    Align = alClient
    DataSource = DMSEVEN_.DSIT
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
    Height = 320
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Cod. Tema'
      FocusControl = DBEDITNCGTM
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Cod. Pacote'
      FocusControl = DBEDITNCGTP
    end
    object Label3: TLabel
      Left = 16
      Top = 264
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDITNCODG
    end
    object Label4: TLabel
      Left = 16
      Top = 104
      Width = 79
      Height = 13
      Caption = 'Cod. Tipo Estoq.'
      FocusControl = DBEDITNCGTE
    end
    object Label5: TLabel
      Left = 16
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Cod. Classif.'
      FocusControl = DBEDITNCGCE
    end
    object Label6: TLabel
      Left = 16
      Top = 184
      Width = 88
      Height = 13
      Caption = 'Cod. Nome Gen'#233'r.'
      FocusControl = DBEDITNCGNE
    end
    object Label7: TLabel
      Left = 16
      Top = 224
      Width = 62
      Height = 13
      Caption = 'Cod. Produto'
      FocusControl = DBEDITNCGPE
    end
    object Label8: TLabel
      Left = 264
      Top = 264
      Width = 27
      Height = 13
      Caption = 'Custo'
      FocusControl = DBEDITYCUST
    end
    object Label9: TLabel
      Left = 417
      Top = 264
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEDITYVALR
    end
    object Label10: TLabel
      Left = 112
      Top = 264
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEDITNQTD
    end
    object Label11: TLabel
      Left = 112
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Tema'
      FocusControl = DBEDITNCGTM
    end
    object Label12: TLabel
      Left = 112
      Top = 64
      Width = 34
      Height = 13
      Caption = 'Pacote'
      FocusControl = DBEDITNCGTM
    end
    object Label14: TLabel
      Left = 112
      Top = 104
      Width = 78
      Height = 13
      Caption = 'Tipo de Estoque'
      FocusControl = DBEDITNCGTM
    end
    object Label15: TLabel
      Left = 112
      Top = 144
      Width = 62
      Height = 13
      Caption = 'Classifica'#231#227'o'
      FocusControl = DBEDITNCGTM
    end
    object Label16: TLabel
      Left = 112
      Top = 184
      Width = 74
      Height = 13
      Caption = 'Nome Gen'#233'rico'
      FocusControl = DBEDITNCGTM
    end
    object Label17: TLabel
      Left = 112
      Top = 224
      Width = 37
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEDITNCGTM
    end
    object DBEDITNCGTM: TDBEdit
      Left = 16
      Top = 40
      Width = 89
      Height = 21
      DataField = 'ITNCGTM'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 0
    end
    object DBEDITNCGTP: TDBEdit
      Left = 16
      Top = 80
      Width = 89
      Height = 21
      DataField = 'ITNCGTP'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 1
    end
    object DBEDITNCODG: TDBEdit
      Left = 16
      Top = 280
      Width = 89
      Height = 21
      DataField = 'ITNCODG'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 2
    end
    object DBEDITNCGTE: TDBEdit
      Left = 16
      Top = 120
      Width = 89
      Height = 21
      DataField = 'ITNCGTE'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 3
    end
    object DBEDITNCGCE: TDBEdit
      Left = 16
      Top = 160
      Width = 89
      Height = 21
      DataField = 'ITNCGCE'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 4
    end
    object DBEDITNCGNE: TDBEdit
      Left = 16
      Top = 200
      Width = 89
      Height = 21
      DataField = 'ITNCGNE'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 5
    end
    object DBEDITNCGPE: TDBEdit
      Left = 16
      Top = 240
      Width = 89
      Height = 21
      DataField = 'ITNCGPE'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 6
    end
    object DBEDITYCUST: TDBEdit
      Left = 262
      Top = 280
      Width = 145
      Height = 21
      DataField = 'ITYCUST'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 7
    end
    object DBEDITYVALR: TDBEdit
      Left = 413
      Top = 280
      Width = 145
      Height = 21
      DataField = 'ITYVALR'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 8
    end
    object DBEDITNQTD: TDBEdit
      Left = 112
      Top = 280
      Width = 145
      Height = 21
      DataField = 'ITNQTD'
      DataSource = DMSEVEN_.DSIT
      TabOrder = 9
    end
    object DBLCITCDCTM: TDBLookupComboBox
      Left = 112
      Top = 40
      Width = 449
      Height = 21
      KeyField = 'TMNCODG'
      ListField = 'TMCDESC'
      ListSource = DMSEVEN_.DSTM
      TabOrder = 10
    end
    object DBLCITCDCTP: TDBLookupComboBox
      Left = 112
      Top = 80
      Width = 449
      Height = 21
      KeyField = 'TPNCODG'
      ListField = 'TPCDESC'
      ListSource = DMSEVEN_.DSTP
      TabOrder = 11
    end
    object DBLCITCDCTE: TDBLookupComboBox
      Left = 112
      Top = 120
      Width = 449
      Height = 21
      KeyField = 'TENCODG'
      ListField = 'TECDESC'
      ListSource = DMSEVEN_.DSTE
      TabOrder = 12
    end
    object DBLCITCDCCE: TDBLookupComboBox
      Left = 112
      Top = 160
      Width = 449
      Height = 21
      KeyField = 'CENCODG'
      ListField = 'CECDESC'
      ListSource = DMSEVEN_.DSCE
      TabOrder = 13
    end
    object DBLCITCDCNE: TDBLookupComboBox
      Left = 112
      Top = 200
      Width = 449
      Height = 21
      KeyField = 'NENCODG'
      ListField = 'NECDESC'
      ListSource = DMSEVEN_.DSNE
      TabOrder = 14
    end
    object DBLCITCDCPE: TDBLookupComboBox
      Left = 112
      Top = 240
      Width = 449
      Height = 21
      KeyField = 'PENCODG'
      ListField = 'PENCDESC'
      ListSource = DMSEVEN_.DSPE
      TabOrder = 15
    end
  end
end
