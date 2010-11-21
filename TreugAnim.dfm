object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 877
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img: TImage
    Left = 8
    Top = 0
    Width = 793
    Height = 840
  end
  object btn: TButton
    Left = 432
    Top = 846
    Width = 75
    Height = 25
    Caption = 'Draw'
    TabOrder = 0
    OnClick = btnClick
  end
  object edta: TEdit
    Left = 0
    Top = 848
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtb: TEdit
    Left = 144
    Top = 848
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtc: TEdit
    Left = 289
    Top = 848
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object timer: TTimer
    Enabled = False
    Left = 776
    Top = 848
  end
end
