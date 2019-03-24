unit FBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFBR_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDBRNCGES: TDBEdit;
    Label2: TLabel;
    DBEDBRNCGCD: TDBEdit;
    Label3: TLabel;
    DBEDBRNCODG: TDBEdit;
    Label4: TLabel;
    DBEDBRCDESC: TDBEdit;
    DBLCBRCDCES: TDBLookupComboBox;
    DBLCBRCDCCD: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBR_: TFBR_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFBR_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
