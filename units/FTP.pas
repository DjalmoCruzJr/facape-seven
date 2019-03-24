unit FTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  TFTP_ = class(TForm)
    PNCONTROLES: TPanel;
    DBNAVIGATOR: TDBNavigator;
    DBGTP: TDBGrid;
    GROUPBOX: TGroupBox;
    Label1: TLabel;
    DBEDTPNCGTM: TDBEdit;
    Label2: TLabel;
    DBEDTPNCODG: TDBEdit;
    Label3: TLabel;
    DBEDTPCDESC: TDBEdit;
    Label4: TLabel;
    DBEDTPYVALR: TDBEdit;
    Label5: TLabel;
    DBLCTPCDCTM: TDBLookupComboBox;
    BTITENS: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTITENSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTP_: TFTP_;

implementation

uses DMSEVEN, FIT;

{$R *.dfm}

procedure TFTP_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFTP_.BTITENSClick(Sender: TObject);
begin
  FIT_ := TFIT_.Create(Self);
  FIT_.Show;
end;

end.
