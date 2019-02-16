object Form1: TForm1
  Left = 555
  Top = 286
  Width = 609
  Height = 503
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 184
    Top = 120
    Width = 130
    Height = 13
    Alignment = taCenter
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1092#1086#1088#1084#1099
    Layout = tlCenter
  end
  object edt1: TEdit
    Left = 184
    Top = 152
    Width = 241
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    Text = '\'
    OnChange = edt1Change
  end
  object btn1: TButton
    Left = 264
    Top = 184
    Width = 81
    Height = 33
    Caption = #1087#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 1
  end
end
