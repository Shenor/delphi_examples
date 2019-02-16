object Form1: TForm1
  Left = 857
  Top = 298
  Width = 243
  Height = 397
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
  object lst1: TListBox
    Left = 8
    Top = 16
    Width = 209
    Height = 193
    ItemHeight = 13
    Items.Strings = (
      'MS-DOS'
      'Windows 3.10'
      'Windows 95'
      'Windows 98'
      'Windows ME'
      'Windows 2000'
      'Windows XP'
      'Windows Vista'
      'Unix'
      'Linux'
      'OS/2')
    TabOrder = 0
    OnClick = lst1Click
  end
  object edt1: TEdit
    Left = 8
    Top = 216
    Width = 209
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 16
    Top = 248
    Width = 97
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 248
    Width = 89
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = btn2Click
  end
end
