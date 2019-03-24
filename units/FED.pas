unit FED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFED_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGRID: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDEDNCGEN: TDBEdit;
    Label2: TLabel;
    DBEDEDNCODG: TDBEdit;
    Label3: TLabel;
    DBEDEDCDESC: TDBEdit;
    Label4: TLabel;
    DBEDEDCCEP: TDBEdit;
    Label5: TLabel;
    DBEDEDCNUM: TDBEdit;
    Label6: TLabel;
    DBEDEDCOBS: TDBEdit;
    Label7: TLabel;
    DBMEEDMOBS: TDBMemo;
    DBLCEDCDCEN: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FED_: TFED_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFED_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
