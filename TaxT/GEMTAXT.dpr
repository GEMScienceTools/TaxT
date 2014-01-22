program GEMTAXT;

uses
  Forms,
  TaxT in 'TaxT.pas' {mainForm},
  About in 'About.pas' {AboutBox},
  PDFcreator in 'PDFcreator.pas' {PDFform},
  PDFcreator2 in 'PDFcreator2.pas' {PDFform2},
  otherLib in 'otherLib.pas',
  CreateReport in 'CreateReport.pas' {reportForm},
  PDFcreator3 in 'PDFcreator3.pas' {PDFform3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TaxT - GEM Building Taxonomy Tester';
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TPDFform, PDFform);
  Application.CreateForm(TPDFform2, PDFform2);
  Application.CreateForm(TreportForm, reportForm);
  Application.CreateForm(TPDFform3, PDFform3);
  Application.CreateForm(TPDFform3, PDFform3);
  Application.Run;
end.
