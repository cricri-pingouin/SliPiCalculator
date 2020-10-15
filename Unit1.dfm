object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pi'
  ClientHeight = 188
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object lblIterations: TLabel
    Left = 8
    Top = 8
    Width = 160
    Height = 16
    Caption = 'Number of iterations to run:'
  end
  object lblPi: TLabel
    Left = 8
    Top = 112
    Width = 98
    Height = 16
    Caption = 'Value calculated:'
  end
  object lblTime: TLabel
    Left = 9
    Top = 164
    Width = 305
    Height = 16
    Caption = 'Calculation time:'
  end
  object btnCalcPi: TButton
    Left = 8
    Top = 60
    Width = 145
    Height = 41
    Caption = 'Calculate Pi'
    TabOrder = 0
    OnClick = btnCalcPiClick
  end
  object edtPi: TEdit
    Left = 8
    Top = 134
    Width = 305
    Height = 24
    TabOrder = 1
  end
  object edtIterations: TEdit
    Left = 8
    Top = 30
    Width = 305
    Height = 24
    TabOrder = 2
    Text = '100000000'
  end
  object rbPascal: TRadioButton
    Left = 184
    Top = 68
    Width = 65
    Height = 25
    Caption = 'Pascal'
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object rbAsm: TRadioButton
    Left = 255
    Top = 68
    Width = 50
    Height = 25
    Caption = 'Asm'
    TabOrder = 4
  end
end
