object Form1: TForm1
  Left = 285
  Top = 108
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 0
    Top = 57
    Width = 1289
    Height = 579
    Align = alClient
    Center = True
    Proportional = True
    Stretch = True
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 57
    Align = alTop
    TabOrder = 0
    object btn1: TButton
      Left = 32
      Top = 8
      Width = 161
      Height = 33
      Caption = #1047#1072#1075#1091#1088#1079#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      TabOrder = 0
      OnClick = btn1Click
    end
  end
  object dlgOpenPic1: TOpenPictureDialog
    Left = 192
    Top = 112
  end
end
