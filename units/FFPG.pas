unit FFPG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  TeeProcs, TeEngine, Chart, DbChart, Series, Mask;

type
  TFTMG_ = class(TForm)
    DBCHART: TDBChart;
    Series1: TPieSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTMG_: TFTMG_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFTMG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
