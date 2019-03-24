unit FCE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFCE_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDCENCGTE: TDBEdit;
    Label2: TLabel;
    DBEDCENCODG: TDBEdit;
    Label3: TLabel;
    DBEDCECDESC: TDBEdit;
    Label4: TLabel;
    DBLCCECDCTE: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCE_: TFCE_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFCE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
