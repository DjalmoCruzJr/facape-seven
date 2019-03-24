unit FSOBRE;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TFSOBRE_ = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSOBRE_: TFSOBRE_;

implementation

{$R *.dfm}

procedure TFSOBRE_.OKButtonClick(Sender: TObject);
begin
  Close;
end;

end.

