unit FCT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFCT_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDCTNCGEN: TDBEdit;
    Label2: TLabel;
    DBEDCTNCODG: TDBEdit;
    Label4: TLabel;
    DBEDCTCDESC: TDBEdit;
    Label5: TLabel;
    DBEDCTCNUMR: TDBEdit;
    DBRGCTCTIPO: TDBRadioGroup;
    DBLCCTCDCEN: TDBLookupComboBox;
    PNENDERECO: TPanel;
    LBCODENDERECO: TLabel;
    Label7: TLabel;
    DBEDCTNCGED: TDBEdit;
    DBLCCTCDCED: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCT_: TFCT_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFCT_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
