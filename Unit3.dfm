object Form3: TForm3
  Left = 192
  Top = 125
  Caption = 'PERHITUNGAN ALGORITMA GENETIKA'
  ClientHeight = 564
  ClientWidth = 1306
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 43
    Height = 13
    Caption = 'Jumlah P'
  end
  object Label12: TLabel
    Left = 16
    Top = 542
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Button1: TButton
    Left = 192
    Top = 8
    Width = 99
    Height = 25
    Caption = 'Random X1 dan X2'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 65
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object SG: TStringGrid
    Left = 8
    Top = 35
    Width = 633
    Height = 230
    FixedCols = 0
    TabOrder = 2
  end
  object SG1: TStringGrid
    Left = 8
    Top = 320
    Width = 633
    Height = 211
    FixedCols = 0
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 72
    Top = 539
    Width = 97
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 267
    Width = 289
    Height = 54
    TabOrder = 5
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 14
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = 'PC'
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 79
      Top = 19
      Width = 23
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '%  = '
      ParentBiDiMode = False
    end
    object Label5: TLabel
      Left = 112
      Top = 15
      Width = 12
      Height = 13
      Caption = '__'
    end
    object Label6: TLabel
      Left = 108
      Top = 34
      Width = 18
      Height = 13
      Caption = '100'
    end
    object Label7: TLabel
      Left = 140
      Top = 22
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label8: TLabel
      Left = 154
      Top = 21
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label9: TLabel
      Left = 194
      Top = 20
      Width = 6
      Height = 13
      Caption = '='
    end
    object Label10: TLabel
      Left = 208
      Top = 21
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label11: TLabel
      Left = 249
      Top = 20
      Width = 25
      Height = 13
      Caption = 'Anak'
    end
    object Label4: TLabel
      Left = 110
      Top = 9
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Edit3: TEdit
      Left = 30
      Top = 16
      Width = 43
      Height = 21
      TabOrder = 0
      Text = '0'
      OnExit = Edit3Exit
    end
  end
  object Button2: TButton
    Left = 303
    Top = 289
    Width = 75
    Height = 25
    Caption = 'Sortir'
    TabOrder = 6
    OnClick = Button2Click
  end
  object SG2: TStringGrid
    Left = 647
    Top = 68
    Width = 490
    Height = 380
    FixedCols = 0
    TabOrder = 7
  end
  object Button3: TButton
    Left = 936
    Top = 17
    Width = 113
    Height = 36
    Caption = 'Proses ALGEN'
    TabOrder = 8
    OnClick = Button3Click
  end
  object GroupBox2: TGroupBox
    Left = 647
    Top = 8
    Width = 250
    Height = 54
    TabOrder = 9
    object Label13: TLabel
      Left = 8
      Top = 21
      Width = 27
      Height = 13
      Caption = 'Pm = '
    end
    object Label14: TLabel
      Left = 79
      Top = 18
      Width = 23
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '%  = '
      ParentBiDiMode = False
    end
    object Label15: TLabel
      Left = 112
      Top = 14
      Width = 12
      Height = 13
      Caption = '__'
    end
    object Label16: TLabel
      Left = 108
      Top = 32
      Width = 18
      Height = 13
      Caption = '100'
    end
    object Label17: TLabel
      Left = 140
      Top = 21
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label18: TLabel
      Left = 154
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label19: TLabel
      Left = 194
      Top = 19
      Width = 6
      Height = 13
      Caption = '='
    end
    object Label20: TLabel
      Left = 208
      Top = 20
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label21: TLabel
      Left = 110
      Top = 8
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Edit5: TEdit
      Left = 41
      Top = 14
      Width = 40
      Height = 21
      TabOrder = 0
      Text = '0'
      OnExit = Edit5Exit
    end
  end
  object GroupBox3: TGroupBox
    Left = 647
    Top = 448
    Width = 421
    Height = 106
    Caption = 'Hasil Terbaik'
    TabOrder = 10
    object Label22: TLabel
      Left = 16
      Top = 40
      Width = 75
      Height = 13
      Caption = 'Nilai Random = '
    end
    object Label23: TLabel
      Left = 16
      Top = 59
      Width = 75
      Height = 13
      Caption = 'Nilai Fitnes     = '
    end
    object Label24: TLabel
      Left = 97
      Top = 40
      Width = 38
      Height = 13
      Caption = 'Label24'
    end
    object Label25: TLabel
      Left = 97
      Top = 62
      Width = 38
      Height = 13
      Caption = 'Label25'
    end
    object TLabel
      Left = 15
      Top = 21
      Width = 76
      Height = 13
      Caption = 'Jumlah Iterasi = '
    end
    object Edit6: TEdit
      Left = 97
      Top = 18
      Width = 56
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Button4: TButton
      Left = 97
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
end
