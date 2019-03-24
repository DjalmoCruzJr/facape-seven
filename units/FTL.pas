unit FTL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFTL_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDTLNCODG: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTL_: TFTL_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFTL_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
