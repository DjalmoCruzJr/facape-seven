unit FNE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFNE_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDNENCGTE: TDBEdit;
    Label2: TLabel;
    DBEDNENCGCE: TDBEdit;
    Label3: TLabel;
    DBEDNENCODG: TDBEdit;
    Label4: TLabel;
    DBEDNECDESC: TDBEdit;
    DBLCNECDCTE: TDBLookupComboBox;
    DBLCNECDCCE: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNE_: TFNE_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFNE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
