unit FEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask, ExtDlgs;

type
  TFEN_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNEN: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDENNCODG: TDBEdit;
    Label2: TLabel;
    DBEDENCDESC: TDBEdit;
    Label3: TLabel;
    DBIMENOFOTO: TDBImage;
    DBRGENCTIPO: TDBRadioGroup;
    BTFOTO: TButton;
    OPDFOTO: TOpenPictureDialog;
    DBNER: TDBNavigator;
    PNJURIDICA: TPanel;
    Label6: TLabel;
    DBEDENCCNPJ: TDBEdit;
    Label7: TLabel;
    DBEDENCRZSC: TDBEdit;
    Label8: TLabel;
    DBEDENCIE: TDBEdit;
    Label9: TLabel;
    DBEDENCIM: TDBEdit;
    PNFISICA: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBEDENCAPEL: TDBEdit;
    DBEDENCCPF: TDBEdit;
    DBRGENCSEXO: TDBRadioGroup;
    DBRGENCETCV: TDBRadioGroup;
    Label10: TLabel;
    DBEDENDCADT: TDBEdit;
    Label11: TLabel;
    DBEDENHCADT: TDBEdit;
    PNDEPENDENTES: TPanel;
    Label12: TLabel;
    DBEDENNC2EN: TDBEdit;
    Label13: TLabel;
    DBEDENNC3EN: TDBEdit;
    Label14: TLabel;
    DBEDENNC4EN: TDBEdit;
    BTENDERECOS: TButton;
    BTCONTATOS: TButton;
    BTEMAILS: TButton;
    Label15: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label17: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTFOTOClick(Sender: TObject);
    procedure DBRGENCTIPOChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNENClick(Sender: TObject; Button: TNavigateBtn);
    procedure BTENDERECOSClick(Sender: TObject);
    procedure BTEMAILSClick(Sender: TObject);
    procedure BTCONTATOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEN_: TFEN_;

implementation

uses DMSEVEN, DB, FED, FEM, FCT;

{$R *.dfm}

procedure TFEN_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFEN_.BTFOTOClick(Sender: TObject);
begin
  if (self.OPDFOTO.Execute) then
  begin
    Self.DBIMENOFOTO.Picture.LoadFromFile(Self.OPDFOTO.FileName);
  end;
end;

procedure TFEN_.DBRGENCTIPOChange(Sender: TObject);
begin
  if DBRGENCTIPO.ItemIndex = 0 then
  begin
    PNFISICA.Visible   := True;
    PNJURIDICA.Visible := False;
  end
  else
  begin
    PNJURIDICA.Visible := True;
    PNFISICA.Visible   := False;
  end;
end;

procedure TFEN_.FormShow(Sender: TObject);
begin
  if DMSEVEN_.TBRERENCODG.AsInteger = 1 then
  begin
    Self.Caption := 'Cadastro de Clientes';
    PNDEPENDENTES.Visible := False;
  end
  else if DMSEVEN_.TBRERENCODG.AsInteger = 2 then
  begin
    Self.Caption := 'Cadastro de Fornecedores';
    PNDEPENDENTES.Visible := False;
  end
  else if DMSEVEN_.TBRERENCODG.AsInteger = 3 then
  begin
    Self.Caption := 'Cadastro de Espaços de Festa';
    PNDEPENDENTES.Visible := False;
    PNFISICA.Visible      := False;
  end
  else if DMSEVEN_.TBRERENCODG.AsInteger = 4 then
  begin
    Self.Caption := 'Cadastro de Funcionários';
    PNDEPENDENTES.Visible := False;
    PNJURIDICA.Visible    := False;
  end
  else if DMSEVEN_.TBRERENCODG.AsInteger = 5 then
  begin
    Self.Caption := 'Cadastro de Usuários';
    PNDEPENDENTES.Visible := False;
    PNJURIDICA.Visible    := False;
  end
  else if DMSEVEN_.TBRERENCODG.AsInteger = 6 then
  begin
    Self.Caption := 'Cadastro de Dependentes';
    PNDEPENDENTES.Visible := True;
    PNJURIDICA.Visible    := False;
  end;
end;

procedure TFEN_.DBNENClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert] then
    Inserindo := true
  else
    Inserindo := False;
end;

procedure TFEN_.BTENDERECOSClick(Sender: TObject);
begin
  FED_ := TFED_.Create(Self);
  FED_.Show;
end;

procedure TFEN_.BTEMAILSClick(Sender: TObject);
begin
  FEM_ := TFEM_.Create(Self);
  FEM_.Show;
end;

procedure TFEN_.BTCONTATOSClick(Sender: TObject);
begin
  FCT_ := TFCT_.Create(Self);
  FCT_.Show;
end;

end.
