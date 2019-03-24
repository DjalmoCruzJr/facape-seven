object FCT_: TFCT_
  Left = 191
  Top = 117
  Width = 972
  Height = 608
  Caption = 'Cadastro de Contatos'
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
      DataSource = DMSEVEN_.DSCT
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGRID: TDBGrid
    Left = 0
    Top = 225
    Width = 964
    Height = 352
    Align = alClient
    DataSource = DMSEVEN_.DSCT
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
        FieldName = 'CTNCGEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTNCODG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTNCGED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTCDESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTCNUMR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTCTIPO'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTCDCTIPO'
        Visible = True
      end>
  end
  object GROUPBOX: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 176
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Cod. Entidade'
      FocusControl = DBEDCTNCGEN
    end
    object Label2: TLabel
      Left = 16
      Top = 104
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDCTNCODG
    end
    object Label4: TLabel
      Left = 120
      Top = 104
      Width = 52
      Height = 13
      Caption = 'Desc. Tipo'
      FocusControl = DBEDCTCDESC
    end
    object Label5: TLabel
      Left = 448
      Top = 104
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEDCTCNUMR
    end
    object DBEDCTNCGEN: TDBEdit
      Left = 16
      Top = 40
      Width = 97
      Height = 21
      DataField = 'CTNCGEN'
      DataSource = DMSEVEN_.DSCT
      TabOrder = 0
    end
    object DBEDCTNCODG: TDBEdit
      Left = 16
      Top = 120
      Width = 97
      Height = 21
      DataField = 'CTNCODG'
      DataSource = DMSEVEN_.DSCT
      TabOrder = 4
    end
    object DBEDCTCDESC: TDBEdit
      Left = 120
      Top = 120
      Width = 321
      Height = 21
      DataField = 'CTCDESC'
      DataSource = DMSEVEN_.DSCT
      TabOrder = 6
    end
    object DBEDCTCNUMR: TDBEdit
      Left = 448
      Top = 120
      Width = 97
      Height = 21
      DataField = 'CTCNUMR'
      DataSource = DMSEVEN_.DSCT
      MaxLength = 13
      TabOrder = 3
    end
    object DBRGCTCTIPO: TDBRadioGroup
      Left = 448
      Top = 38
      Width = 97
      Height = 65
      Caption = 'Tipo de Contato'
      DataField = 'CTCTIPO'
      DataSource = DMSEVEN_.DSCT
      Items.Strings = (
        '&Fixo'
        '&Celular')
      TabOrder = 2
      Values.Strings = (
        'F'
        'C')
    end
    object DBLCCTCDCEN: TDBLookupComboBox
      Left = 120
      Top = 40
      Width = 321
      Height = 21
      KeyField = 'ENNCODG'
      ListField = 'ENCDESC'
      ListSource = DMSEVEN_.DSEN
      TabOrder = 1
    end
    object PNENDERECO: TPanel
      Left = 16
      Top = 60
      Width = 421
      Height = 45
      BevelOuter = bvNone
      TabOrder = 5
      object LBCODENDERECO: TLabel
        Left = 0
        Top = 0
        Width = 71
        Height = 13
        Caption = 'Cod. Endere'#231'o'
        FocusControl = DBEDCTNCGED
      end
      object Label7: TLabel
        Left = 104
        Top = 0
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBLCCTCDCED
      end
      object DBEDCTNCGED: TDBEdit
        Left = 0
        Top = 16
        Width = 97
        Height = 21
        DataField = 'CTNCGED'
        DataSource = DMSEVEN_.DSCT
        TabOrder = 0
      end
      object DBLCCTCDCED: TDBLookupComboBox
        Left = 104
        Top = 16
        Width = 321
        Height = 21
        KeyField = 'EDNCODG'
        ListField = 'EDCDESC'
        ListSource = DMSEVEN_.DSED
        TabOrder = 1
      end
    end
  end
end
