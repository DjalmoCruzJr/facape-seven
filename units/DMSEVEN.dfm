object DMSEVEN_: TDMSEVEN_
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 191
  Top = 117
  Height = 615
  Width = 1166
  object DBSEVEN: TDatabase
    AliasName = 'ALSEVEN'
    Connected = True
    DatabaseName = 'BSSEVEN'
    SessionName = 'Default'
    Left = 1104
    Top = 16
  end
  object TBES: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    FieldDefs = <
      item
        Name = 'ESCUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESCDESC'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'UF'
        Fields = 'ESCUF'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'Estado'
        Fields = 'ESCDESC'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'ESTADO.DB'
    Left = 16
    Top = 16
    object TBESESCUF: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 13
      FieldName = 'ESCUF'
      Size = 2
    end
    object TBESESCDESC: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 56
      FieldName = 'ESCDESC'
      Size = 30
    end
  end
  object DSES: TDataSource
    DataSet = TBES
    Left = 56
    Top = 16
  end
  object DSCD: TDataSource
    DataSet = TBCD
    Left = 56
    Top = 64
  end
  object TBCD: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'CDCUF'
    MasterFields = 'ESCUF'
    MasterSource = DSES
    TableName = 'CIDADE.db'
    Left = 16
    Top = 64
    object TBCDCDCUF: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 7
      FieldName = 'CDCUF'
      Size = 2
    end
    object TBCDCDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CDNCODG'
    end
    object TBCDCDCDESC: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 60
      FieldName = 'CDCDESC'
      Size = 50
    end
  end
  object DSBR: TDataSource
    DataSet = TBBR
    Left = 56
    Top = 112
  end
  object TBBR: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'BRCUF;BRNCGCD'
    MasterFields = 'CDCUF;CDNCODG'
    MasterSource = DSCD
    TableName = 'BAIRRO.db'
    Left = 16
    Top = 112
    object TBBRBRCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'BRCUF'
      Size = 2
    end
    object TBBRBRNCGCD: TFloatField
      DisplayLabel = 'Cod. Cidade'
      FieldName = 'BRNCGCD'
    end
    object TBBRBRNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BRNCODG'
    end
    object TBBRBRCDESC: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BRCDESC'
      Size = 50
    end
  end
  object DSTL: TDataSource
    DataSet = TBTL
    Left = 56
    Top = 160
  end
  object TBTL: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'TIPOLOGRADOURO.db'
    Left = 16
    Top = 160
    object TBTLTLNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'TLNCODG'
    end
    object TBTLTLCDESC: TStringField
      DisplayLabel = 'Tipo Logradouro'
      DisplayWidth = 45
      FieldName = 'TLCDESC'
      Size = 30
    end
  end
  object TBLG: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'LOGRADOURO.db'
    Left = 16
    Top = 208
    object TBLGLGCCEP: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 12
      FieldName = 'LGCCEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object TBLGLGCDESC: TStringField
      DisplayLabel = 'Logradouro'
      DisplayWidth = 60
      FieldName = 'LGCDESC'
      Size = 50
    end
    object TBLGLGCUF: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 3
      FieldName = 'LGCUF'
      Size = 2
    end
    object TBLGLGNCGCD: TFloatField
      DisplayLabel = 'Cod. Cidade'
      DisplayWidth = 12
      FieldName = 'LGNCGCD'
    end
    object TBLGLGNCGBR: TFloatField
      DisplayLabel = 'Cod. Bairro'
      DisplayWidth = 12
      FieldName = 'LGNCGBR'
    end
    object TBLGLGCDCTL: TStringField
      DisplayLabel = 'Tipo de Logradouro'
      FieldKind = fkLookup
      FieldName = 'LGCDCTL'
      LookupDataSet = TBTL
      LookupKeyFields = 'TLNCODG'
      LookupResultField = 'TLCDESC'
      KeyFields = 'LGNCGTL'
      Size = 30
      Lookup = True
    end
    object TBLGLGNCGTL: TFloatField
      DisplayLabel = 'Cod. Tipo Logr.'
      DisplayWidth = 15
      FieldName = 'LGNCGTL'
    end
  end
  object DSLG: TDataSource
    DataSet = TBLG
    Left = 56
    Top = 208
  end
  object DSRE: TDataSource
    DataSet = TBRE
    Left = 56
    Top = 256
  end
  object TBRE: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'RELACAO.db'
    Left = 16
    Top = 256
    object TBRERENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RENCODG'
    end
    object TBRERECDESC: TStringField
      DisplayLabel = 'Rela'#231#227'o'
      FieldName = 'RECDESC'
      Size = 30
    end
  end
  object DSER: TDataSource
    DataSet = TBER
    Left = 56
    Top = 304
  end
  object TBER: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'ERNCGRE'
    MasterFields = 'RENCODG'
    MasterSource = DSRE
    TableName = 'ENTIDADERELACAO.db'
    Left = 16
    Top = 304
    object TBERERNCGRE: TFloatField
      DisplayLabel = 'Cod. Rela'#231#227'o'
      FieldName = 'ERNCGRE'
    end
    object TBERERNCGEN: TFloatField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'ERNCGEN'
    end
    object TBERERDCADT: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'ERDCADT'
    end
    object TBERERHCADT: TTimeField
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'ERHCADT'
    end
    object TBERERDCANC: TDateField
      DisplayLabel = 'Dt. Cancel.'
      FieldName = 'ERDCANC'
    end
  end
  object DSEN: TDataSource
    DataSet = TBEN
    Left = 56
    Top = 352
  end
  object TBEN: TTable
    Active = True
    BeforePost = TBENBeforePost
    AfterPost = TBENAfterPost
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'ENNCODG'
    MasterFields = 'ERNCGEN'
    MasterSource = DSER
    TableName = 'ENTIDADE.db'
    Left = 16
    Top = 352
    object TBENENNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ENNCODG'
    end
    object TBENENCDESC: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'ENCDESC'
      Size = 50
    end
    object TBENENCAPEL: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'ENCAPEL'
      Size = 30
    end
    object TBENENCSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'ENCSEXO'
      Size = 1
    end
    object TBENENOFOTO: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'ENOFOTO'
      BlobType = ftParadoxOle
    end
    object TBENENCTIPO: TStringField
      DisplayLabel = 'Tipo de Pessoa'
      FieldName = 'ENCTIPO'
      Size = 1
    end
    object TBENENCCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ENCCPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 11
    end
    object TBENENCCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ENCCNPJ'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 14
    end
    object TBENENCRZSC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'ENCRZSC'
      Size = 50
    end
    object TBENENCIE: TStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'ENCIE'
      Size = 15
    end
    object TBENENCIM: TStringField
      DisplayLabel = 'Insc. Municipal'
      FieldName = 'ENCIM'
      Size = 15
    end
    object TBENENCETCV: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ENCETCV'
      Size = 1
    end
    object TBENENNC2EN: TFloatField
      DisplayLabel = 'Cod. Pai'
      FieldName = 'ENNC2EN'
    end
    object TBENENCDC2EN: TStringField
      DisplayLabel = 'Pai'
      FieldKind = fkLookup
      FieldName = 'ENCDC2EN'
      LookupDataSet = QREN2
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'ENNC2EN'
      Size = 50
      Lookup = True
    end
    object TBENENNC3EN: TFloatField
      DisplayLabel = 'Cod. M'#227'e'
      FieldName = 'ENNC3EN'
    end
    object TBENENCDC3EN: TStringField
      DisplayLabel = 'M'#227'e'
      FieldKind = fkLookup
      FieldName = 'ENCDC3EN'
      LookupDataSet = QREN3
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'ENNC3EN'
      Size = 50
      Lookup = True
    end
    object TBENENNC4EN: TFloatField
      DisplayLabel = 'Cod. Respons'#225'vel'
      FieldName = 'ENNC4EN'
    end
    object TBENENCDC4EN: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'ENCDC4EN'
      LookupDataSet = QREN4
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'ENNC4EN'
      Size = 50
      Lookup = True
    end
    object TBENENDCADT: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'ENDCADT'
      EditMask = '!99/99/0000;1;_'
    end
    object TBENENHCADT: TTimeField
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'ENHCADT'
      EditMask = '!90:00;1;_'
    end
  end
  object DSED: TDataSource
    DataSet = TBED
    Left = 56
    Top = 400
  end
  object TBED: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'EDNCGEN'
    MasterFields = 'ENNCODG'
    MasterSource = DSEN
    TableName = 'ENDERECO.db'
    Left = 16
    Top = 400
    object TBEDEDNCGEN: TFloatField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'EDNCGEN'
    end
    object TBEDEDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EDNCODG'
    end
    object TBEDEDCDESC: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'EDCDESC'
      Size = 30
    end
    object TBEDEDCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EDCCEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object TBEDEDCNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EDCNUMR'
      Size = 10
    end
    object TBEDEDCOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'EDCOBS'
      Size = 30
    end
    object TBEDEDMOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'EDMOBS'
      BlobType = ftMemo
      Size = 30
    end
  end
  object DSEM: TDataSource
    DataSet = TBEM
    Left = 56
    Top = 448
  end
  object TBEM: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'EMNCGEN'
    MasterFields = 'ENNCODG'
    MasterSource = DSEN
    TableName = 'EMAIL.db'
    Left = 16
    Top = 448
    object TBEMEMNCGEN: TFloatField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'EMNCGEN'
    end
    object TBEMEMNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMNCODG'
    end
    object TBEMEMCDESC: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMCDESC'
      Size = 50
    end
  end
  object DSCT: TDataSource
    DataSet = TBCT
    Left = 56
    Top = 496
  end
  object TBCT: TTable
    OnCalcFields = TBCTCalcFields
    DatabaseName = 'BSSEVEN'
    MasterFields = 'EDNCGEN;EDNCODG'
    MasterSource = DSED
    TableName = 'CONTATO.db'
    Left = 16
    Top = 496
    object TBCTCTNCGEN: TFloatField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'CTNCGEN'
    end
    object TBCTCTNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTNCODG'
    end
    object TBCTCTNCGED: TFloatField
      DisplayLabel = 'Cod. Endere'#231'o'
      FieldName = 'CTNCGED'
    end
    object TBCTCTCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CTCDESC'
      Size = 30
    end
    object TBCTCTCNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CTCNUMR'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 12
    end
    object TBCTCTCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CTCTIPO'
      Size = 1
    end
    object TBCTCTCDCTIPO: TStringField
      DisplayLabel = 'Desc. Tipo'
      FieldKind = fkCalculated
      FieldName = 'CTCDCTIPO'
      Size = 30
      Calculated = True
    end
  end
  object TBTE: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'TIPOESTOQUE.db'
    Left = 168
    Top = 16
    object TBTETENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TENCODG'
    end
    object TBTETECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TECDESC'
      Size = 30
    end
  end
  object DSTE: TDataSource
    DataSet = TBTE
    Left = 208
    Top = 16
  end
  object DSCE: TDataSource
    DataSet = TBCE
    Left = 208
    Top = 64
  end
  object TBCE: TTable
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'CENCGTE'
    MasterFields = 'TENCODG'
    MasterSource = DSTE
    TableName = 'CLASSIFICACAOESTOQUE.db'
    Left = 168
    Top = 64
    object TBCECENCGTE: TFloatField
      DisplayLabel = 'Cod. Tipo Estoq.'
      DisplayWidth = 16
      FieldName = 'CENCGTE'
    end
    object TBCECENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CENCODG'
    end
    object TBCECECDESC: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      DisplayWidth = 52
      FieldName = 'CECDESC'
      Size = 30
    end
  end
  object DSNE: TDataSource
    DataSet = TBNE
    Left = 208
    Top = 112
  end
  object TBNE: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'NENCGTE;NENCGCE'
    MasterFields = 'CENCGTE;CENCODG'
    MasterSource = DSCE
    TableName = 'NOMEGENERICOESTOQUE.db'
    Left = 168
    Top = 112
    object TBNENENCGTE: TFloatField
      DisplayLabel = 'Cod. Tipo Estoq.'
      DisplayWidth = 17
      FieldName = 'NENCGTE'
    end
    object TBNENENCGCE: TFloatField
      DisplayLabel = 'Cod. Classif.'
      DisplayWidth = 12
      FieldName = 'NENCGCE'
    end
    object TBNENENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'NENCODG'
    end
    object TBNENECDESC: TStringField
      DisplayLabel = 'Nome Gen'#233'rico'
      DisplayWidth = 36
      FieldName = 'NECDESC'
      Size = 30
    end
  end
  object DSPE: TDataSource
    DataSet = TBPE
    Left = 208
    Top = 160
  end
  object TBPE: TTable
    Active = True
    OnCalcFields = TBPECalcFields
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'PENCGTE;PENCGCE;PECCGNE'
    MasterFields = 'NENCGTE;NENCGCE;NENCODG'
    MasterSource = DSNE
    TableName = 'PRODUTOESTOQUE.db'
    Left = 168
    Top = 160
    object TBPEPENCGTE: TFloatField
      DisplayLabel = 'Cod. Tipo Estoq.'
      FieldName = 'PENCGTE'
    end
    object TBPEPENCGCE: TFloatField
      DisplayLabel = 'Cod. Classif.'
      FieldName = 'PENCGCE'
    end
    object TBPEPECCGNE: TFloatField
      DisplayLabel = 'Cod. Nome Gen'#233'r.'
      FieldName = 'PECCGNE'
    end
    object TBPEPENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PENCODG'
    end
    object TBPEPENCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PENCDESC'
      Size = 30
    end
    object TBPEPENCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PENCTIPO'
      Size = 1
    end
    object TBPEPECDCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'PECDCTIPO'
      Size = 30
      Calculated = True
    end
  end
  object TBTV: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'TIPOEVENTO.db'
    Left = 168
    Top = 208
    object TBTVTVNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TVNCODG'
    end
    object TBTVTVCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TVCDESC'
      Size = 30
    end
  end
  object DSTV: TDataSource
    DataSet = TBTV
    Left = 208
    Top = 208
  end
  object DSTT: TDataSource
    DataSet = TBTT
    Left = 208
    Top = 256
  end
  object TBTT: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'TTNCGTV'
    TableName = 'TEMATIPOEVENTO.db'
    Left = 168
    Top = 256
    object TBTTTTNCGTV: TFloatField
      DisplayLabel = 'Cod. Tipo Ev.'
      FieldName = 'TTNCGTV'
    end
    object TBTTTTCDCTV: TStringField
      DisplayLabel = 'Tipo de Evento'
      FieldKind = fkLookup
      FieldName = 'TTCDCTV'
      LookupDataSet = TBTV
      LookupKeyFields = 'TVNCODG'
      LookupResultField = 'TVCDESC'
      KeyFields = 'TTNCGTV'
      Size = 30
      Lookup = True
    end
    object TBTTTTNCGTM: TFloatField
      DisplayLabel = 'Cod. Tema'
      FieldName = 'TTNCGTM'
    end
    object TBTTTTNMIN: TFloatField
      DisplayLabel = 'Idade M'#237'nima'
      FieldName = 'TTNMIN'
    end
    object TBTTTTNMAX: TFloatField
      DisplayLabel = 'Idade M'#225'xima'
      FieldName = 'TTNMAX'
    end
    object TBTTTTDCADT: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'TTDCADT'
      EditMask = '!99/99/0000;1;_'
    end
    object TBTTTTCDCTM: TStringField
      DisplayLabel = 'Tema'
      FieldKind = fkLookup
      FieldName = 'TTCDCTM'
      LookupDataSet = TBTM
      LookupKeyFields = 'TMNCODG'
      LookupResultField = 'TMCDESC'
      KeyFields = 'TTNCGTM'
      Size = 30
      Lookup = True
    end
  end
  object DSTM: TDataSource
    DataSet = TBTM
    Left = 208
    Top = 304
  end
  object TBTM: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'TEMA.db'
    Left = 168
    Top = 304
    object TBTMTMNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TMNCODG'
    end
    object TBTMTMCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TMCDESC'
      Size = 50
    end
    object TBTMTMDCADT: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'TMDCADT'
      EditMask = '!99/99/0000;1;_'
    end
    object TBTMTMDCANC: TDateField
      DisplayLabel = 'Dt. Canc.'
      FieldName = 'TMDCANC'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object DSTP: TDataSource
    DataSet = TBTP
    Left = 208
    Top = 352
  end
  object TBTP: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'TPNCGTM'
    MasterFields = 'TMNCODG'
    MasterSource = DSTM
    TableName = 'TEMAPACOTE.db'
    Left = 168
    Top = 352
    object TBTPTPNCGTM: TFloatField
      DisplayLabel = 'Cod. Tema'
      FieldName = 'TPNCGTM'
    end
    object TBTPTPNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPNCODG'
    end
    object TBTPTPCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPCDESC'
      Size = 30
    end
    object TBTPTPYVALR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'TPYVALR'
    end
  end
  object DSIT: TDataSource
    DataSet = TBIT
    Left = 208
    Top = 400
  end
  object TBIT: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'ITNCGTM;ITNCGTP'
    MasterFields = 'TPNCGTM;TPNCODG'
    MasterSource = DSTP
    TableName = 'ITEMTEMAPACOTE.db'
    Left = 168
    Top = 400
    object TBITITNCGTM: TFloatField
      DisplayLabel = 'Cod. Tema'
      FieldName = 'ITNCGTM'
    end
    object TBITITNCGTP: TFloatField
      DisplayLabel = 'Cod. Pacote'
      FieldName = 'ITNCGTP'
    end
    object TBITITNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ITNCODG'
    end
    object TBITITNCGTE: TFloatField
      DisplayLabel = 'Cod. Tipo Estoq.'
      FieldName = 'ITNCGTE'
    end
    object TBITITNCGCE: TFloatField
      DisplayLabel = 'Cod. Classif.'
      FieldName = 'ITNCGCE'
    end
    object TBITITNCGNE: TFloatField
      DisplayLabel = 'Cod. Nome Gen'#233'r.'
      FieldName = 'ITNCGNE'
    end
    object TBITITNCGPE: TFloatField
      DisplayLabel = 'Cod. Produto'
      FieldName = 'ITNCGPE'
    end
    object TBITITYCUST: TCurrencyField
      DisplayLabel = 'Custo'
      FieldName = 'ITYCUST'
    end
    object TBITITYVALR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'ITYVALR'
    end
    object TBITITNQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ITNQTD'
    end
  end
  object DSFP: TDataSource
    DataSet = TBFP
    Left = 208
    Top = 448
  end
  object TBFP: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'FORMAPAGAMENTO.db'
    Left = 168
    Top = 448
    object TBFPFPNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FPNCODG'
    end
    object TBFPFPCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FPCDESC'
      Size = 30
    end
  end
  object DSOC: TDataSource
    DataSet = TBOC
    Left = 208
    Top = 496
  end
  object TBOC: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'ORCAMENTO.DB'
    Left = 168
    Top = 496
    object TBOCOCNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OCNCODG'
    end
    object TBOCOCALOCL: TStringField
      DisplayLabel = 'Local Evento'
      FieldName = 'OCALOCL'
      Size = 1
    end
    object TBOCOCNCGEN: TFloatField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'OCNCGEN'
    end
    object TBOCOCCDCEN: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'OCCDCEN'
      LookupDataSet = TBEN
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'OCNCGEN'
      Size = 50
      Lookup = True
    end
    object TBOCOCNCGED: TFloatField
      DisplayLabel = 'Cod. Endere'#231'o'
      FieldName = 'OCNCGED'
    end
    object TBOCOCCDCED: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldKind = fkLookup
      FieldName = 'OCCDCED'
      LookupDataSet = TBED
      LookupKeyFields = 'EDNCODG'
      LookupResultField = 'EDCDESC'
      KeyFields = 'OCNCGED'
      Size = 30
      Lookup = True
    end
    object TBOCOCNC2EN: TFloatField
      DisplayLabel = 'Cod. Espa'#231'o '
      FieldName = 'OCNC2EN'
    end
    object TBOCOCCDC2EN: TStringField
      DisplayLabel = 'Espa'#231'o de Festa'
      FieldKind = fkLookup
      FieldName = 'OCCDC2EN'
      LookupDataSet = TBEN
      LookupKeyFields = 'ENNCODG'
      LookupResultField = 'ENCDESC'
      KeyFields = 'OCNC2EN'
      Size = 50
      Lookup = True
    end
    object TBOCOCDCATA: TDateField
      DisplayLabel = 'Dt. Evento'
      FieldName = 'OCDCATA'
      EditMask = '!99/99/0000;1;_'
    end
    object TBOCOCHHORA: TTimeField
      DisplayLabel = 'Hr. Evento'
      FieldName = 'OCHHORA'
      EditMask = '!90:00;1;_'
    end
    object TBOCOCNCGTM: TFloatField
      DisplayLabel = 'Cod. Tema'
      FieldName = 'OCNCGTM'
    end
    object TBOCOCCDCTM: TStringField
      DisplayLabel = 'Tema'
      FieldKind = fkLookup
      FieldName = 'OCCDCTM'
      LookupDataSet = TBTM
      LookupKeyFields = 'TMNCODG'
      LookupResultField = 'TMCDESC'
      KeyFields = 'OCNCGTM'
      Size = 30
      Lookup = True
    end
    object TBOCOCNCGTP: TFloatField
      DisplayLabel = 'Cod. Pacote'
      FieldName = 'OCNCGTP'
    end
    object TBOCOCCDCTP: TStringField
      DisplayLabel = 'Pacote'
      FieldKind = fkLookup
      FieldName = 'OCCDCTP'
      LookupDataSet = TBTP
      LookupKeyFields = 'TPNCODG'
      LookupResultField = 'TPCDESC'
      KeyFields = 'OCNCGTP'
      Size = 30
      Lookup = True
    end
    object TBOCOCATIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'OCATIPO'
      Size = 1
    end
    object TBOCOCNPESS: TFloatField
      DisplayLabel = 'Qtd. Pessoas'
      FieldName = 'OCNPESS'
    end
    object TBOCOCNCGFP: TFloatField
      DisplayLabel = 'Cod. Forma Pgto'
      FieldName = 'OCNCGFP'
    end
    object TBOCOCCDCFp: TStringField
      DisplayLabel = 'Forma Pagto'
      FieldKind = fkLookup
      FieldName = 'OCCDCFP'
      LookupDataSet = TBFP
      LookupKeyFields = 'FPNCODG'
      LookupResultField = 'FPCDESC'
      KeyFields = 'OCNCGFP'
      Size = 30
      Lookup = True
    end
    object TBOCOCCOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OCCOBS'
      Size = 100
    end
    object TBOCOCMOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OCMOBS'
      BlobType = ftMemo
      Size = 100
    end
    object TBOCOCDCADT: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'OCDCADT'
      EditMask = '!99/99/0000;1;_'
    end
    object TBOCOCHCADT: TTimeField
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'OCHCADT'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object TBIO: TTable
    Active = True
    OnCalcFields = TBIOCalcFields
    DatabaseName = 'BSSEVEN'
    IndexFieldNames = 'IONCGOC'
    MasterFields = 'OCNCODG'
    MasterSource = DSOC
    TableName = 'ITEMORCAMENTO.db'
    Left = 336
    Top = 16
    object TBIOIONCGOC: TFloatField
      DisplayLabel = 'Cod. Or'#231'amento'
      FieldName = 'IONCGOC'
    end
    object TBIOIONCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IONCODG'
    end
    object TBIOIOCCGTM: TFloatField
      DisplayLabel = 'Cod. Tema'
      FieldName = 'IOCCGTM'
    end
    object TBIOIOCDCTM: TStringField
      DisplayLabel = 'Tema'
      FieldKind = fkLookup
      FieldName = 'IOCDCTM'
      LookupDataSet = TBTM
      LookupKeyFields = 'TMNCODG'
      LookupResultField = 'TMCDESC'
      KeyFields = 'IOCCGTM'
      Size = 30
      Lookup = True
    end
    object TBIOIONCGTP: TFloatField
      DisplayLabel = 'Cod. Pacote'
      FieldName = 'IONCGTP'
    end
    object TBIOIOCDCTP: TStringField
      DisplayLabel = 'Pacote'
      FieldKind = fkLookup
      FieldName = 'IOCDCTP'
      LookupDataSet = TBTP
      LookupKeyFields = 'TPNCODG'
      LookupResultField = 'TPCDESC'
      KeyFields = 'IONCGTP'
      Size = 30
      Lookup = True
    end
    object TBIOIONCGTE: TFloatField
      DisplayLabel = 'Cod. Tipo Estoq.'
      FieldName = 'IONCGTE'
    end
    object TBIOIOCDCTE: TStringField
      DisplayLabel = 'Tipo Estoq.'
      FieldKind = fkLookup
      FieldName = 'IOCDCTE'
      LookupDataSet = TBTE
      LookupKeyFields = 'TENCODG'
      LookupResultField = 'TECDESC'
      KeyFields = 'IONCGTE'
      Size = 30
      Lookup = True
    end
    object TBIOIONCGCE: TFloatField
      DisplayLabel = 'Cod. Classif.'
      FieldName = 'IONCGCE'
    end
    object TBIOIOCDCCE: TStringField
      DisplayLabel = 'Classif. Estoq.'
      FieldKind = fkLookup
      FieldName = 'IOCDCCE'
      LookupDataSet = TBCE
      LookupKeyFields = 'CENCODG'
      LookupResultField = 'CECDESC'
      KeyFields = 'IONCGCE'
      Size = 30
      Lookup = True
    end
    object TBIOIONCGNE: TFloatField
      DisplayLabel = 'Cod. Nome Gen'#233'r.'
      FieldName = 'IONCGNE'
    end
    object TBIOIOCDCNE: TStringField
      DisplayLabel = 'Nome Gen'#233'rico'
      FieldKind = fkLookup
      FieldName = 'IOCDCNE'
      LookupDataSet = TBNE
      LookupKeyFields = 'NENCODG'
      LookupResultField = 'NECDESC'
      KeyFields = 'IONCGNE'
      Size = 30
      Lookup = True
    end
    object TBIOIONCGPE: TFloatField
      DisplayLabel = 'Cod. Produto'
      FieldName = 'IONCGPE'
    end
    object TBIOIOCDCPE: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'IOCDCPE'
      LookupDataSet = TBPE
      LookupKeyFields = 'PENCODG'
      LookupResultField = 'PENCDESC'
      KeyFields = 'IONCGPE'
      Size = 30
      Lookup = True
    end
    object TBIOIOYCUST: TCurrencyField
      DisplayLabel = 'Custo'
      FieldName = 'IOYCUST'
    end
    object TBIOIOYVALR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'IOYVALR'
    end
    object TBIOIONQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'IONQTD'
    end
    object TBIOIOYTOTAL: TCurrencyField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'IOYTOTAL'
      Calculated = True
    end
  end
  object DSIO: TDataSource
    DataSet = TBIO
    Left = 376
    Top = 16
  end
  object DSPR: TDataSource
    DataSet = TBPR
    Left = 376
    Top = 64
  end
  object TBPR: TTable
    Active = True
    DatabaseName = 'BSSEVEN'
    TableName = 'PARAMETRO.db'
    Left = 336
    Top = 64
    object TBPRPRNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'PRNCODG'
    end
    object TBPRPRNTXDS: TFloatField
      DisplayLabel = 'Taxa de Desist'#234'ncia'
      DisplayWidth = 28
      FieldName = 'PRNTXDS'
      DisplayFormat = '00.00%'
    end
  end
  object QRES: TQuery
    DatabaseName = 'BSSEVEN'
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 560
    Top = 16
    object QRESESCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ESCUF'
      Origin = 'BSSEVEN."ESTADO.DB".ESCUF'
      Size = 2
    end
    object QRESESCDESC: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESCDESC'
      Origin = 'BSSEVEN."ESTADO.DB".ESCDESC'
      Size = 30
    end
  end
  object DSQRES: TDataSource
    DataSet = QRES
    Left = 608
    Top = 16
  end
  object QRTMG: TQuery
    Active = True
    DatabaseName = 'BSSEVEN'
    SQL.Strings = (
      'SELECT '
      'TMCDESC, TPYVALR'
      'FROM TEMAPACOTE, TEMA'
      'WHERE TMNCODG = TPNCGTM')
    Left = 560
    Top = 64
    object QRTMGTMCDESC: TStringField
      FieldName = 'TMCDESC'
      Origin = 'BSSEVEN."TEMA.DB".TMCDESC'
      Size = 50
    end
    object QRTMGTPYVALR: TCurrencyField
      FieldName = 'TPYVALR'
      Origin = 'BSSEVEN."TEMAPACOTE.DB".TPYVALR'
    end
  end
  object DSQRTMG: TDataSource
    DataSet = QRTMG
    Left = 608
    Top = 64
  end
  object QROC: TQuery
    DatabaseName = 'BSSEVEN'
    SQL.Strings = (
      'SELECT '
      '   sum(IOYVALR) AS TOTAL,'
      '   IONQTD AS QTD'
      'FROM ITEMORCAMENTO '
      'WHERE'
      '   IONCGOC =  :IONCGOC'
      ' ')
    Left = 560
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IONCGOC'
        ParamType = ptUnknown
      end>
    object QROCTOTAL: TCurrencyField
      FieldName = 'TOTAL'
      Origin = 'BSSEVEN."ITEMORCAMENTO.DB".IOYVALR'
    end
  end
  object DSQROC: TDataSource
    DataSet = QROC
    Left = 608
    Top = 112
  end
  object QREN2: TQuery
    Active = True
    DatabaseName = 'BSSEVEN'
    SQL.Strings = (
      'SELECT'
      '       ENNCODG,'
      '       ENCDESC'
      'FROM '
      '       ENTIDADE'
      'INNER JOIN '
      '       ENTIDADERELACAO '
      'ON '
      '       ERNCGEN = ENNCODG AND '
      '       ERNCGRE = 1'
      'WHERE '
      '       ENCSEXO = '#39'M'#39)
    Left = 560
    Top = 168
    object QREN2ENNCODG: TFloatField
      FieldName = 'ENNCODG'
      Origin = 'BSSEVEN."ENTIDADE.DB".ENNCODG'
    end
    object QREN2ENCDESC: TStringField
      FieldName = 'ENCDESC'
      Origin = 'BSSEVEN."ENTIDADE.DB".ENCDESC'
      Size = 50
    end
  end
  object DSQREN2: TDataSource
    DataSet = QREN2
    Left = 608
    Top = 168
  end
  object QREN3: TQuery
    Active = True
    DatabaseName = 'BSSEVEN'
    SQL.Strings = (
      'SELECT'
      '       ENNCODG,'
      '       ENCDESC'
      'FROM '
      '       ENTIDADE'
      'INNER JOIN '
      '       ENTIDADERELACAO '
      'ON '
      '       ERNCGEN = ENNCODG AND '
      '       ERNCGRE = 1'
      'WHERE '
      '       ENCSEXO = '#39'F'#39)
    Left = 560
    Top = 216
    object FloatField1: TFloatField
      FieldName = 'ENNCODG'
      Origin = 'BSSEVEN."ENTIDADE.DB".ENNCODG'
    end
    object StringField1: TStringField
      FieldName = 'ENCDESC'
      Origin = 'BSSEVEN."ENTIDADE.DB".ENCDESC'
      Size = 50
    end
  end
  object DSQREN3: TDataSource
    DataSet = QREN3
    Left = 608
    Top = 216
  end
  object QREN4: TQuery
    Active = True
    DatabaseName = 'BSSEVEN'
    SQL.Strings = (
      'SELECT'
      '       ENNCODG,'
      '       ENCDESC'
      'FROM '
      '       ENTIDADE'
      'INNER JOIN '
      '       ENTIDADERELACAO '
      'ON '
      '       ERNCGEN = ENNCODG AND '
      '       ERNCGRE = 1')
    Left = 560
    Top = 264
    object FloatField2: TFloatField
      FieldName = 'ENNCODG'
      Origin = 'BSSEVEN."ENTIDADE.DB".ENNCODG'
    end
    object StringField2: TStringField
      FieldName = 'ENCDESC'
      Origin = 'BSSEVEN."ENTIDADE.DB".ENCDESC'
      Size = 50
    end
  end
  object DSQREN4: TDataSource
    DataSet = QREN4
    Left = 608
    Top = 264
  end
end
