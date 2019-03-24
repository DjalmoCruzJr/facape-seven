unit FMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ActnList, ShellApi;

type
  TFMAIN_ = class(TForm)
    MMMAIN: TMainMenu;
    Cadastrar1: TMenuItem;
    Relatrios1: TMenuItem;
    Grficos1: TMenuItem;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    ILMAIN: TImageList;
    Dependentes1: TMenuItem;
    N1: TMenuItem;
    Estoque1: TMenuItem;
    N2: TMenuItem;
    Evento1: TMenuItem;
    N3: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionrios1: TMenuItem;
    Usurios1: TMenuItem;
    Dependentes2: TMenuItem;
    ipodeEstoque1: TMenuItem;
    ClassifaodeEstoque1: TMenuItem;
    NomeGenricodeEstoque1: TMenuItem;
    N4: TMenuItem;
    ProdutosdoEstoque1: TMenuItem;
    Sobreosistema1: TMenuItem;
    Help1: TMenuItem;
    Oramento1: TMenuItem;
    Novo1: TMenuItem;
    SairdoSistema1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    Bairros1: TMenuItem;
    Logradouros1: TMenuItem;
    iposdeLogradouros1: TMenuItem;
    N5: TMenuItem;
    iposdeEventos1: TMenuItem;
    emas1: TMenuItem;
    emasporTipodeEvento1: TMenuItem;
    PacotesdeFestas1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    FormasdePagamento1: TMenuItem;
    N9: TMenuItem;
    Parmetros1: TMenuItem;
    FormasdePagamento2: TMenuItem;
    Estados2: TMenuItem;
    EspaodeFesta1: TMenuItem;
    procedure SairdoSistema1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    procedure iposdeLogradouros1Click(Sender: TObject);
    procedure Logradouros1Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Estados2Click(Sender: TObject);
    procedure Sobreosistema1Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure iposdeEventos1Click(Sender: TObject);
    procedure emas1Click(Sender: TObject);
    procedure emasporTipodeEvento1Click(Sender: TObject);
    procedure ipodeEstoque1Click(Sender: TObject);
    procedure ClassifaodeEstoque1Click(Sender: TObject);
    procedure PacotesdeFestas1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure EspaodeFesta1Click(Sender: TObject);
    procedure Dependentes2Click(Sender: TObject);
    procedure FormasdePagamento2Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure NomeGenricodeEstoque1Click(Sender: TObject);
    procedure ProdutosdoEstoque1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN_: TFMAIN_;

implementation

uses FES, FCD, FBR, FTL, FLG, FFP, FPR, FQRES, DMSEVEN, FSOBRE, FTV, FTM, FTT,
  FTE, FCE, FTP, FEN, FFPG, FOC, FNE, FPE;

{$R *.dfm}

procedure TFMAIN_.SairdoSistema1Click(Sender: TObject);
begin
  Close;
end;

procedure TFMAIN_.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var msg: string;
begin
  msg := 'Deseja realmente encerrar a aplicação ?';
  if (MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk) then
    CanClose := True
  else
    CanClose := False;
end;

procedure TFMAIN_.Estados1Click(Sender: TObject);
begin
  FES_ := TFES_.Create(Application);
  FES_.Show;
end;

procedure TFMAIN_.Cidades1Click(Sender: TObject);
begin
  FCD_ := TFCD_.Create(Application);
  FCD_.Show;
end;

procedure TFMAIN_.Bairros1Click(Sender: TObject);
begin
  FBR_ := TFBR_.Create(Application);
  FBR_.Show;
end;

procedure TFMAIN_.iposdeLogradouros1Click(Sender: TObject);
begin
  FTL_ := TFTL_.Create(Application);
  FTL_.Show;
end;

procedure TFMAIN_.Logradouros1Click(Sender: TObject);
begin
  FLG_ := TFLG_.Create(Application);
  FLG_.Show;
end;

procedure TFMAIN_.FormasdePagamento1Click(Sender: TObject);
begin
  FFP_ := TFFP_.Create(Application);
  FFP_.Show;
end;

procedure TFMAIN_.Parmetros1Click(Sender: TObject);
begin
  FPR_ := TFPR_.Create(Application);
  FPR_.Show;
end;

procedure TFMAIN_.Estados2Click(Sender: TObject);
begin
  DMSEVEN_.QRES.Close;
  DMSEVEN_.QRES.Open;
  FQRES_ := TFQRES_.Create(Self);
  FQRES_.QRLNOMEEMPRESA.Caption := 'Magnus Eventos LTDA';
  FQRES_.QREP.Preview;
end;

procedure TFMAIN_.Sobreosistema1Click(Sender: TObject);
begin
  FSOBRE_ := TFSOBRE_.Create(Application);
  FSOBRE_.ShowModal;
  FreeAndNil(FSOBRE_);
end;

procedure TFMAIN_.Help1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'D:\Projetos\delphi\Seven\help\Seven.chm', nil, nil, SW_SHOW);
end;

procedure TFMAIN_.iposdeEventos1Click(Sender: TObject);
begin
  FTV_ := TFTV_.Create(Application);
  FTV_.Show;
end;

procedure TFMAIN_.emas1Click(Sender: TObject);
begin
  FTM_ := TFTM_.Create(Application);
  FTM_.Show;
end;

procedure TFMAIN_.emasporTipodeEvento1Click(Sender: TObject);
begin
  FTT_ := TFTT_.Create(Application);
  FTT_.Show;
end;

procedure TFMAIN_.ipodeEstoque1Click(Sender: TObject);
begin
  FTE_ := TFTE_.Create(Application);
  FTE_.Show;
end;

procedure TFMAIN_.ClassifaodeEstoque1Click(Sender: TObject);
begin
  FCE_ := TFCE_.Create(Application);
  FCE_.Show;
end;

procedure TFMAIN_.PacotesdeFestas1Click(Sender: TObject);
begin
  FTP_ := TFTP_.Create(Application);
  FTP_.Show;
end;

procedure TFMAIN_.Clientes1Click(Sender: TObject);
begin
  DMSeven_.TBRE.FindKey([1]);
  FEN_ := TFEN_.Create(Application);
  FEN_.show;
end;

procedure TFMAIN_.Fornecedores1Click(Sender: TObject);
begin
  DMSeven_.TBRE.FindKey([2]);
  FEN_ := TFEN_.Create(Application);
  FEN_.show;
end;

procedure TFMAIN_.Funcionrios1Click(Sender: TObject);
begin
  DMSeven_.TBRE.FindKey([4]);
  FEN_ := TFEN_.Create(Application);
  FEN_.show;
end;

procedure TFMAIN_.Usurios1Click(Sender: TObject);
begin
  DMSeven_.TBRE.FindKey([5]);
  FEN_ := TFEN_.Create(Application);
  FEN_.show;
end;

procedure TFMAIN_.EspaodeFesta1Click(Sender: TObject);
begin
  DMSeven_.TBRE.FindKey([3]);
  FEN_ := TFEN_.Create(Application);
  FEN_.show;
end;

procedure TFMAIN_.Dependentes2Click(Sender: TObject);
begin
  DMSeven_.TBRE.FindKey([6]);
  FEN_ := TFEN_.Create(Application);
  FEN_.show;
end;

procedure TFMAIN_.FormasdePagamento2Click(Sender: TObject);
begin
  DMSEVEN_.QRTMG.Close;
  DMSEVEN_.QRTMG.Open;


  FTMG_ := TFTMG_.Create(Self);
  FTMG_.Show;
end;

procedure TFMAIN_.Novo1Click(Sender: TObject);
begin
  FOC_ := TFOC_.Create(Application);
  FOC_.Show;
end;

procedure TFMAIN_.NomeGenricodeEstoque1Click(Sender: TObject);
begin
  FNE_ := TFNE_.Create(Application);
  FNE_.Show;
end;

procedure TFMAIN_.ProdutosdoEstoque1Click(Sender: TObject);
begin
  FPE_ := TFPE_.Create(Application);
  FPE_.Show;
end;

end.
