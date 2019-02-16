object fMain: TfMain
  Left = 318
  Top = 4
  Width = 1305
  Height = 675
  Caption = #1052#1086#1081' '#1073#1083#1086#1082#1085#1086#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PopupMenu = pm1
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 1289
    Height = 616
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = mmo1Change
  end
  object mm1: TMainMenu
    Left = 88
    Top = 32
    object N1: TMenuItem
      Caption = #1060#1072#1080#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N6Click
      end
    end
    object N7: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      object N8: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1096#1088#1080#1092#1090
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N11: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1077
      end
    end
  end
  object pm1: TPopupMenu
    Left = 160
    Top = 16
    object N12: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      OnClick = N12Click
    end
    object N13: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = N13Click
    end
    object N14: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = N14Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object N16: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N16Click
    end
  end
  object dlgOpen1: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 216
    Top = 88
  end
  object dlgSave1: TSaveDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 328
    Top = 96
  end
  object dlgFont1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 456
    Top = 136
  end
  object dlgColor1: TColorDialog
    Left = 584
    Top = 192
  end
end
