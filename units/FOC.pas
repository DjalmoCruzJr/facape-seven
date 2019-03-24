unit FOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFOC_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGOC: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDOCNCODG: TDBEdit;
    DBRGOCCLOCL: TDBRadioGroup;
    PNESPACO: TPanel;
    Label6: TLabel;
    DBEDOCNC2EN: TDBEdit;
    Label7: TLabel;
    DBLCOCDC2EN: TDBLookupComboBox;
    Label10: TLabel;
    DBEDOCDDATA: TDBEdit;
    Label11: TLabel;
    DBEDOCHHORA: TDBEdit;
    Label12: TLabel;
    DBEDOCNPESS: TDBEdit;
    DBRGOCCTIPO: TDBRadioGroup;
    Label14: TLabel;
    DBEDOCNCGTM: TDBEdit;
    Label15: TLabel;
    DBEDOCNCGTP: TDBEdit;
    Label13: TLabel;
    DBEDOCNCGFP: TDBEdit;
    Label16: TLabel;
    DBEDOCCOBS: TDBEdit;
    Label17: TLabel;
    DBMOOCMOBS: TDBMemo;
    DBLCOCCDCTM: TDBLookupComboBox;
    DBLCOCDCTP: TDBLookupComboBox;
    DBLCOCDCFP: TDBLookupComboBox;
    Label18: TLabel;
    DBEDOCDCADT: TDBEdit;
    Label19: TLabel;
    DBEDOCHCADT: TDBEdit;
    BTITENS: TButton;
    DBGIO: TDBGrid;
    PNCLIENTE: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEDOCNCGEN: TDBEdit;
    DBLCOCDCEN: TDBLookupComboBox;
    DBEDOCNCGED: TDBEdit;
    DBLCOCDCED: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTITENSClick(Sender: TObject);
    procedure DBRGOCCLOCLChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOC_: TFOC_;

implementation

uses DMSEVEN, FIO;

{$R *.dfm}

procedure TFOC_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFOC_.BTITENSClick(Sender: TObject);
begin
  FIO_ := TFIO_.Create(Self);
  FIO_.Show;
end;

procedure TFOC_.DBRGOCCLOCLChange(Sender: TObject);
begin
  if DBRGOCCLOCL.ItemIndex = 0 then
  begin
    PNCLIENTE.Visible := True;
    PNESPACO.Visible  := False;
  end
  else
  begin
    PNCLIENTE.Visible := False;
    PNESPACO.Visible  := True;
  end;
end;

end.

