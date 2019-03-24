program Seven;

uses
  Forms,
  DMSEVEN in 'units\DMSEVEN.pas' {DMSEVEN_: TDataModule},
  FBASE in 'units\FBASE.pas' {FBASE_},
  FBR in 'units\FBR.pas' {FBR_},
  FCD in 'units\FCD.pas' {FCD_},
  FES in 'units\FES.pas' {FES_},
  FFP in 'units\FFP.pas' {FFP_},
  FLG in 'units\FLG.pas' {FLG_},
  FMAIN in 'units\FMAIN.pas' {FMAIN_},
  FPR in 'units\FPR.pas' {FPR_},
  FQRES in 'units\FQRES.pas' {FQRES_},
  FSOBRE in 'units\FSOBRE.pas' {FSOBRE_},
  FTL in 'units\FTL.pas' {FTL_},
  FTM in 'units\FTM.pas' {FTM_},
  FTT in 'units\FTT.pas' {FTT_},
  FTV in 'units\FTV.pas' {FTV_},
  UTILS in 'units\UTILS.pas',
  FTE in 'units\FTE.pas' {FTE_},
  FCE in 'units\FCE.pas' {FCE_},
  FTP in 'units\FTP.pas' {FTP_},
  FIT in 'units\FIT.pas' {FIT_},
  FEN in 'units\FEN.pas' {FEN_},
  FFPG in 'units\FFPG.pas' {FTMG_},
  FED in 'units\FED.pas' {FED_},
  FEM in 'units\FEM.pas' {FEM_},
  FCT in 'units\FCT.pas' {FCT_},
  FOC in 'units\FOC.pas' {FOC_},
  FIO in 'units\FIO.pas' {FIO_},
  FNE in 'units\FNE.pas' {FNE_},
  FPE in 'units\FPE.pas' {FPE_};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Seven - Sistema de Eventos';
  Application.CreateForm(TDMSEVEN_, DMSEVEN_);
  Application.CreateForm(TFMAIN_, FMAIN_);
  Application.Run;
end.
