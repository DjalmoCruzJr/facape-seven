object FTP_: TFTP_
  Left = 191
  Top = 117
  Width = 970
  Height = 608
  Caption = 'Cadastro de Pacotes de Festas'
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
    Width = 962
    Height = 49
    Align = alTop
    TabOrder = 0
    object DBNAVIGATOR: TDBNavigator
      Left = 1
      Top = 1
      Width = 560
      Height = 47
      DataSource = DMSEVEN_.DSTP
      Align = alLeft
      TabOrder = 0
    end
    object BTITENS: TButton
      Left = 561
      Top = 0
      Width = 56
      Height = 49
      Caption = 'Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BTITENSClick
    end
  end
  object DBGTP: TDBGrid
    Left = 0
    Top = 177
    Width = 962
    Height = 400
    Align = alClient
    DataSource = DMSEVEN_.DSTP
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
    Width = 962
    Height = 128
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Cod. Tema'
      FocusControl = DBEDTPNCGTM
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDTPNCODG
    end
    object Label3: TLabel
      Left = 80
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEDTPCDESC
    end
    object Label4: TLabel
      Left = 456
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEDTPYVALR
    end
    object Label5: TLabel
      Left = 80
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Cod. Tema'
      FocusControl = DBEDTPNCGTM
    end
    object DBEDTPNCGTM: TDBEdit
      Left = 16
      Top = 40
      Width = 57
      Height = 21
      DataField = 'TPNCGTM'
      DataSource = DMSEVEN_.DSTP
      TabOrder = 0
    end
    object DBEDTPNCODG: TDBEdit
      Left = 16
      Top = 80
      Width = 57
      Height = 21
      DataField = 'TPNCODG'
      DataSource = DMSEVEN_.DSTP
      TabOrder = 1
    end
    object DBEDTPCDESC: TDBEdit
      Left = 80
      Top = 80
      Width = 369
      Height = 21
      DataField = 'TPCDESC'
      DataSource = DMSEVEN_.DSTP
      TabOrder = 2
    end
    object DBEDTPYVALR: TDBEdit
      Left = 456
      Top = 80
      Width = 105
      Height = 21
      DataField = 'TPYVALR'
      DataSource = DMSEVEN_.DSTP
      TabOrder = 3
    end
    object DBLCTPCDCTM: TDBLookupComboBox
      Left = 80
      Top = 40
      Width = 481
      Height = 21
      KeyField = 'TMNCODG'
      ListField = 'TMCDESC'
      ListSource = DMSEVEN_.DSTM
      TabOrder = 4
    end
  end
end
