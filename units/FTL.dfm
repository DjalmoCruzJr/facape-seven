object FTL_: TFTL_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Tipos de Lograrouros'
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
      DataSource = DMSEVEN_.DSTL
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 137
    Width = 964
    Height = 440
    Align = alClient
    DataSource = DMSEVEN_.DSTL
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
    Height = 88
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDTLNCODG
    end
    object Label2: TLabel
      Left = 64
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Tipo Logradouro'
      FocusControl = DBEdit2
    end
    object DBEDTLNCODG: TDBEdit
      Left = 8
      Top = 40
      Width = 49
      Height = 21
      DataField = 'TLNCODG'
      DataSource = DMSEVEN_.DSTL
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 40
      Width = 394
      Height = 21
      DataField = 'TLCDESC'
      DataSource = DMSEVEN_.DSTL
      TabOrder = 1
    end
  end
end
