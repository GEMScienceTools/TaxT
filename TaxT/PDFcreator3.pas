unit PDFcreator3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PReport, ExtCtrls, PRJpegImage, PdfDoc, JPEG;

type
  TPDFform3 = class(TForm)
    PReport: TPReport;
    Page: TPRPage;
    PRLayoutPanel1: TPRLayoutPanel;
    PRLabel1: TPRLabel;
    PRLabel4: TPRLabel;
    PDFReport: TPRLabel;
    PDFAuthors: TPRLabel;
    PDFTaxonomy: TPRText;
    PRLabel19: TPRLabel;
    AL22: TPRLabel;
    PDFFeedback: TPRText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PDFform3: TPDFform3;

implementation

{$R *.dfm}

end.
