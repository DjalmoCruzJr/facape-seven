object FEN_: TFEN_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
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
    object DBNEN: TDBNavigator
      Left = 305
      Top = 1
      Width = 408
      Height = 47
      DataSource = DMSEVEN_.DSEN
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alLeft
      TabOrder = 0
      OnClick = DBNENClick
    end
    object DBNER: TDBNavigator
      Left = 1
      Top = 1
      Width = 304
      Height = 47
      DataSource = DMSEVEN_.DSER
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 1
    end
    object BTENDERECOS: TButton
      Left = 713
      Top = 0
      Width = 70
      Height = 49
      Caption = 'Endere'#231'os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BTENDERECOSClick
    end
    object BTCONTATOS: TButton
      Left = 783
      Top = 0
      Width = 64
      Height = 49
      Caption = 'Contatos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BTCONTATOSClick
    end
    object BTEMAILS: TButton
      Left = 847
      Top = 0
      Width = 65
      Height = 49
      Caption = 'E-mails'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BTEMAILSClick
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 385
    Width = 964
    Height = 192
    Align = alClient
    DataSource = DMSEVEN_.DSEN
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
    Height = 336
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDENNCODG
    end
    object Label2: TLabel
      Left = 120
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEDENCDESC
    end
    object Label3: TLabel
      Left = 608
      Top = 24
      Width = 21
      Height = 13
      Caption = 'Foto'
      FocusControl = DBIMENOFOTO
    end
    object Label10: TLabel
      Left = 16
      Top = 188
      Width = 59
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEDENDCADT
    end
    object Label11: TLabel
      Left = 16
      Top = 224
      Width = 59
      Height = 13
      Caption = 'Hr. Cadastro'
      FocusControl = DBEDENHCADT
    end
    object DBEDENNCODG: TDBEdit
      Left = 16
      Top = 40
      Width = 97
      Height = 21
      DataField = 'ENNCODG'
      DataSource = DMSEVEN_.DSEN
      TabOrder = 0
    end
    object DBEDENCDESC: TDBEdit
      Left = 120
      Top = 40
      Width = 481
      Height = 21
      DataField = 'ENCDESC'
      DataSource = DMSEVEN_.DSEN
      TabOrder = 1
    end
    object DBIMENOFOTO: TDBImage
      Left = 608
      Top = 40
      Width = 105
      Height = 105
      DataField = 'ENOFOTO'
      DataSource = DMSEVEN_.DSEN
      TabOrder = 3
    end
    object DBRGENCTIPO: TDBRadioGroup
      Left = 16
      Top = 64
      Width = 97
      Height = 121
      Caption = 'Tipo de Pessoa'
      DataField = 'ENCTIPO'
      DataSource = DMSEVEN_.DSEN
      Items.Strings = (
        '&F'#237'sica'
        '&Jur'#237'dica')
      TabOrder = 2
      Values.Strings = (
        'F'
        'J')
      OnChange = DBRGENCTIPOChange
    end
    object BTFOTO: TButton
      Left = 608
      Top = 152
      Width = 105
      Height = 33
      Caption = 'Carregar Foto'
      TabOrder = 4
      OnClick = BTFOTOClick
    end
    object PNJURIDICA: TPanel
      Left = 120
      Top = 64
      Width = 481
      Height = 121
      BevelOuter = bvNone
      TabOrder = 5
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEDENCCNPJ
      end
      object Label7: TLabel
        Left = 120
        Top = 0
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEDENCRZSC
      end
      object Label8: TLabel
        Left = 0
        Top = 40
        Width = 67
        Height = 13
        Caption = 'Insc. Estadual'
        FocusControl = DBEDENCIE
      end
      object Label9: TLabel
        Left = 120
        Top = 40
        Width = 71
        Height = 13
        Caption = 'Insc. Municipal'
        FocusControl = DBEDENCIM
      end
      object DBEDENCCNPJ: TDBEdit
        Left = 0
        Top = 16
        Width = 113
        Height = 21
        DataField = 'ENCCNPJ'
        DataSource = DMSEVEN_.DSEN
        MaxLength = 18
        TabOrder = 0
      end
      object DBEDENCRZSC: TDBEdit
        Left = 120
        Top = 16
        Width = 361
        Height = 21
        DataField = 'ENCRZSC'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 1
      end
      object DBEDENCIE: TDBEdit
        Left = 0
        Top = 56
        Width = 113
        Height = 21
        DataField = 'ENCIE'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 2
      end
      object DBEDENCIM: TDBEdit
        Left = 120
        Top = 56
        Width = 121
        Height = 21
        DataField = 'ENCIM'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 3
      end
    end
    object PNFISICA: TPanel
      Left = 120
      Top = 64
      Width = 481
      Height = 121
      BevelOuter = bvNone
      TabOrder = 6
      object Label4: TLabel
        Left = 120
        Top = 0
        Width = 35
        Height = 13
        Caption = 'Apelido'
        FocusControl = DBEDENCAPEL
      end
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEDENCCPF
      end
      object DBEDENCAPEL: TDBEdit
        Left = 120
        Top = 16
        Width = 361
        Height = 21
        DataField = 'ENCAPEL'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 1
      end
      object DBEDENCCPF: TDBEdit
        Left = 0
        Top = 16
        Width = 113
        Height = 21
        DataField = 'ENCCPF'
        DataSource = DMSEVEN_.DSEN
        MaxLength = 14
        TabOrder = 0
      end
      object DBRGENCSEXO: TDBRadioGroup
        Left = 0
        Top = 40
        Width = 113
        Height = 81
        Caption = 'Sexo'
        DataField = 'ENCSEXO'
        DataSource = DMSEVEN_.DSEN
        Items.Strings = (
          '&Masculino'
          '&Feminino')
        TabOrder = 2
        Values.Strings = (
          'M'
          'F')
      end
      object DBRGENCETCV: TDBRadioGroup
        Left = 120
        Top = 40
        Width = 361
        Height = 81
        Caption = 'Estado Civil'
        Columns = 2
        DataField = 'ENCETCV'
        DataSource = DMSEVEN_.DSEN
        Items.Strings = (
          '&Solteiro(a)'
          '&Casado(a)'
          '&Divorciado(a)'
          '&Vi'#250'vo(a)'
          '&Outro')
        TabOrder = 3
        Values.Strings = (
          'S'
          'C'
          'D'
          'V'
          'O')
      end
    end
    object DBEDENDCADT: TDBEdit
      Left = 16
      Top = 204
      Width = 97
      Height = 21
      DataField = 'ENDCADT'
      DataSource = DMSEVEN_.DSEN
      MaxLength = 10
      TabOrder = 7
    end
    object DBEDENHCADT: TDBEdit
      Left = 16
      Top = 240
      Width = 97
      Height = 21
      DataField = 'ENHCADT'
      DataSource = DMSEVEN_.DSEN
      MaxLength = 5
      TabOrder = 8
    end
    object PNDEPENDENTES: TPanel
      Left = 120
      Top = 192
      Width = 481
      Height = 121
      BevelOuter = bvNone
      TabOrder = 9
      object Label12: TLabel
        Left = 0
        Top = 0
        Width = 40
        Height = 13
        Caption = 'Cod. Pai'
        FocusControl = DBEDENNC2EN
      end
      object Label13: TLabel
        Left = 0
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Cod. M'#227'e'
        FocusControl = DBEDENNC3EN
      end
      object Label14: TLabel
        Left = 0
        Top = 80
        Width = 87
        Height = 13
        Caption = 'Cod. Respons'#225'vel'
        FocusControl = DBEDENNC4EN
      end
      object Label15: TLabel
        Left = 120
        Top = 0
        Width = 15
        Height = 13
        Caption = 'Pai'
      end
      object Label16: TLabel
        Left = 120
        Top = 40
        Width = 21
        Height = 13
        Caption = 'M'#227'e'
      end
      object Label17: TLabel
        Left = 120
        Top = 80
        Width = 62
        Height = 13
        Caption = 'Respons'#225'vel'
      end
      object DBEDENNC2EN: TDBEdit
        Left = 0
        Top = 16
        Width = 113
        Height = 21
        DataField = 'ENNC2EN'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 2
      end
      object DBEDENNC3EN: TDBEdit
        Left = 0
        Top = 56
        Width = 113
        Height = 21
        DataField = 'ENNC3EN'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 0
      end
      object DBEDENNC4EN: TDBEdit
        Left = 0
        Top = 96
        Width = 113
        Height = 21
        DataField = 'ENNC4EN'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 120
        Top = 16
        Width = 361
        Height = 21
        DataField = 'ENCDC2EN'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 120
        Top = 56
        Width = 361
        Height = 21
        DataField = 'ENCDC3EN'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 120
        Top = 96
        Width = 361
        Height = 21
        DataField = 'ENCDC4EN'
        DataSource = DMSEVEN_.DSEN
        TabOrder = 5
      end
    end
  end
  object OPDFOTO: TOpenPictureDialog
    Left = 640
    Top = 129
  end
end
