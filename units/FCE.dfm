object FCE_: TFCE_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Classifica'#231#245'es de Estoque'
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
      DataSource = DMSEVEN_.DSCE
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 177
    Width = 964
    Height = 400
    Align = alClient
    DataSource = DMSEVEN_.DSCE
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
    Height = 128
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Cod. Tipo Estoq.'
      FocusControl = DBEDCENCGTE
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDCENCODG
    end
    object Label3: TLabel
      Left = 104
      Top = 64
      Width = 62
      Height = 13
      Caption = 'Classifica'#231#227'o'
      FocusControl = DBEDCECDESC
    end
    object Label4: TLabel
      Left = 104
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Tipo de Estoque'
      FocusControl = DBEDCECDESC
    end
    object DBEDCENCGTE: TDBEdit
      Left = 16
      Top = 40
      Width = 81
      Height = 21
      DataField = 'CENCGTE'
      DataSource = DMSEVEN_.DSCE
      TabOrder = 0
    end
    object DBEDCENCODG: TDBEdit
      Left = 16
      Top = 80
      Width = 81
      Height = 21
      DataField = 'CENCODG'
      DataSource = DMSEVEN_.DSCE
      TabOrder = 2
    end
    object DBEDCECDESC: TDBEdit
      Left = 104
      Top = 80
      Width = 394
      Height = 21
      DataField = 'CECDESC'
      DataSource = DMSEVEN_.DSCE
      TabOrder = 3
    end
    object DBLCCECDCTE: TDBLookupComboBox
      Left = 104
      Top = 40
      Width = 393
      Height = 21
      KeyField = 'TENCODG'
      ListField = 'TECDESC'
      ListSource = DMSEVEN_.DSTE
      TabOrder = 1
    end
  end
end
