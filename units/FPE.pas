unit FPE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFPE_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGTP: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDPENCGTE: TDBEdit;
    Label2: TLabel;
    DBEDPENCGCE: TDBEdit;
    Label3: TLabel;
    DBEDPENCGNE: TDBEdit;
    Label4: TLabel;
    DBEDPENCODG: TDBEdit;
    Label5: TLabel;
    DBEDPECDESC: TDBEdit;
    DBRGPECTIPO: TDBRadioGroup;
    DBEDPECDCTE: TDBLookupComboBox;
    DBLCNECDCCE: TDBLookupComboBox;
    DBLCPECDCNE: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPE_: TFPE_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFPE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
