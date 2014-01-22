unit PDFcreator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PReport, ExtCtrls, PRJpegImage, PdfDoc, JPEG;

type
  TPDFform = class(TForm)
    PReport: TPReport;
    Page: TPRPage;
    PRLayoutPanel1: TPRLayoutPanel;
    Image: TPRImage;
    PRLabel1: TPRLabel;
    PRLabel2: TPRLabel;
    PDFMat11: TPRLabel;
    PRLabel4: TPRLabel;
    PDFObservations: TPRText;
    PDFReport: TPRLabel;
    PDFMat21: TPRLabel;
    PRLabel5: TPRLabel;
    PDFMat31: TPRLabel;
    PRLabel7: TPRLabel;
    PDFMat41: TPRLabel;
    PRLabel9: TPRLabel;
    PRLabel3: TPRLabel;
    PDFSystem11: TPRLabel;
    PDFSystem21: TPRLabel;
    PRLabel12: TPRLabel;
    PRLabel13: TPRLabel;
    PDFRoof2: TPRLabel;
    PDFRoof1: TPRLabel;
    PDFRegularity2: TPRLabel;
    Occupancy: TPRLabel;
    PDFRegularity1: TPRLabel;
    occupancylabel: TPRLabel;
    PDFHeight: TPRLabel;
    datelabel: TPRLabel;
    PDFDate1: TPRLabel;
    PDFFloor1: TPRLabel;
    PRLabel21: TPRLabel;
    PRLabel22: TPRLabel;
    PDFFloor2: TPRLabel;
    PDFHeight1: TPRLabel;
    PDFAuthors: TPRLabel;
    PRLabel6: TPRLabel;
    PDFOccupancy1: TPRLabel;
    PRLabel14: TPRLabel;
    PDFOccupancy2: TPRLabel;
    PRLabel11: TPRLabel;
    PRLabel10: TPRLabel;
    PDFCountry: TPRLabel;
    PDFRegion: TPRLabel;
    PRLabel17: TPRLabel;
    warning: TPRLabel;
    PRLabel15: TPRLabel;
    PRLabel16: TPRLabel;
    PDFfound: TPRLabel;
    PDFPosition: TPRLabel;
    PDFPlanShape: TPRLabel;
    PRLabel24: TPRLabel;
    PRLabel25: TPRLabel;
    PDFRegularity3: TPRLabel;
    PRLabel27: TPRLabel;
    PDFRegularity5: TPRLabel;
    PRLabel28: TPRLabel;
    PRLabel29: TPRLabel;
    PDFRegularity4: TPRLabel;
    PRLabel26: TPRLabel;
    PDFRoof3: TPRLabel;
    PDFRoof4: TPRLabel;
    PRLabel32: TPRLabel;
    PDFRoof5: TPRLabel;
    PRLabel31: TPRLabel;
    PRLabel20: TPRLabel;
    PDFFloor3: TPRLabel;
    PDFWalls: TPRLabel;
    PRLabel33: TPRLabel;
    PRLabel18: TPRLabel;
    PDFHeight2: TPRLabel;
    PDFHeight3: TPRLabel;
    PRLabel36: TPRLabel;
    PDFHeight4: TPRLabel;
    PRLabel38: TPRLabel;
    PRLabel8: TPRLabel;
    PDFMat12: TPRLabel;
    PRLabel40: TPRLabel;
    PDFMat32: TPRLabel;
    PRLabel42: TPRLabel;
    PDFSystem12: TPRLabel;
    PDFSystem22: TPRLabel;
    PRLabel45: TPRLabel;
    PDFMat42: TPRLabel;
    PRLabel47: TPRLabel;
    PDFMat22: TPRLabel;
    PRLabel49: TPRLabel;
    PDFDate11: TPRLabel;
    PDFHeight11: TPRLabel;
    PDFHeight31: TPRLabel;
    PDFHeight41: TPRLabel;
    PDFHeight21: TPRLabel;
    PDFTaxonomy: TPRText;
    PRLabel19: TPRLabel;
    PDFAffiliation: TPRLabel;
    PDFEmail: TPRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PDFform: TPDFform;

implementation

{$R *.dfm}

end.
