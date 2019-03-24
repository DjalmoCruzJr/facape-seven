unit FTT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFTT_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDTTNCGTV: TDBEdit;
    Label2: TLabel;
    DBLCTTNDCTV: TDBLookupComboBox;
    Label3: TLabel;
    DBEDTTNCGTM: TDBEdit;
    Label4: TLabel;
    DBLCTTCDCTM: TDBLookupComboBox;
    Label5: TLabel;
    DBEDTTNMIN: TDBEdit;
    Label6: TLabel;
    DBEDTTNMAX: TDBEdit;
    Label7: TLabel;
    DBEDTTDCADT: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTT_: TFTT_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFTT_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
