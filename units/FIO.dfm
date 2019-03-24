object FIO_: TFIO_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Itens de Or'#231'amento/Evento'
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
      DataSource = DMSEVEN_.DSIO
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 297
    Width = 964
    Height = 280
    Align = alClient
    DataSource = DMSEVEN_.DSIO
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 248
    Align = alTop
    Caption = 'Dados'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 77
      Height = 13
      Caption = 'Cod. Or'#231'amento'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 112
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 52
      Height = 13
      Caption = 'Cod. Tema'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 432
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Cod. Pacote'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 79
      Height = 13
      Caption = 'Cod. Tipo Estoq.'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 432
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Cod. Classif.'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 16
      Top = 144
      Width = 88
      Height = 13
      Caption = 'Cod. Nome Gen'#233'r.'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 432
      Top = 144
      Width = 62
      Height = 13
      Caption = 'Cod. Produto'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 112
      Top = 184
      Width = 27
      Height = 13
      Caption = 'Custo'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 272
      Top = 184
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 16
      Top = 184
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 112
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Tema'
      FocusControl = DBLookupComboBox1
    end
    object Label13: TLabel
      Left = 112
      Top = 104
      Width = 54
      Height = 13
      Caption = 'Tipo Estoq.'
      FocusControl = DBLookupComboBox2
    end
    object Label14: TLabel
      Left = 112
      Top = 144
      Width = 74
      Height = 13
      Caption = 'Nome Gen'#233'rico'
      FocusControl = DBLookupComboBox3
    end
    object Label15: TLabel
      Left = 528
      Top = 64
      Width = 34
      Height = 13
      Caption = 'Pacote'
      FocusControl = DBLookupComboBox4
    end
    object Label16: TLabel
      Left = 528
      Top = 104
      Width = 66
      Height = 13
      Caption = 'Classif. Estoq.'
      FocusControl = DBLookupComboBox5
    end
    object Label17: TLabel
      Left = 528
      Top = 144
      Width = 37
      Height = 13
      Caption = 'Produto'
      FocusControl = DBLookupComboBox6
    end
    object Label18: TLabel
      Left = 432
      Top = 184
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DBEdit12
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 89
      Height = 21
      DataField = 'IONCGOC'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 40
      Width = 81
      Height = 21
      DataField = 'IONCODG'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 80
      Width = 89
      Height = 21
      DataField = 'IOCCGTM'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 432
      Top = 80
      Width = 89
      Height = 21
      DataField = 'IONCGTP'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 120
      Width = 89
      Height = 21
      DataField = 'IONCGTE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 432
      Top = 120
      Width = 89
      Height = 21
      DataField = 'IONCGCE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 160
      Width = 89
      Height = 21
      DataField = 'IONCGNE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 432
      Top = 160
      Width = 89
      Height = 21
      DataField = 'IONCGPE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 112
      Top = 200
      Width = 153
      Height = 21
      DataField = 'IOYCUST'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 272
      Top = 200
      Width = 153
      Height = 21
      DataField = 'IOYVALR'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 16
      Top = 200
      Width = 89
      Height = 21
      DataField = 'IONQTD'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 10
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 80
      Width = 313
      Height = 21
      DataField = 'IOCDCTM'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 11
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 112
      Top = 120
      Width = 313
      Height = 21
      DataField = 'IOCDCTE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 12
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 112
      Top = 160
      Width = 313
      Height = 21
      DataField = 'IOCDCNE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 13
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 528
      Top = 80
      Width = 313
      Height = 21
      DataField = 'IOCDCTP'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 14
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 528
      Top = 120
      Width = 313
      Height = 21
      DataField = 'IOCDCCE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 15
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 528
      Top = 160
      Width = 313
      Height = 21
      DataField = 'IOCDCPE'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 16
    end
    object DBEdit12: TDBEdit
      Left = 432
      Top = 200
      Width = 409
      Height = 21
      DataField = 'IOYTOTAL'
      DataSource = DMSEVEN_.DSIO
      TabOrder = 17
    end
  end
end
