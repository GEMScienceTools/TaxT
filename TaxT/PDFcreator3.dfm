object PDFform3: TPDFform3
  Left = 0
  Top = 0
  Caption = 'PDFform3'
  ClientHeight = 1069
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Page: TPRPage
    Left = 96
    Top = 7
    Width = 700
    Height = 950
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    MarginTop = 20
    MarginLeft = 20
    MarginRight = 20
    MarginBottom = 20
    object PRLayoutPanel1: TPRLayoutPanel
      Left = 21
      Top = 21
      Width = 658
      Height = 908
      Align = alClient
      object PRLabel1: TPRLabel
        Left = 0
        Top = 3
        Width = 657
        Height = 30
        FontColor = clNavy
        FontName = fnArial
        FontSize = 20.000000000000000000
        Caption = 'Feedback Report on the GEM Building Taxonomy'
        Alignment = taCenter
      end
      object PRLabel4: TPRLabel
        Left = 0
        Top = 1211
        Width = 121
        Height = 30
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Construction material'
      end
      object PDFReport: TPRLabel
        Left = 0
        Top = 29
        Width = 642
        Height = 30
        FontName = fnArial
        FontSize = 14.000000000000000000
        Caption = 'Report title'
        Alignment = taCenter
      end
      object PDFAuthors: TPRLabel
        Left = 0
        Top = 47
        Width = 649
        Height = 30
        FontName = fnArial
        FontSize = 13.000000000000000000
        Caption = 'Authors'
        Alignment = taCenter
      end
      object PDFTaxonomy: TPRText
        Left = 10
        Top = 89
        Width = 640
        Height = 35
        FontName = fnArial
        FontSize = 9.000000000000000000
        Leading = 14.000000000000000000
        WordWrap = True
      end
      object PRLabel19: TPRLabel
        Left = 10
        Top = 65
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 13.000000000000000000
        Caption = 'Taxonomy string:'
      end
      object AL22: TPRLabel
        Left = 10
        Top = 130
        Width = 290
        Height = 18
        FontName = fnArial
        FontSize = 13.000000000000000000
        Caption = 'Feedback'
      end
      object PDFFeedback: TPRText
        Left = 10
        Top = 148
        Width = 639
        Height = 741
        FontName = fnArial
        FontSize = 10.000000000000000000
        Leading = 14.000000000000000000
        WordWrap = True
      end
    end
  end
  object PReport: TPReport
    FileName = 'default.pdf'
    CreationDate = 40494.760595289350000000
    UseOutlines = False
    ViewerPreference = []
    Left = 1032
    Top = 8
  end
  object TPReport
    FileName = 'default.pdf'
    CreationDate = 40494.760595289350000000
    UseOutlines = False
    ViewerPreference = []
    Left = 1032
    Top = 8
  end
end
