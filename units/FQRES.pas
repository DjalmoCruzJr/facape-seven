unit FQRES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFQRES_ = class(TForm)
    QREP: TQuickRep;
    QRBHEADER: TQRBand;
    QRBTITLE: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLNOMEEMPRESA: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    QRShape4: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRES_: TFQRES_;

implementation

uses DMSEVEN;

{$R *.dfm}

procedure TFQRES_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
