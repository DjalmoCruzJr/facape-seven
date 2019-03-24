object FES_: TFES_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Estados'
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
  OnShow = FormShow
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
      DataSource = DMSEVEN_.DSES
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 153
    Width = 964
    Height = 424
    Align = alClient
    DataSource = DMSEVEN_.DSES
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
    Height = 104
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEDESCUF
    end
    object Label2: TLabel
      Left = 64
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEDESCDESC
    end
    object DBEDESCUF: TDBEdit
      Left = 16
      Top = 40
      Width = 41
      Height = 21
      DataField = 'ESCUF'
      DataSource = DMSEVEN_.DSES
      TabOrder = 0
    end
    object DBEDESCDESC: TDBEdit
      Left = 64
      Top = 40
      Width = 297
      Height = 21
      DataField = 'ESCDESC'
      DataSource = DMSEVEN_.DSES
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 372
      Top = 21
      Width = 485
      Height = 52
      Caption = 'Selecione o Indice e Informe a refer'#234'ncia da pesquisa'
      TabOrder = 2
      object EDPESQUISA: TEdit
        Left = 144
        Top = 19
        Width = 249
        Height = 21
        TabOrder = 1
      end
      object CBINDICES: TComboBox
        Left = 8
        Top = 19
        Width = 129
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'CBINDICES'
        OnChange = CBINDICESChange
      end
      object BTPESQUISAR: TButton
        Left = 401
        Top = 18
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = BTPESQUISARClick
      end
    end
  end
end
