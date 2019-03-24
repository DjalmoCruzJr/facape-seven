unit FEM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFEM_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDEMNCGEN: TDBEdit;
    Label2: TLabel;
    DBEDEMNCODG: TDBEdit;
    Label3: TLabel;
    DBEDEMCDESC: TDBEdit;
    DBLCEMCDCEN: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEM_: TFEM_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFEM_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
