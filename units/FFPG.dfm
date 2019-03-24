object FTMG_: TFTMG_
  Left = 191
  Top = 117
  Width = 1032
  Height = 608
  Align = alTop
  Caption = 'Gr'#225'fico de Temas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBCHART: TDBChart
    Left = 0
    Top = 0
    Width = 1024
    Height = 577
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TDBChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.DateTimeFormat = 'hh:mm'
    LeftAxis.LabelsMultiLine = True
    LeftAxis.Title.Caption = 'Gr'#225'fico de Formas de Pagamento'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -16
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold, fsItalic]
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      DataSource = DMSEVEN_.TBTP
      SeriesColor = clRed
      Title = 'Gr'#225'fico de Formas de Pagamento'
      XLabelsSource = 'TPCDESC'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'TPYVALR'
    end
  end
end
