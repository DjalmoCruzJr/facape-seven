unit FIT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFIT_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDITNCGTM: TDBEdit;
    Label2: TLabel;
    DBEDITNCGTP: TDBEdit;
    Label3: TLabel;
    DBEDITNCODG: TDBEdit;
    Label4: TLabel;
    DBEDITNCGTE: TDBEdit;
    Label5: TLabel;
    DBEDITNCGCE: TDBEdit;
    Label6: TLabel;
    DBEDITNCGNE: TDBEdit;
    Label7: TLabel;
    DBEDITNCGPE: TDBEdit;
    Label8: TLabel;
    DBEDITYCUST: TDBEdit;
    Label9: TLabel;
    DBEDITYVALR: TDBEdit;
    Label10: TLabel;
    DBEDITNQTD: TDBEdit;
    DBLCITCDCTM: TDBLookupComboBox;
    DBLCITCDCTP: TDBLookupComboBox;
    DBLCITCDCTE: TDBLookupComboBox;
    DBLCITCDCCE: TDBLookupComboBox;
    DBLCITCDCNE: TDBLookupComboBox;
    DBLCITCDCPE: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIT_: TFIT_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFIT_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
