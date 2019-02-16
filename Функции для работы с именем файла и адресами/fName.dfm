object fMain: TfMain
  Left = 317
  Top = 132
  Width = 539
  Height = 530
  Caption = 'fMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 64
    Width = 425
    Height = 25
    AutoSize = False
  end
  object edt1: TEdit
    Left = 56
    Top = 32
    Width = 425
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 64
    Top = 120
    Width = 177
    Height = 41
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1080#1083'!'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 64
    Top = 184
    Width = 177
    Height = 33
    Caption = 'ExtractFileName'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 64
    Top = 232
    Width = 177
    Height = 33
    Caption = 'ExtractFilePath'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 64
    Top = 280
    Width = 177
    Height = 33
    Caption = 'ExtractShortPathName'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 64
    Top = 328
    Width = 177
    Height = 33
    Caption = 'ExtractFileDir'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 64
    Top = 376
    Width = 177
    Height = 33
    Caption = 'ExtractFileDrive'
    TabOrder = 6
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 64
    Top = 424
    Width = 177
    Height = 33
    Caption = 'ExtractFileExt'
    TabOrder = 7
    OnClick = btn7Click
  end
  object dlgOpen1: TOpenDialog
    Left = 288
    Top = 120
  end
end
