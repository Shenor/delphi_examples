object Form1: TForm1
  Left = 192
  Top = 167
  Width = 371
  Height = 125
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
  object cbb1: TComboBox
    Left = 48
    Top = 16
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbb1'
    OnChange = cbb1Change
    Items.Strings = (
      #1052#1086#1089#1082#1074#1072
      #1057#1072#1085#1082#1090'-'#1055#1080#1090#1077#1088#1073#1091#1088#1075
      #1050#1088#1072#1089#1085#1086#1076#1072#1088
      #1043#1086#1085#1076#1091#1088#1072#1089
      #1047#1080#1084#1073#1072#1073#1074#1077)
  end
  object edt1: TEdit
    Left = 48
    Top = 48
    Width = 305
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
end
