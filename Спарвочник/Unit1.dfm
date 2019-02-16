object fMain: TfMain
  Left = 1332
  Top = 280
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 360
  ClientWidth = 442
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
    Left = 16
    Top = 16
    Width = 121
    Height = 25
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = #1058#1077#1083#1077#1092#1086#1085#13#10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 80
    Width = 89
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 0
    Top = 120
    Width = 105
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 160
    Width = 97
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1084#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 0
    Top = 184
    Width = 113
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 0
    Top = 208
    Width = 113
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = #1054#1090#1095#1077#1089#1080#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 0
    Top = 232
    Width = 113
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = #1040#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 8
    Top = 48
    Width = 241
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object medt1: TMaskEdit
    Left = 112
    Top = 80
    Width = 129
    Height = 21
    EditMask = '9\(999\)000-0000;1;_'
    MaxLength = 14
    TabOrder = 1
    Text = ' (   )   -    '
  end
  object cbb2: TComboBox
    Left = 112
    Top = 120
    Width = 57
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      #1044#1072
      #1053#1077#1090)
  end
  object edt1: TEdit
    Left = 112
    Top = 160
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object edt2: TEdit
    Left = 112
    Top = 184
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object edt3: TEdit
    Left = 112
    Top = 208
    Width = 185
    Height = 21
    TabOrder = 5
  end
  object edt4: TEdit
    Left = 112
    Top = 232
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object btn1: TButton
    Left = 40
    Top = 272
    Width = 161
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1077#1083#1077#1092#1086#1085
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 208
    Top = 272
    Width = 153
    Height = 33
    Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    TabOrder = 8
    OnClick = btn2Click
  end
end
