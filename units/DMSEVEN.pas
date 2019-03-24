unit DMSEVEN;

interface

uses
  SysUtils, Classes, DBTables, DB;

type
  TDMSEVEN_ = class(TDataModule)
    DBSEVEN: TDatabase;
    TBES: TTable;
    DSES: TDataSource;
    DSCD: TDataSource;
    TBCD: TTable;
    DSBR: TDataSource;
    TBBR: TTable;
    DSTL: TDataSource;
    TBTL: TTable;
    TBLG: TTable;
    DSLG: TDataSource;
    DSRE: TDataSource;
    TBRE: TTable;
    DSER: TDataSource;
    TBER: TTable;
    DSEN: TDataSource;
    TBEN: TTable;
    DSED: TDataSource;
    TBED: TTable;
    DSEM: TDataSource;
    TBEM: TTable;
    DSCT: TDataSource;
    TBCT: TTable;
    TBTE: TTable;
    DSTE: TDataSource;
    DSCE: TDataSource;
    TBCE: TTable;
    DSNE: TDataSource;
    TBNE: TTable;
    DSPE: TDataSource;
    TBPE: TTable;
    TBTV: TTable;
    DSTV: TDataSource;
    DSTT: TDataSource;
    TBTT: TTable;
    DSTM: TDataSource;
    TBTM: TTable;
    DSTP: TDataSource;
    TBTP: TTable;
    DSIT: TDataSource;
    TBIT: TTable;
    DSFP: TDataSource;
    TBFP: TTable;
    DSOC: TDataSource;
    TBOC: TTable;
    TBIO: TTable;
    DSIO: TDataSource;
    DSPR: TDataSource;
    TBPR: TTable;
    TBESESCUF: TStringField;
    TBESESCDESC: TStringField;
    TBCDCDCUF: TStringField;
    TBCDCDNCODG: TFloatField;
    TBCDCDCDESC: TStringField;
    TBBRBRCUF: TStringField;
    TBBRBRNCGCD: TFloatField;
    TBBRBRNCODG: TFloatField;
    TBBRBRCDESC: TStringField;
    TBTLTLNCODG: TFloatField;
    TBTLTLCDESC: TStringField;
    TBLGLGCCEP: TStringField;
    TBLGLGCDESC: TStringField;
    TBLGLGCUF: TStringField;
    TBLGLGNCGCD: TFloatField;
    TBLGLGNCGBR: TFloatField;
    TBLGLGNCGTL: TFloatField;
    TBRERENCODG: TFloatField;
    TBRERECDESC: TStringField;
    TBERERNCGRE: TFloatField;
    TBERERNCGEN: TFloatField;
    TBERERDCADT: TDateField;
    TBERERHCADT: TTimeField;
    TBERERDCANC: TDateField;
    TBENENNCODG: TFloatField;
    TBENENCDESC: TStringField;
    TBENENCAPEL: TStringField;
    TBENENCSEXO: TStringField;
    TBENENOFOTO: TBlobField;
    TBENENCTIPO: TStringField;
    TBENENCCPF: TStringField;
    TBENENCCNPJ: TStringField;
    TBENENCRZSC: TStringField;
    TBENENCIE: TStringField;
    TBENENCIM: TStringField;
    TBENENCETCV: TStringField;
    TBENENNC2EN: TFloatField;
    TBENENNC3EN: TFloatField;
    TBENENNC4EN: TFloatField;
    TBENENDCADT: TDateField;
    TBENENHCADT: TTimeField;
    TBEDEDNCGEN: TFloatField;
    TBEDEDNCODG: TFloatField;
    TBEDEDCDESC: TStringField;
    TBEDEDCCEP: TStringField;
    TBEDEDCNUMR: TStringField;
    TBEDEDCOBS: TStringField;
    TBEDEDMOBS: TMemoField;
    TBEMEMNCGEN: TFloatField;
    TBEMEMNCODG: TFloatField;
    TBEMEMCDESC: TStringField;
    TBTETENCODG: TFloatField;
    TBTETECDESC: TStringField;
    TBCECENCGTE: TFloatField;
    TBCECENCODG: TFloatField;
    TBCECECDESC: TStringField;
    TBNENENCGTE: TFloatField;
    TBNENENCGCE: TFloatField;
    TBNENENCODG: TFloatField;
    TBNENECDESC: TStringField;
    TBPEPENCGTE: TFloatField;
    TBPEPENCGCE: TFloatField;
    TBPEPECCGNE: TFloatField;
    TBPEPENCODG: TFloatField;
    TBPEPENCDESC: TStringField;
    TBPEPENCTIPO: TStringField;
    TBTVTVNCODG: TFloatField;
    TBTVTVCDESC: TStringField;
    TBTTTTNCGTV: TFloatField;
    TBTTTTNCGTM: TFloatField;
    TBTTTTNMIN: TFloatField;
    TBTTTTNMAX: TFloatField;
    TBTTTTDCADT: TDateField;
    TBTMTMNCODG: TFloatField;
    TBTMTMCDESC: TStringField;
    TBTMTMDCADT: TDateField;
    TBTMTMDCANC: TDateField;
    TBTPTPNCGTM: TFloatField;
    TBTPTPNCODG: TFloatField;
    TBTPTPCDESC: TStringField;
    TBTPTPYVALR: TCurrencyField;
    TBITITNCGTM: TFloatField;
    TBITITNCGTP: TFloatField;
    TBITITNCODG: TFloatField;
    TBITITNCGTE: TFloatField;
    TBITITNCGCE: TFloatField;
    TBITITNCGNE: TFloatField;
    TBITITNCGPE: TFloatField;
    TBITITYCUST: TCurrencyField;
    TBITITYVALR: TCurrencyField;
    TBITITNQTD: TFloatField;
    TBFPFPNCODG: TFloatField;
    TBFPFPCDESC: TStringField;
    TBOCOCNCODG: TFloatField;
    TBOCOCALOCL: TStringField;
    TBOCOCNCGEN: TFloatField;
    TBOCOCNCGED: TFloatField;
    TBOCOCNC2EN: TFloatField;
    TBOCOCDCATA: TDateField;
    TBOCOCHHORA: TTimeField;
    TBOCOCNCGTM: TFloatField;
    TBOCOCNCGTP: TFloatField;
    TBOCOCATIPO: TStringField;
    TBOCOCNPESS: TFloatField;
    TBOCOCNCGFP: TFloatField;
    TBOCOCCOBS: TStringField;
    TBOCOCMOBS: TMemoField;
    TBOCOCDCADT: TDateField;
    TBOCOCHCADT: TTimeField;
    TBIOIONCGOC: TFloatField;
    TBIOIONCODG: TFloatField;
    TBIOIOCCGTM: TFloatField;
    TBIOIONCGTP: TFloatField;
    TBIOIONCGTE: TFloatField;
    TBIOIONCGCE: TFloatField;
    TBIOIONCGNE: TFloatField;
    TBIOIONCGPE: TFloatField;
    TBIOIOYCUST: TCurrencyField;
    TBIOIOYVALR: TCurrencyField;
    TBIOIONQTD: TFloatField;
    TBPRPRNCODG: TFloatField;
    TBPRPRNTXDS: TFloatField;
    TBLGLGCDCTL: TStringField;
    QRES: TQuery;
    DSQRES: TDataSource;
    QRESESCUF: TStringField;
    QRESESCDESC: TStringField;
    TBPEPECDCTIPO: TStringField;
    TBTTTTCDCTV: TStringField;
    TBTTTTCDCTM: TStringField;
    QRTMG: TQuery;
    DSQRTMG: TDataSource;
    TBOCOCCDCEN: TStringField;
    TBOCOCCDC2EN: TStringField;
    TBIOIOCDCTM: TStringField;
    TBIOIOCDCTP: TStringField;
    TBIOIOCDCTE: TStringField;
    TBIOIOCDCCE: TStringField;
    TBIOIOCDCNE: TStringField;
    TBIOIOCDCPE: TStringField;
    TBIOIOYTOTAL: TCurrencyField;
    QROC: TQuery;
    QROCTOTAL: TCurrencyField;
    DSQROC: TDataSource;
    QREN2: TQuery;
    DSQREN2: TDataSource;
    QREN2ENNCODG: TFloatField;
    QREN2ENCDESC: TStringField;
    QREN3: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DSQREN3: TDataSource;
    QREN4: TQuery;
    FloatField2: TFloatField;
    StringField2: TStringField;
    DSQREN4: TDataSource;
    TBENENCDC2EN: TStringField;
    TBENENCDC3EN: TStringField;
    TBENENCDC4EN: TStringField;
    TBOCOCCDCTM: TStringField;
    TBOCOCCDCTP: TStringField;
    TBOCOCCDCFp: TStringField;
    TBOCOCCDCED: TStringField;
    TBCTCTNCGEN: TFloatField;
    TBCTCTNCODG: TFloatField;
    TBCTCTNCGED: TFloatField;
    TBCTCTCDESC: TStringField;
    TBCTCTCNUMR: TStringField;
    TBCTCTCTIPO: TStringField;
    TBCTCTCDCTIPO: TStringField;
    QRTMGTMCDESC: TStringField;
    QRTMGTPYVALR: TCurrencyField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TBPECalcFields(DataSet: TDataSet);
    procedure TBENAfterPost(DataSet: TDataSet);
    procedure TBENBeforePost(DataSet: TDataSet);
    procedure TBCTCalcFields(DataSet: TDataSet);
    procedure TBIOCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSEVEN_: TDMSEVEN_;
  Inserindo: Boolean;
  Codigo: Integer;

implementation

{$R *.dfm}

procedure TDMSEVEN_.DataModuleCreate(Sender: TObject);
var i:Integer;
begin
  for i := 0 to Self.ComponentCount-1 do
  begin
    if Self.Components[i] is TTable then
      TTable(Self.Components[i]).Open;
  end;
end;

procedure TDMSEVEN_.DataModuleDestroy(Sender: TObject);
var i:Integer;
begin
  for i := 0 to Self.ComponentCount-1 do
  begin
    if Self.Components[i] is TTable then
      TTable(Self.Components[i]).Close;
  end;
end;

procedure TDMSEVEN_.TBPECalcFields(DataSet: TDataSet);
begin
  if TBPEPENCTIPO.AsString = 'P' then
    TBPEPECDCTIPO.AsString := 'PRODUTO'
  else
      TBPEPECDCTIPO.AsString := 'SERVIÇO';
end;

procedure TDMSEVEN_.TBENAfterPost(DataSet: TDataSet);
begin
  if Inserindo then
  begin
    Self.TBER.Insert;
    Self.TBERERNCGEN.AsInteger := Codigo;
    Self.TBERERDCADT.AsDateTime := Date;
    Self.TBER.Post;
    Inserindo := False;
  end;
end;

procedure TDMSEVEN_.TBENBeforePost(DataSet: TDataSet);
begin
  Codigo := Self.TBENENNCODG.AsInteger;
end;

procedure TDMSEVEN_.TBCTCalcFields(DataSet: TDataSet);
begin
  if TBCTCTCTIPO.AsString = 'F' then
      TBCTCTCDCTIPO.AsString := 'FIXO'
  else
    TBCTCTCDCTIPO.AsString := 'CELULAR';
end;

procedure TDMSEVEN_.TBIOCalcFields(DataSet: TDataSet);
begin
  Self.TBIOIOYTOTAL.Value := Self.TBIOIOYVALR.Value * Self.TBIOIONQTD.Value; 
end;

end.
