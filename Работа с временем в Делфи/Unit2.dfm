object fxExample: TfxExample
  Left = 680
  Top = 147
  Width = 544
  Height = 375
  Caption = #1059#1095#1077#1073#1085#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbOutput: TLabel
    Left = 0
    Top = 239
    Width = 528
    Height = 13
    Align = alBottom
  end
  object pnl1: TPanel
    Left = 0
    Top = 252
    Width = 528
    Height = 84
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bbClose: TBitBtn
      Left = 128
      Top = 48
      Width = 81
      Height = 33
      TabOrder = 0
      Kind = bkCancel
    end
    object bbRun: TBitBtn
      Left = 32
      Top = 48
      Width = 81
      Height = 33
      TabOrder = 1
      OnClick = bbRunClick
      Kind = bkOK
    end
    object edInput: TEdit
      Left = 128
      Top = 16
      Width = 289
      Height = 21
      TabOrder = 2
    end
  end
  object mmOutput: TMemo
    Left = 0
    Top = 0
    Width = 528
    Height = 239
    Align = alClient
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
end
