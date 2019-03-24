unit FCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFCD_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDCDNCGES: TDBEdit;
    Label2: TLabel;
    DBEDCDNCODG: TDBEdit;
    Label3: TLabel;
    DBEDCDCDESC: TDBEdit;
    Label4: TLabel;
    DBLCCDCDCES: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCD_: TFCD_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFCD_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
