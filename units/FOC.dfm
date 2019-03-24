object FOC_: TFOC_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Or'#231'amentos/Eventos'
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
      DataSource = DMSEVEN_.DSOC
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
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BTITENSClick
    end
  end
  object DBGOC: TDBGrid
    Left = 0
    Top = 352
    Width = 964
    Height = 96
    Align = alBottom
    DataSource = DMSEVEN_.DSOC
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OCNCODG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCALOCL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNCGEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCDCEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNCGED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCDCED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNC2EN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCDC2EN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCDCATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCHHORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNCGTM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCDCTM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNCGTP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCDCTP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCATIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNPESS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCNCGFP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCDCFP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCCOBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCMOBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCDCADT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCHCADT'
        Visible = True
      end>
  end
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 296
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDOCNCODG
    end
    object Label10: TLabel
      Left = 16
      Top = 67
      Width = 51
      Height = 13
      Caption = 'Dt. Evento'
      FocusControl = DBEDOCDDATA
    end
    object Label11: TLabel
      Left = 96
      Top = 67
      Width = 51
      Height = 13
      Caption = 'Hr. Evento'
      FocusControl = DBEDOCHHORA
    end
    object Label12: TLabel
      Left = 159
      Top = 68
      Width = 63
      Height = 13
      Caption = 'Qtd. Pessoas'
      FocusControl = DBEDOCNPESS
    end
    object Label14: TLabel
      Left = 16
      Top = 107
      Width = 52
      Height = 13
      Caption = 'Cod. Tema'
      FocusControl = DBEDOCNCGTM
    end
    object Label15: TLabel
      Left = 456
      Top = 106
      Width = 59
      Height = 13
      Caption = 'Cod. Pacote'
      FocusControl = DBEDOCNCGTP
    end
    object Label13: TLabel
      Left = 16
      Top = 147
      Width = 79
      Height = 13
      Caption = 'Cod. Forma Pgto'
      FocusControl = DBEDOCNCGFP
    end
    object Label16: TLabel
      Left = 456
      Top = 147
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBEDOCCOBS
    end
    object Label17: TLabel
      Left = 16
      Top = 185
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBMOOCMOBS
    end
    object Label18: TLabel
      Left = 816
      Top = 192
      Width = 59
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEDOCDCADT
    end
    object Label19: TLabel
      Left = 816
      Top = 232
      Width = 59
      Height = 13
      Caption = 'Hr. Cadastro'
      FocusControl = DBEDOCHCADT
    end
    object DBEDOCNCODG: TDBEdit
      Left = 16
      Top = 40
      Width = 73
      Height = 21
      DataField = 'OCNCODG'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 0
    end
    object DBRGOCCLOCL: TDBRadioGroup
      Left = 96
      Top = 24
      Width = 353
      Height = 38
      Caption = 'Tipo de Local  do Evento'
      Columns = 2
      DataField = 'OCALOCL'
      DataSource = DMSEVEN_.DSOC
      Items.Strings = (
        '&Cliente'
        '&Espa'#231'o de Festa')
      TabOrder = 1
      Values.Strings = (
        'C'
        'E')
      OnChange = DBRGOCCLOCLChange
    end
    object PNESPACO: TPanel
      Left = 456
      Top = 26
      Width = 433
      Height = 47
      BevelOuter = bvNone
      TabOrder = 10
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 61
        Height = 13
        Caption = 'Cod. Espa'#231'o'
        FocusControl = DBEDOCNC2EN
      end
      object Label7: TLabel
        Left = 80
        Top = 0
        Width = 80
        Height = 13
        Caption = 'Espa'#231'o de Festa'
        FocusControl = DBLCOCDC2EN
      end
      object DBEDOCNC2EN: TDBEdit
        Left = 0
        Top = 16
        Width = 73
        Height = 21
        DataField = 'OCNCGEN'
        DataSource = DMSEVEN_.DSOC
        TabOrder = 0
      end
      object DBLCOCDC2EN: TDBLookupComboBox
        Left = 80
        Top = 16
        Width = 353
        Height = 21
        DataField = 'OCCDC2EN'
        DataSource = DMSEVEN_.DSOC
        TabOrder = 1
      end
    end
    object DBEDOCDDATA: TDBEdit
      Left = 16
      Top = 83
      Width = 73
      Height = 21
      DataField = 'OCDCATA'
      DataSource = DMSEVEN_.DSOC
      MaxLength = 10
      TabOrder = 2
    end
    object DBEDOCHHORA: TDBEdit
      Left = 96
      Top = 83
      Width = 57
      Height = 21
      DataField = 'OCHHORA'
      DataSource = DMSEVEN_.DSOC
      MaxLength = 5
      TabOrder = 3
    end
    object DBEDOCNPESS: TDBEdit
      Left = 159
      Top = 84
      Width = 73
      Height = 21
      DataField = 'OCNPESS'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 4
    end
    object DBRGOCCTIPO: TDBRadioGroup
      Left = 240
      Top = 69
      Width = 209
      Height = 36
      Caption = 'Tipo'
      Columns = 2
      DataField = 'OCATIPO'
      DataSource = DMSEVEN_.DSOC
      Items.Strings = (
        '&Or'#231'amento'
        '&Evento')
      TabOrder = 5
      Values.Strings = (
        'O'
        'E')
    end
    object DBEDOCNCGTM: TDBEdit
      Left = 16
      Top = 123
      Width = 73
      Height = 21
      DataField = 'OCNCGTM'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 6
    end
    object DBEDOCNCGTP: TDBEdit
      Left = 456
      Top = 122
      Width = 73
      Height = 21
      DataField = 'OCNCGTP'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 11
    end
    object DBEDOCNCGFP: TDBEdit
      Left = 16
      Top = 163
      Width = 73
      Height = 21
      DataField = 'OCNCGFP'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 8
    end
    object DBEDOCCOBS: TDBEdit
      Left = 456
      Top = 163
      Width = 433
      Height = 21
      DataField = 'OCCOBS'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 13
    end
    object DBMOOCMOBS: TDBMemo
      Left = 16
      Top = 201
      Width = 793
      Height = 68
      DataField = 'OCMOBS'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 14
    end
    object DBLCOCCDCTM: TDBLookupComboBox
      Left = 96
      Top = 120
      Width = 353
      Height = 21
      DataField = 'OCCDCTM'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 7
    end
    object DBLCOCDCTP: TDBLookupComboBox
      Left = 536
      Top = 120
      Width = 353
      Height = 21
      DataField = 'OCCDCTP'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 12
    end
    object DBLCOCDCFP: TDBLookupComboBox
      Left = 96
      Top = 160
      Width = 353
      Height = 21
      DataField = 'OCCDCFP'
      DataSource = DMSEVEN_.DSOC
      TabOrder = 9
    end
    object DBEDOCDCADT: TDBEdit
      Left = 816
      Top = 208
      Width = 73
      Height = 21
      DataField = 'OCDCADT'
      DataSource = DMSEVEN_.DSOC
      MaxLength = 10
      TabOrder = 15
    end
    object DBEDOCHCADT: TDBEdit
      Left = 816
      Top = 248
      Width = 73
      Height = 21
      DataField = 'OCHCADT'
      DataSource = DMSEVEN_.DSOC
      MaxLength = 10
      TabOrder = 16
    end
    object PNCLIENTE: TPanel
      Left = 456
      Top = 26
      Width = 433
      Height = 81
      BevelOuter = bvNone
      TabOrder = 17
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 57
        Height = 13
        Caption = 'Cod. Cliente'
        FocusControl = DBEDOCNCGEN
      end
      object Label3: TLabel
        Left = 80
        Top = 0
        Width = 32
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLCOCDCEN
      end
      object Label4: TLabel
        Left = 0
        Top = 40
        Width = 71
        Height = 13
        Caption = 'Cod. Endere'#231'o'
        FocusControl = DBEDOCNCGED
      end
      object Label5: TLabel
        Left = 80
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEDOCNCGED
      end
      object DBEDOCNCGEN: TDBEdit
        Left = 0
        Top = 16
        Width = 73
        Height = 21
        DataField = 'OCNCGEN'
        DataSource = DMSEVEN_.DSOC
        TabOrder = 0
      end
      object DBLCOCDCEN: TDBLookupComboBox
        Left = 80
        Top = 16
        Width = 353
        Height = 21
        DataField = 'OCCDCEN'
        DataSource = DMSEVEN_.DSOC
        TabOrder = 1
      end
      object DBEDOCNCGED: TDBEdit
        Left = 0
        Top = 56
        Width = 73
        Height = 21
        DataField = 'OCNCGED'
        DataSource = DMSEVEN_.DSOC
        TabOrder = 2
      end
      object DBLCOCDCED: TDBLookupComboBox
        Left = 80
        Top = 56
        Width = 353
        Height = 21
        DataField = 'OCCDCED'
        DataSource = DMSEVEN_.DSOC
        TabOrder = 3
      end
    end
  end
  object DBGIO: TDBGrid
    Left = 0
    Top = 448
    Width = 964
    Height = 129
    Align = alBottom
    DataSource = DMSEVEN_.DSIO
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IONCGOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONCODG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCCGTM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCDCTM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONCGTP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCDCTP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONCGTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCDCTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONCGCE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCDCCE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONCGNE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCDCNE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONCGPE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOCDCPE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOYCUST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOYVALR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IONQTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IOYTOTAL'
        Visible = True
      end>
  end
end
