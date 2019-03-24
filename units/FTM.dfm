object FTM_: TFTM_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Temas de Festas'
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
      DataSource = DMSEVEN_.DSTM
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 145
    Width = 964
    Height = 432
    Align = alClient
    DataSource = DMSEVEN_.DSTM
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
    Height = 96
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 72
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 568
      Top = 24
      Width = 59
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 664
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Dt. Canc.'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 49
      Height = 21
      DataField = 'TMNCODG'
      DataSource = DMSEVEN_.DSTM
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 40
      Width = 489
      Height = 21
      DataField = 'TMCDESC'
      DataSource = DMSEVEN_.DSTM
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 568
      Top = 40
      Width = 89
      Height = 21
      DataField = 'TMDCADT'
      DataSource = DMSEVEN_.DSTM
      MaxLength = 10
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 664
      Top = 40
      Width = 89
      Height = 21
      DataField = 'TMDCANC'
      DataSource = DMSEVEN_.DSTM
      MaxLength = 10
      TabOrder = 3
    end
  end
end
