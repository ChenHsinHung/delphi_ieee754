object Form1: TForm1
  Left = 147
  Top = 165
  Width = 1088
  Height = 563
  Caption = 'Ieee754_Convert'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 44
    Top = 40
    Width = 70
    Height = 20
    Caption = 'Hex Code'
  end
  object Label2: TLabel
    Left = 16
    Top = 84
    Width = 96
    Height = 20
    Caption = 'Result(Float) '
  end
  object Edit1: TEdit
    Left = 124
    Top = 36
    Width = 345
    Height = 28
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 488
    Top = 84
    Width = 121
    Height = 25
    Caption = 'Convert'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 488
    Top = 36
    Width = 121
    Height = 25
    Caption = 'Generate HEX'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 128
    Top = 80
    Width = 337
    Height = 28
    TabOrder = 3
    Text = 'Edit2'
  end
end
