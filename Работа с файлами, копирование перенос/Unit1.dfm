object fMain: TfMain
  Left = 1390
  Top = 556
  BorderStyle = bsDialog
  Caption = #1088#1072#1073#1086#1090#1072' '#1089' '#1092#1072#1081#1083#1072#1084#1080
  ClientHeight = 294
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 48
    Width = 31
    Height = 19
    Caption = #1063#1090#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 88
    Width = 41
    Height = 19
    Caption = #1050#1091#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 128
    Width = 119
    Height = 19
    Caption = #1056#1072#1079#1084#1077#1088' '#1092#1072#1081#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object g1: TGauge
    Left = 24
    Top = 240
    Width = 289
    Height = 30
    ForeColor = clNavy
    Progress = 0
  end
  object lbl4: TLabel
    Left = 176
    Top = 128
    Width = 81
    Height = 25
    Alignment = taCenter
    AutoSize = False
  end
  object otruda: TEdit
    Left = 72
    Top = 48
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object kuda: TEdit
    Left = 72
    Top = 88
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 24
    Top = 176
    Width = 129
    Height = 33
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 176
    Width = 137
    Height = 33
    Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 320
    Top = 40
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 320
    Top = 80
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dlgOpen1: TOpenDialog
    Left = 312
    Top = 128
  end
  object dlgSave1: TSaveDialog
    Left = 272
    Top = 128
  end
end
