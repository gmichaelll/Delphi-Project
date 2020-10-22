object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 729
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 208
    Width = 1356
    Height = 518
    Align = alBottom
    Color = clLime
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NPM'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMA'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'JENIS KELAMIN'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'EMAIL'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOMOR'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AGAMA'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ANAK KE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALAMAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMOR ORANG TUA'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'JURUSAN'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = -5
    Top = -8
    Width = 1372
    Height = 210
    Color = clGradientActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Button5: TButton
      Left = 43
      Top = 79
      Width = 81
      Height = 25
      Caption = 'Cari'
      TabOrder = 0
      OnClick = Button5Click
    end
    object Edit5: TEdit
      Left = 14
      Top = 119
      Width = 160
      Height = 27
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Masukan NPM'
    end
    object Button6: TButton
      Left = 255
      Top = 78
      Width = 89
      Height = 25
      Caption = 'Cari'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button6Click
    end
    object Edit6: TEdit
      Left = 218
      Top = 119
      Width = 160
      Height = 27
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TextHint = 'Masukan Nama'
    end
  end
  object Button1: TButton
    Left = 440
    Top = 56
    Width = 137
    Height = 57
    Caption = 'REFRESH'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\NEW DATABASE\DXD' +
      '.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 664
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from table1')
    Left = 744
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 800
    Top = 32
  end
  object XPManifest1: TXPManifest
    Left = 912
    Top = 88
  end
  object MainMenu1: TMainMenu
    Left = 672
    Top = 96
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object PENGISIANBIODATA1: TMenuItem
        Caption = 'PENGISIAN BIODATA'
        OnClick = PENGISIANBIODATA1Click
      end
      object PENCARIANBIODATA1: TMenuItem
        Caption = 'PENCARIAN BIODATA'
        OnClick = PENCARIANBIODATA1Click
      end
    end
    object KELUAR1: TMenuItem
      Caption = 'KELUAR'
      object KELUARDARIPENCARIANDATA1: TMenuItem
        Caption = 'KELUAR DARI PENCARIAN DATA'
        OnClick = KELUARDARIPENCARIANDATA1Click
      end
      object KELUARDARIFIKTIXIX1: TMenuItem
        Caption = 'KELUAR DARI FIKTI XIX'
        OnClick = KELUARDARIFIKTIXIX1Click
      end
    end
  end
end
