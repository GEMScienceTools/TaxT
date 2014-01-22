object PDFform: TPDFform
  Left = 0
  Top = 0
  Caption = 'PDFform'
  ClientHeight = 742
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
      object Image: TPRImage
        Left = 9
        Top = 90
        Width = 640
        Height = 180
        SharedImage = True
      end
      object PRLabel1: TPRLabel
        Left = 0
        Top = 0
        Width = 657
        Height = 20
        FontColor = clNavy
        FontName = fnArial
        FontSize = 16.000000000000000000
        Caption = 'GEM Building Taxonomy Report'
        Alignment = taCenter
      end
      object PRLabel2: TPRLabel
        Left = 14
        Top = 310
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Material type (direction 1):'
      end
      object PDFMat11: TPRLabel
        Left = 24
        Top = 321
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL TYPE'
        Clipping = True
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
      object PDFObservations: TPRText
        Left = 9
        Top = 856
        Width = 632
        Height = 49
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Leading = 14.000000000000000000
        WordWrap = True
      end
      object PDFReport: TPRLabel
        Left = 0
        Top = 20
        Width = 642
        Height = 15
        FontName = fnArial
        FontSize = 14.000000000000000000
        Caption = 'Report title'
        Alignment = taCenter
      end
      object PDFMat21: TPRLabel
        Left = 335
        Top = 321
        Width = 400
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL TECH'
        Clipping = True
      end
      object PRLabel5: TPRLabel
        Left = 330
        Top = 310
        Width = 163
        Height = 18
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'Material technology (direction 1):'
      end
      object PDFMat31: TPRLabel
        Left = 24
        Top = 346
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL PROP'
        Clipping = True
      end
      object PRLabel7: TPRLabel
        Left = 14
        Top = 335
        Width = 163
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Material properties (direction 1):'
      end
      object PDFMat41: TPRLabel
        Left = 335
        Top = 346
        Width = 400
        Height = 23
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL TECH'
        Clipping = True
      end
      object PRLabel9: TPRLabel
        Left = 330
        Top = 335
        Width = 243
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Material techonology (additional, direction 1):'
      end
      object PRLabel3: TPRLabel
        Left = 14
        Top = 360
        Width = 219
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Lateral load-resisting system (direction 1):'
      end
      object PDFSystem11: TPRLabel
        Left = 24
        Top = 371
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'RES SYSTEM'
        Clipping = True
      end
      object PDFSystem21: TPRLabel
        Left = 335
        Top = 371
        Width = 400
        Height = 23
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'DUCTILITY'
        Clipping = True
      end
      object PRLabel12: TPRLabel
        Left = 330
        Top = 360
        Width = 169
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'System ductility (direction 1):'
      end
      object PRLabel13: TPRLabel
        Left = 330
        Top = 460
        Width = 169
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Plan shape:'
      end
      object PDFRoof2: TPRLabel
        Left = 335
        Top = 571
        Width = 300
        Height = 23
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'ROOF TYPE'
        Clipping = True
      end
      object PDFRoof1: TPRLabel
        Left = 25
        Top = 572
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'ROOF MAT'
        Clipping = True
      end
      object PDFRegularity2: TPRLabel
        Left = 25
        Top = 521
        Width = 264
        Height = 18
        HelpType = htKeyword
        HelpKeyword = 'OCCUPANCY DET'
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'REGULARITY TYPE'
        Clipping = True
      end
      object Occupancy: TPRLabel
        Left = 15
        Top = 510
        Width = 186
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Plan structural irregularity - primary:'
      end
      object PDFRegularity1: TPRLabel
        Left = 25
        Top = 496
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'REGULARITY LEVEL'
        Clipping = True
      end
      object occupancylabel: TPRLabel
        Left = 15
        Top = 485
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Type of Irregularity:'
      end
      object PDFHeight: TPRLabel
        Left = 15
        Top = 735
        Width = 242
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Number of storeys above the ground:'
      end
      object datelabel: TPRLabel
        Left = 15
        Top = 710
        Width = 113
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Date of constrution:'
      end
      object PDFDate1: TPRLabel
        Left = 240
        Top = 721
        Width = 54
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'DATE'
        Clipping = True
      end
      object PDFFloor1: TPRLabel
        Left = 25
        Top = 646
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'FLOOR MAT'
        Clipping = True
      end
      object PRLabel21: TPRLabel
        Left = 15
        Top = 635
        Width = 100
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Floor system material:'
      end
      object PRLabel22: TPRLabel
        Left = 330
        Top = 635
        Width = 105
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Floor system type:'
      end
      object PDFFloor2: TPRLabel
        Left = 335
        Top = 646
        Width = 400
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'FLOOR TYPE'
        Clipping = True
      end
      object PDFHeight1: TPRLabel
        Left = 240
        Top = 746
        Width = 40
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PDFAuthors: TPRLabel
        Left = 0
        Top = 40
        Width = 649
        Height = 15
        FontName = fnArial
        FontSize = 13.000000000000000000
        Caption = 'Authors'
        Alignment = taCenter
      end
      object PRLabel6: TPRLabel
        Left = 14
        Top = 785
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Occupancy type - general:'
      end
      object PDFOccupancy1: TPRLabel
        Left = 25
        Top = 796
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'OCCUPANCY GEN'
        Clipping = True
      end
      object PRLabel14: TPRLabel
        Left = 330
        Top = 785
        Width = 169
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Occupancy type - detail:'
      end
      object PDFOccupancy2: TPRLabel
        Left = 335
        Top = 796
        Width = 400
        Height = 18
        HelpType = htKeyword
        HelpKeyword = 'OCCUPANCY DET'
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'OCCUPANCY DET'
        Clipping = True
      end
      object PRLabel11: TPRLabel
        Left = 15
        Top = 835
        Width = 162
        Height = 30
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Summary:'
      end
      object PRLabel10: TPRLabel
        Left = 15
        Top = 810
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Country:'
      end
      object PDFCountry: TPRLabel
        Left = 25
        Top = 821
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'COUNTRY'
        Clipping = True
      end
      object PDFRegion: TPRLabel
        Left = 335
        Top = 821
        Width = 400
        Height = 18
        HelpType = htKeyword
        HelpKeyword = 'OCCUPANCY DET'
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'REGION'
        Clipping = True
      end
      object PRLabel17: TPRLabel
        Left = 330
        Top = 810
        Width = 169
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Region (province, state, etc.):'
      end
      object warning: TPRLabel
        Left = 263
        Top = 166
        Width = 126
        Height = 18
        FontName = fnArial
        FontSize = 13.000000000000000000
        Caption = 'Picture not available'
      end
      object PRLabel15: TPRLabel
        Left = 15
        Top = 460
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Foundation system:'
      end
      object PRLabel16: TPRLabel
        Left = 330
        Top = 485
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Building position within a block:'
      end
      object PDFfound: TPRLabel
        Left = 25
        Top = 471
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'FOUNDATION SYSTEM'
        Clipping = True
      end
      object PDFPosition: TPRLabel
        Left = 335
        Top = 496
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'POSITION'
        Clipping = True
      end
      object PDFPlanShape: TPRLabel
        Left = 335
        Top = 471
        Width = 400
        Height = 12
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'PLAN SHAPE'
        Clipping = True
      end
      object PRLabel24: TPRLabel
        Left = 15
        Top = 560
        Width = 113
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Roof shape:'
      end
      object PRLabel25: TPRLabel
        Left = 330
        Top = 560
        Width = 169
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Roof covering:'
      end
      object PDFRegularity3: TPRLabel
        Left = 335
        Top = 521
        Width = 264
        Height = 18
        HelpType = htKeyword
        HelpKeyword = 'OCCUPANCY DET'
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'REGULARITY TYPE'
        Clipping = True
      end
      object PRLabel27: TPRLabel
        Left = 330
        Top = 511
        Width = 205
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Vertical structural irregularity - primary:'
      end
      object PDFRegularity5: TPRLabel
        Left = 335
        Top = 546
        Width = 280
        Height = 18
        HelpType = htKeyword
        HelpKeyword = 'OCCUPANCY DET'
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'REGULARITY TYPE'
        Clipping = True
      end
      object PRLabel28: TPRLabel
        Left = 330
        Top = 535
        Width = 205
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Vertical structural irregularity - secondary:'
      end
      object PRLabel29: TPRLabel
        Left = 15
        Top = 535
        Width = 186
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Plan structural irregularity - secondary:'
      end
      object PDFRegularity4: TPRLabel
        Left = 25
        Top = 546
        Width = 264
        Height = 18
        HelpType = htKeyword
        HelpKeyword = 'OCCUPANCY DET'
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'REGULARITY TYPE'
        Clipping = True
      end
      object PRLabel26: TPRLabel
        Left = 15
        Top = 585
        Width = 113
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Roof system material:'
      end
      object PDFRoof3: TPRLabel
        Left = 25
        Top = 596
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'ROOF MAT'
        Clipping = True
      end
      object PDFRoof4: TPRLabel
        Left = 335
        Top = 596
        Width = 300
        Height = 23
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'ROOF TYPE'
        Clipping = True
      end
      object PRLabel32: TPRLabel
        Left = 330
        Top = 585
        Width = 169
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Roof system type:'
      end
      object PDFRoof5: TPRLabel
        Left = 25
        Top = 621
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'ROOF MAT'
        Clipping = True
      end
      object PRLabel31: TPRLabel
        Left = 15
        Top = 610
        Width = 113
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Roof connections:'
      end
      object PRLabel20: TPRLabel
        Left = 15
        Top = 660
        Width = 100
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Floor connections:'
      end
      object PDFFloor3: TPRLabel
        Left = 25
        Top = 671
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'FLOOR MAT'
        Clipping = True
      end
      object PDFWalls: TPRLabel
        Left = 25
        Top = 696
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'WALLS MAT'
        Clipping = True
      end
      object PRLabel33: TPRLabel
        Left = 15
        Top = 685
        Width = 100
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Exterior walls material:'
      end
      object PRLabel18: TPRLabel
        Left = 330
        Top = 735
        Width = 242
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Number of storeys below the ground:'
      end
      object PDFHeight2: TPRLabel
        Left = 550
        Top = 746
        Width = 40
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PDFHeight3: TPRLabel
        Left = 240
        Top = 771
        Width = 40
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PRLabel36: TPRLabel
        Left = 15
        Top = 760
        Width = 242
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Height of the grade above ground floor:'
      end
      object PDFHeight4: TPRLabel
        Left = 550
        Top = 771
        Width = 40
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PRLabel38: TPRLabel
        Left = 330
        Top = 760
        Width = 242
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Slope of the ground (for buildings on slopes):'
      end
      object PRLabel8: TPRLabel
        Left = 15
        Top = 385
        Width = 146
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Material type (direction 2):'
      end
      object PDFMat12: TPRLabel
        Left = 25
        Top = 396
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL TYPE'
        Clipping = True
      end
      object PRLabel40: TPRLabel
        Left = 15
        Top = 410
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Material properties (direction 2):'
      end
      object PDFMat32: TPRLabel
        Left = 25
        Top = 421
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL PROP'
        Clipping = True
      end
      object PRLabel42: TPRLabel
        Left = 15
        Top = 435
        Width = 218
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Lateral load-resisting system (direction 2):'
      end
      object PDFSystem12: TPRLabel
        Left = 25
        Top = 446
        Width = 260
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'RES SYSTEM'
        Clipping = True
      end
      object PDFSystem22: TPRLabel
        Left = 335
        Top = 446
        Width = 300
        Height = 23
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'DUCTILITY'
        Clipping = True
      end
      object PRLabel45: TPRLabel
        Left = 330
        Top = 435
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'System ductility (direction 2):'
      end
      object PDFMat42: TPRLabel
        Left = 335
        Top = 421
        Width = 400
        Height = 23
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL TECH'
        Clipping = True
      end
      object PRLabel47: TPRLabel
        Left = 330
        Top = 410
        Width = 242
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Material techonology (additional, direction 2):'
      end
      object PDFMat22: TPRLabel
        Left = 335
        Top = 396
        Width = 400
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'MATERIAL TECH'
        Clipping = True
      end
      object PRLabel49: TPRLabel
        Left = 330
        Top = 385
        Width = 183
        Height = 18
        FontName = fnArial
        FontSize = 10.000000000000000000
        Caption = 'Material technology (direction 2):'
      end
      object PDFDate11: TPRLabel
        Left = 25
        Top = 721
        Width = 209
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'DATE'
        Clipping = True
      end
      object PDFHeight11: TPRLabel
        Left = 25
        Top = 747
        Width = 209
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PDFHeight31: TPRLabel
        Left = 25
        Top = 771
        Width = 209
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PDFHeight41: TPRLabel
        Left = 335
        Top = 771
        Width = 209
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PDFHeight21: TPRLabel
        Left = 335
        Top = 746
        Width = 209
        Height = 18
        FontColor = clNavy
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'HEIGHT'
        Clipping = True
      end
      object PDFTaxonomy: TPRText
        Left = 9
        Top = 285
        Width = 640
        Height = 23
        FontName = fnArial
        FontSize = 9.000000000000000000
        Leading = 14.000000000000000000
        WordWrap = True
      end
      object PRLabel19: TPRLabel
        Left = 10
        Top = 271
        Width = 162
        Height = 18
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Taxonomy string:'
      end
      object PDFAffiliation: TPRLabel
        Left = 0
        Top = 57
        Width = 649
        Height = 15
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Affiliation'
        Alignment = taCenter
      end
      object PDFEmail: TPRLabel
        Left = 0
        Top = 71
        Width = 649
        Height = 15
        FontName = fnArial
        FontSize = 11.000000000000000000
        Caption = 'Email Address'
        Alignment = taCenter
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
