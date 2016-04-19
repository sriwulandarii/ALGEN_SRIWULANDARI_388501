object Form1: TForm1
  Left = 177
  Top = 116
  Caption = 'KONSTRUKSI PERMASALAHAN'
  ClientHeight = 552
  ClientWidth = 1101
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 392
    Top = 8
    Width = 210
    Height = 24
    Caption = 'ALGORITMA GENETIKA'
  end
  object Label2: TLabel
    Left = 208
    Top = 40
    Width = 635
    Height = 24
    Caption = 'ALGORITMA GENETIKA UNTUK OPTIMASI PRODUKSI BARANG SEPATU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 88
    Width = 249
    Height = 121
    Caption = 'Keuntungan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 64
      Height = 16
      Caption = 'Sepatu A'
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 64
      Height = 16
      Caption = 'Sepatu B'
    end
    object Edit1: TEdit
      Left = 78
      Top = 32
      Width = 161
      Height = 24
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 80
      Top = 72
      Width = 161
      Height = 24
      TabOrder = 1
      Text = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 336
    Top = 88
    Width = 257
    Height = 121
    Caption = 'Sisa Bahan Tersedia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 30
      Height = 16
      Caption = 'Kulit'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 61
      Height = 16
      Caption = 'Pewarna'
    end
    object Label7: TLabel
      Left = 8
      Top = 88
      Width = 85
      Height = 16
      Caption = 'Alas Sepatu'
    end
    object Edit3: TEdit
      Left = 112
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 0
      Text = '0'
    end
    object Edit4: TEdit
      Left = 112
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 1
      Text = '0'
    end
    object Edit5: TEdit
      Left = 112
      Top = 88
      Width = 121
      Height = 24
      TabOrder = 2
      Text = '0'
    end
  end
  object GroupBox3: TGroupBox
    Left = 640
    Top = 88
    Width = 425
    Height = 121
    Caption = 'Konstrain Kebutuhan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label8: TLabel
      Left = 16
      Top = 24
      Width = 85
      Height = 16
      Caption = 'Konstrain 1 :'
    end
    object Label9: TLabel
      Left = 16
      Top = 56
      Width = 85
      Height = 16
      Caption = 'Konstrain 2 :'
    end
    object Label10: TLabel
      Left = 16
      Top = 88
      Width = 89
      Height = 16
      Caption = 'Konstrain 3 : '
    end
    object Edit6: TEdit
      Left = 136
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 0
      Text = '0'
    end
    object Edit7: TEdit
      Left = 272
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 1
      Text = '0'
    end
    object Edit8: TEdit
      Left = 136
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 2
      Text = '0'
    end
    object Edit9: TEdit
      Left = 272
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 3
      Text = '0'
    end
    object Edit10: TEdit
      Left = 136
      Top = 88
      Width = 121
      Height = 24
      TabOrder = 4
      Text = '0'
    end
    object Edit11: TEdit
      Left = 272
      Top = 88
      Width = 121
      Height = 24
      TabOrder = 5
      Text = '0'
    end
  end
  object Button1: TButton
    Left = 784
    Top = 216
    Width = 281
    Height = 33
    Caption = 'SIMPAN PROBLEM'
    TabOrder = 3
    OnClick = Button1Click
  end
  object GroupBox5: TGroupBox
    Left = 40
    Top = 264
    Width = 1033
    Height = 241
    Caption = 'Konstruksi Masalah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label11: TLabel
      Left = 8
      Top = 32
      Width = 117
      Height = 16
      Caption = 'Fungsi Fitness = '
    end
    object Label12: TLabel
      Left = 136
      Top = 32
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label13: TLabel
      Left = 224
      Top = 32
      Width = 9
      Height = 16
      Caption = '+'
    end
    object Label14: TLabel
      Left = 280
      Top = 32
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label15: TLabel
      Left = 376
      Top = 32
      Width = 6
      Height = 16
      Caption = '-'
    end
    object Label16: TLabel
      Left = 416
      Top = 32
      Width = 303
      Height = 16
      Caption = '(K * ( konstrain 1 + Konstrain 2+ Konstrain 3))'
    end
    object Label17: TLabel
      Left = 8
      Top = 72
      Width = 113
      Height = 16
      Caption = 'Konstrain      1 = '
    end
    object Label18: TLabel
      Left = 136
      Top = 72
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label19: TLabel
      Left = 224
      Top = 72
      Width = 9
      Height = 16
      Caption = '+'
    end
    object Label20: TLabel
      Left = 280
      Top = 72
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label21: TLabel
      Left = 376
      Top = 72
      Width = 17
      Height = 16
      Caption = '<='
    end
    object Label22: TLabel
      Left = 472
      Top = 72
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label23: TLabel
      Left = 8
      Top = 112
      Width = 113
      Height = 16
      Caption = 'Konstrain      2 = '
    end
    object Label24: TLabel
      Left = 136
      Top = 112
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label25: TLabel
      Left = 224
      Top = 112
      Width = 9
      Height = 16
      Caption = '+'
    end
    object Label26: TLabel
      Left = 280
      Top = 112
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label27: TLabel
      Left = 376
      Top = 112
      Width = 17
      Height = 16
      Caption = '<='
    end
    object Label28: TLabel
      Left = 472
      Top = 112
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label29: TLabel
      Left = 8
      Top = 152
      Width = 109
      Height = 16
      Caption = 'Konstrain     3 = '
    end
    object Label30: TLabel
      Left = 136
      Top = 152
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label31: TLabel
      Left = 224
      Top = 152
      Width = 9
      Height = 16
      Caption = '+'
    end
    object Label32: TLabel
      Left = 280
      Top = 152
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Label33: TLabel
      Left = 376
      Top = 152
      Width = 17
      Height = 16
      Caption = '<='
    end
    object Label34: TLabel
      Left = 472
      Top = 152
      Width = 9
      Height = 16
      Caption = '0'
    end
    object Button2: TButton
      Left = 760
      Top = 176
      Width = 265
      Height = 41
      Caption = 'PERHITUNGAN ALGEN'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end
