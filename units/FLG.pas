unit FLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFLG_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDLGCCEP: TDBEdit;
    Label2: TLabel;
    DBLCLGCDESC: TDBEdit;
    Label3: TLabel;
    DBEDLGNCGES: TDBEdit;
    Label4: TLabel;
    DBEDLGNCGCD: TDBEdit;
    Label5: TLabel;
    DBEDLGNCGBR: TDBEdit;
    Label6: TLabel;
    DBEDLGNCGTL: TDBEdit;
    DBLCLGCDCES: TDBLookupComboBox;
    DBLCLGCDCCD: TDBLookupComboBox;
    DBLCLGCDCBR: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLCLGCDCTL: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLG_: TFLG_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFLG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
