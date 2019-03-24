unit FES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFES_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDESCUF: TDBEdit;
    Label2: TLabel;
    DBEDESCDESC: TDBEdit;
    GroupBox1: TGroupBox;
    EDPESQUISA: TEdit;
    CBINDICES: TComboBox;
    BTPESQUISAR: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBINDICESChange(Sender: TObject);
    procedure BTPESQUISARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FES_: TFES_;

implementation

uses DMSEVEN, UTILS;

{$R *.dfm}

procedure TFES_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFES_.CBINDICESChange(Sender: TObject);
begin
  if Self.CBINDICES.Items.Count > 0 then
  begin
      case Self.CBINDICES.ItemIndex of
        0: DMSEVEN_.TBES.IndexName := '';
        1: DMSEVEN_.TBES.IndexName := 'SIESCDESC';
      end;
  end
  else
    Raise Exception.Create('Não foi possível carregar os índices da Tabela ESTADO.'+ #13 +'Verifique!');
end;

procedure TFES_.BTPESQUISARClick(Sender: TObject);
begin
  if Trim(Self.EDPESQUISA.Text) = '' then
  begin
    ShowMessage('A referência da pesquisa deve ser informada.'+ #13 +'Verifique!');
    if Self.EDPESQUISA.CanFocus then Self.EDPESQUISA.SetFocus;
    Exit;
  end;
  try
    DMSEVEN_.TBES.FindNearest([AnsiUpperCase(Trim(Self.EDPESQUISA.Text))]);
    Self.EDPESQUISA.Clear;
  except
    ShowMessage('Nenhum registro encontrado'+#13+'para a referência informada!');
  end;
end;

procedure TFES_.FormShow(Sender: TObject);
begin
  LoadComboBoxIndices(DMSEVEN_.TBES, Self.CBINDICES);
  Self.CBINDICES.ItemIndex := 0;
end;

end.
