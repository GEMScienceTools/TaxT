object AboutBox: TAboutBox
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'GEM Building Taxonomy Tester'
  ClientHeight = 198
  ClientWidth = 460
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 198
    Align = alClient
    BevelKind = bkSoft
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 69
      Width = 457
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'GEM BUILDING TAXONOMY TESTER'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 0
      Top = 114
      Width = 457
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Version 4.0'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 31
      Top = 200
      Width = 389
      Height = 13
      Alignment = taCenter
      Caption = 
        'The purpose of this tool is for testing Version 2.0 of the GEM B' +
        'uilding Taxonomy, '
    end
    object Label4: TLabel
      Left = 139
      Top = 215
      Width = 147
      Height = 13
      Caption = 'more information can be found'
    end
    object hereL: TLabel
      Left = 290
      Top = 215
      Width = 26
      Height = 13
      Caption = 'here'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = hereLClick
    end
    object developerL: TLabel
      Left = 0
      Top = 136
      Width = 457
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Vitor Silva, 2013'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = -1
      Top = 40
      Width = 457
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'TaxT'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
end
