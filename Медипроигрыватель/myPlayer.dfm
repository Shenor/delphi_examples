object fMain: TfMain
  Left = 545
  Top = 163
  Width = 515
  Height = 675
  Caption = #1052#1077#1076#1080#1072#1087#1088#1086#1080#1075#1088#1099#1074#1072#1090#1077#1083#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 540
    Width = 499
    Height = 76
    Align = alBottom
    TabOrder = 0
    object edt1: TEdit
      Left = 0
      Top = 0
      Width = 497
      Height = 25
      ReadOnly = True
      TabOrder = 0
    end
    object MP: TMediaPlayer
      Left = 0
      Top = 40
      Width = 496
      Height = 33
      Display = pnl2
      TabOrder = 1
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 540
    Align = alClient
    Color = clBackground
    TabOrder = 1
  end
  object mm1: TMainMenu
    Left = 456
    object N1: TMenuItem
      Caption = #1060#1072#1080#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099#1081#1090#1080
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
  end
  object dlgOpen1: TOpenDialog
    Filter = 
      #1042#1080#1076#1077#1086'-'#1092#1072#1081#1083#1099'|*.avi;* .mpg|'#1040#1091#1076#1080#1086'-'#1092#1072#1083#1099'|*.mav; *.mid;* .mp3|'#1042#1089#1077' '#1092#1072#1081#1083 +
      #1099'|*.*'
    Left = 408
    Top = 8
  end
end
