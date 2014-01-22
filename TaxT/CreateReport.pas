unit CreateReport;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, clipbrd, ImgList,
  StdActns, ActnList,ShellApi, JclShell, ToolWin, Jpeg, PdfDoc, DateUtils,
  SysUtils;

type
  TreportForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    CreateReportB: TButton;
    CancelB: TButton;
    AttributesRB2: TRadioButton;
    AttributesRB1: TRadioButton;
    noAttributesL1: TLabel;
    AttributesPanel: TPanel;
    GroupBox2: TGroupBox;
    DateCB: TCheckBox;
    HeightCB1: TCheckBox;
    HeightCB3: TCheckBox;
    OccupancyCB1: TCheckBox;
    OccupancyCB2: TCheckBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    MaterialCB11: TCheckBox;
    MaterialCB21: TCheckBox;
    MaterialCB31: TCheckBox;
    MaterialCB41: TCheckBox;
    SystemCB11: TCheckBox;
    SystemCB21: TCheckBox;
    MaterialCB12: TCheckBox;
    SystemCB12: TCheckBox;
    MaterialCB22: TCheckBox;
    SystemCB22: TCheckBox;
    MaterialCB32: TCheckBox;
    MaterialCB42: TCheckBox;
    HeightCB2: TCheckBox;
    HeightCB4: TCheckBox;
    GroupBox3: TGroupBox;
    PositionCB: TCheckBox;
    RegularityCB1: TCheckBox;
    RegularityCB4: TCheckBox;
    RegularityCB3: TCheckBox;
    WallsCB: TCheckBox;
    RegularityCB5: TCheckBox;
    RegularityCB2: TCheckBox;
    GroupBox4: TGroupBox;
    CountriesCB: TCheckBox;
    RegionCB: TCheckBox;
    ObsCB: TCheckBox;
    PlanShapeCB: TCheckBox;
    SavePDF: TSaveDialog;
    GroupBox5: TGroupBox;
    RoofCB1: TCheckBox;
    RoofCB2: TCheckBox;
    RoofCB3: TCheckBox;
    RoofCB4: TCheckBox;
    RoofCB5: TCheckBox;
    FloorCB1: TCheckBox;
    FoundationsCB: TCheckBox;
    FloorCB2: TCheckBox;
    FloorCB3: TCheckBox;
    noAttributesL2: TLabel;
    procedure ObsCBClick(Sender: TObject);
    procedure RegionCBClick(Sender: TObject);
    procedure CountriesCBClick(Sender: TObject);
    procedure FoundationsCBClick(Sender: TObject);
    procedure FloorCB3Click(Sender: TObject);
    procedure FloorCB2Click(Sender: TObject);
    procedure FloorCB1Click(Sender: TObject);
    procedure RoofCB5Click(Sender: TObject);
    procedure RoofCB4Click(Sender: TObject);
    procedure RoofCB3Click(Sender: TObject);
    procedure RoofCB2Click(Sender: TObject);
    procedure RoofCB1Click(Sender: TObject);
    procedure RegularityCB5Click(Sender: TObject);
    procedure RegularityCB3Click(Sender: TObject);
    procedure RegularityCB4Click(Sender: TObject);
    procedure RegularityCB2Click(Sender: TObject);
    procedure RegularityCB1Click(Sender: TObject);
    procedure WallsCBClick(Sender: TObject);
    procedure PlanShapeCBClick(Sender: TObject);
    procedure PositionCBClick(Sender: TObject);
    procedure OccupancyCB2Click(Sender: TObject);
    procedure OccupancyCB1Click(Sender: TObject);
    procedure HeightCB4Click(Sender: TObject);
    procedure HeightCB3Click(Sender: TObject);
    procedure HeightCB2Click(Sender: TObject);
    procedure HeightCB1Click(Sender: TObject);
    procedure DateCBClick(Sender: TObject);
    procedure SystemCB22Click(Sender: TObject);
    procedure SystemCB12Click(Sender: TObject);
    procedure MaterialCB42Click(Sender: TObject);
    procedure MaterialCB32Click(Sender: TObject);
    procedure MaterialCB22Click(Sender: TObject);
    procedure MaterialCB12Click(Sender: TObject);
    procedure SystemCB21Click(Sender: TObject);
    procedure SystemCB11Click(Sender: TObject);
    procedure MaterialCB41Click(Sender: TObject);
    procedure MaterialCB31Click(Sender: TObject);
    procedure MaterialCB21Click(Sender: TObject);
    procedure MaterialCB11Click(Sender: TObject);
    procedure CancelBClick(Sender: TObject);
    procedure CreateReportBClick(Sender: TObject);
    procedure AttributesRB2Click(Sender: TObject);
    procedure AttributesRB1Click(Sender: TObject);
    procedure CreateExtendedReport;
    procedure CreateReducedReport;
    procedure checkNumberAttributes;
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reportForm: TreportForm;
  count: integer;

implementation

uses PDFcreator, PDFcreator2, TaxT;

{$R *.dfm}

procedure TreportForm.AttributesRB1Click(Sender: TObject);
begin
  AttributesPanel.visible:=true;
  noAttributesL1.Visible:=true;
  noAttributesL2.Visible:=true;
  checkNumberAttributes;
end;

procedure TreportForm.AttributesRB2Click(Sender: TObject);
begin
  AttributesPanel.visible:=false;
  noAttributesL1.Visible:=false;
  noAttributesL2.Visible:=false;
  checkNumberAttributes;
end;

procedure TreportForm.CancelBClick(Sender: TObject);
begin
  reportForm.Close;
end;

procedure TreportForm.CountriesCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.createExtendedReport;
var
  str, initialFileName: string;
begin
  PDFForm.PDFMat11.Caption:=mainForm.MaterialCB11.Text;
  PDFForm.PDFMat21.Caption:=mainForm.MaterialCB21.Text;
  PDFForm.PDFMat31.Caption:=mainForm.MaterialCB31.Text;
  PDFForm.PDFMat41.Caption:=mainForm.MaterialCB41.Text;
  PDFForm.PDFSystem11.Caption:=mainForm.SystemCB11.Text;
  PDFForm.PDFSystem21.Caption:=mainForm.SystemCB21.Text;
  PDFForm.PDFMat12.Caption:=mainForm.MaterialCB12.Text;
  PDFForm.PDFMat22.Caption:=mainForm.MaterialCB22.Text;
  PDFForm.PDFMat32.Caption:=mainForm.MaterialCB32.Text;
  PDFForm.PDFMat42.Caption:=mainForm.MaterialCB42.Text;
  PDFForm.PDFSystem12.Caption:=mainForm.SystemCB12.Text;
  PDFForm.PDFSystem22.Caption:=mainForm.SystemCB22.Text;
  PDFForm.PDFRoof1.Caption:=mainForm.RoofCB1.Text;
  PDFForm.PDFRoof2.Caption:=mainForm.RoofCB2.Text;
  PDFForm.PDFRoof3.Caption:=mainForm.RoofCB3.Text;
  PDFForm.PDFRoof4.Caption:=mainForm.RoofCB4.Text;
  PDFForm.PDFRoof5.Caption:=mainForm.RoofCB5.Text;
  PDFForm.PDFFloor1.Caption:=mainForm.FloorCB1.Text;
  PDFForm.PDFFloor2.Caption:=mainForm.FloorCB2.Text;
  PDFForm.PDFFloor3.Caption:=mainForm.FloorCB3.Text;
  PDFForm.PDFDate11.Caption:=mainForm.DateCB1.Text;
  PDFForm.PDFWalls.Caption:=mainForm.WallsCB.Text;

  PDFForm.PDFfound.Caption:=mainForm.FoundationsCB.Text;
  PDFForm.PDFPosition.Caption:=mainForm.PositionCB.Text;
  PDFForm.PDFPlanShape.Caption:=mainForm.PlanShapeCB.Text;

  if mainForm.DateCB1.ItemIndex=2 then begin
    PDFForm.PDFDate1.Caption:=mainForm.DateE1.Text+'-'+mainForm.DateE2.Text;
  end
  else begin
    PDFForm.PDFDate1.Caption:=mainForm.DateE1.Text;
  end;

  if mainForm.HeightCB1.ItemIndex=1 then begin
    PDFForm.PDFHeight1.Caption:=mainForm.noStoreysE11.Text+'-'+mainForm.noStoreysE12.Text;
  end
  else begin
    PDFForm.PDFHeight1.Caption:=mainForm.noStoreysE11.Text;
  end;

  if mainForm.HeightCB2.ItemIndex=1 then begin
    PDFForm.PDFHeight2.Caption:=mainForm.noStoreysE21.Text+'-'+mainForm.noStoreysE22.Text;
  end
  else begin
    PDFForm.PDFHeight2.Caption:=mainForm.noStoreysE21.Text;
  end;

  if mainForm.HeightCB3.ItemIndex=1 then begin
    PDFForm.PDFHeight3.Caption:=mainForm.noStoreysE31.Text+'-'+mainForm.noStoreysE32.Text;
  end
  else begin
    PDFForm.PDFHeight3.Caption:=mainForm.noStoreysE31.Text;
  end;

  PDFForm.PDFHeight4.Caption:=mainForm.noStoreysE4.Text;
  PDFForm.PDFHeight11.Caption:=mainForm.HeightCB1.Text;
  PDFForm.PDFHeight21.Caption:=mainForm.HeightCB2.Text;
  PDFForm.PDFHeight31.Caption:=mainForm.HeightCB3.Text;
  PDFForm.PDFHeight41.Caption:=mainForm.HeightCB4.Text;
  PDFForm.PDFRegularity1.Caption:=mainForm.RegularityCB1.Text;
  PDFForm.PDFRegularity2.Caption:=mainForm.RegularityCB2.Text;
  PDFForm.PDFRegularity3.Caption:=mainForm.RegularityCB3.Text;
  PDFForm.PDFRegularity4.Caption:=mainForm.RegularityCB4.Text;
  PDFForm.PDFRegularity5.Caption:=mainForm.RegularityCB5.Text;
  PDFForm.PDFOccupancy1.Caption:=mainForm.OccupancyCB1.Text;
  PDFForm.PDFOccupancy2.Caption:=mainForm.OccupancyCB2.Text;
  PDFForm.PDFReport.Caption:=mainForm.NameE.text;
  PDFForm.PDFAuthors.Caption:=mainForm.AuthorsE.Text;
  PDFForm.PDFAffiliation.Caption:=mainForm.AffiliationE.Text;
  PDFForm.PDFEmail.Caption:=mainForm.EmailE.Text;
  PDFForm.PDFCountry.Caption:=mainForm.CountriesCB.Text;
  PDFForm.PDFRegion.Caption:=mainForm.RegionE.Text;
  PDFForm.PDFObservations.Text:=mainForm.ObservationsRE.Text;
  str:=StringReplace(mainForm.ResultE.Text,'/',' /',[rfReplaceAll]);
  PDFForm.PDFTaxonomy.Text:=str;

 (* if FeedbackCB.Checked then begin
    PDFForm3.PDFReport.Caption:=mainForm.NameE.text;
    PDFForm3.PDFAuthors.Caption:=mainForm.AuthorsE.Text;
    PDFForm3.PDFFeedback.Text:=mainForm.FeedbackRE.Text;
    PDFForm3.PDFTaxonomy.Text:=str;
  end;*)
  if SavePDF.Execute then begin
    with PDFform.PReport do begin
      initialFileName := StringReplace(SavePDF.FileName,'.pdf','',[rfReplaceAll]);
     (* if FeedbackCB.Checked then begin
        FileName := initialFileName + '_feedback.pdf';
        BeginDoc;
        Print(PDFform3.Page);
        EndDoc;
      end;*)
      FileName := initialFileName + '.pdf';
      BeginDoc;
      Print(PDFform.Page);
      EndDoc;
      ShellExecute(Self.Handle, 'Open', PChar(FileName), '', '', SW_SHOW);
    end;
  end;
end;

procedure TreportForm.checkNumberAttributes;
begin

  CreateReportB.Enabled:=true;
  count := 0;
  if MaterialCB11.checked then inc(count);
  if MaterialCB21.checked then inc(count);
  if MaterialCB31.checked then inc(count);
  if MaterialCB41.checked then inc(count);
  if SystemCB11.checked then inc(count);
  if SystemCB12.checked then inc(count);
  if MaterialCB12.checked then inc(count);
  if MaterialCB22.checked then inc(count);
  if MaterialCB32.checked then inc(count);
  if MaterialCB42.checked then inc(count);
  if SystemCB21.checked then inc(count);
  if SystemCB22.checked then inc(count);
  if DateCB.checked then inc(count);
  if HeightCB1.checked then inc(count);
  if HeightCB2.checked then inc(count);
  if HeightCB3.checked then inc(count);
  if HeightCB4.checked then inc(count);
  if OccupancyCB1.checked then inc(count);
  if OccupancyCB2.checked then inc(count);
  if PositionCB.checked then inc(count);
  if PlanShapeCB.checked then inc(count);
  if WallsCB.checked then inc(count);
  if RegularityCB1.checked then inc(count);
  if RegularityCB2.checked then inc(count);
  if RegularityCB4.checked then inc(count);
  if RegularityCB3.checked then inc(count);
  if RegularityCB5.checked then inc(count);
  if RoofCB1.checked then inc(count);
  if RoofCB2.checked then inc(count);
  if RoofCB3.checked then inc(count);
  if RoofCB4.checked then inc(count);
  if RoofCB5.checked then inc(count);
  if FloorCB1.checked then inc(count);
  if FloorCB2.checked then inc(count);
  if FloorCB3.checked then inc(count);
  if FoundationsCB.checked then inc(count);
  if CountriesCB.checked then inc(count);
  if RegionCB.checked then inc(count);

  if count > 20 then begin
    noAttributesL1.Caption:='Reduce number of attributes up to 20 or select the "include all attributes" option.';
    noAttributesL2.Caption:='Currently '+inttostr(count)+' selected.';
    if AttributesRB1.Checked then CreateReportB.Enabled:=false;
  end
  else if count < 21 then begin
    noAttributesL1.Caption:='';
    noAttributesL2.Caption:='';
  end;
end;

procedure TreportForm.CreateReducedReport;
var
  labels,texts:  array [0..37] of string;
  count, i: integer;
  str, initialFileName: string;
begin
  count := 0;
  if MaterialCB11.checked then begin
    labels[count]:='Material type (DX):';
    texts[count]:=mainForm.MaterialCB11.Text;;
    inc(count);
  end;
  if MaterialCB21.checked then begin
    labels[count]:='Material technology (DX):';
    texts[count]:=mainForm.MaterialCB21.Text;;
    inc(count);
  end;
  if MaterialCB31.checked then begin
    labels[count]:='Material properties (DX):';
    texts[count]:=mainForm.MaterialCB31.Text;;
    inc(count);
  end;
  if MaterialCB41.checked then begin
    labels[count]:='Material properties (DX):';
    texts[count]:=mainForm.MaterialCB41.Text;;
    inc(count);
  end;
  if MaterialCB12.checked then begin
    labels[count]:='Material type (DY):';
    texts[count]:=mainForm.MaterialCB12.Text;;
    inc(count);
  end;
  if MaterialCB22.checked then begin
    labels[count]:='Material technology (DY):';
    texts[count]:=mainForm.MaterialCB22.Text;;
    inc(count);
  end;
  if MaterialCB32.checked then begin
    labels[count]:='Material properties (DY):';
    texts[count]:=mainForm.MaterialCB32.Text;;
    inc(count);
  end;
  if MaterialCB42.checked then begin
    labels[count]:='Material properties (DY):';
    texts[count]:=mainForm.MaterialCB42.Text;;
    inc(count);
  end;

  if SystemCB11.checked then begin
    labels[count]:='Type of lateral load-resisting system (DX):';
    texts[count]:=mainForm.SystemCB11.Text;;
    inc(count);
  end;
  if SystemCB21.checked then begin
    labels[count]:='System ductility (DX):';
    texts[count]:=mainForm.SystemCB21.Text;;
    inc(count);
  end;
  if SystemCB12.checked then begin
    labels[count]:='Type of lateral load-resisting system (DY):';
    texts[count]:=mainForm.SystemCB12.Text;;
    inc(count);
  end;
  if SystemCB22.checked then begin
    labels[count]:='System ductility (DY):';
    texts[count]:=mainForm.SystemCB22.Text;;
    inc(count);
  end;

  if DateCB.checked then begin
    labels[count]:='Date of construction or retrofit:';
    if mainForm.DateCB1.ItemIndex=2 then begin
      texts[count]:=mainForm.DateCB1.Text+': '+mainForm.DateE1.Text+'-'+mainForm.DateE2.Text;
    end
    else begin
      texts[count]:=mainForm.DateCB1.Text+': '+mainForm.DateE1.Text;
    end;
    inc(count);
  end;

  if HeightCB1.checked then begin
    labels[count]:='Number of storeys above ground:';
    if mainForm.HeightCB1.ItemIndex=1 then begin
      texts[count]:=mainForm.HeightCB1.Text+': '+mainForm.noStoreysE11.Text+'-'+mainForm.noStoreysE12.Text;
    end
    else begin
      texts[count]:=mainForm.HeightCB1.Text+': '+mainForm.noStoreysE11.Text;
    end;
    inc(count);
  end;

  if HeightCB2.checked then begin
    labels[count]:='Number of storeys below ground';
    if mainForm.HeightCB2.ItemIndex=1 then begin
      texts[count]:=mainForm.HeightCB2.Text+': '+mainForm.noStoreysE21.Text+'-'+mainForm.noStoreysE22.Text;
    end
    else begin
      texts[count]:=mainForm.HeightCB2.Text+': '+mainForm.noStoreysE21.Text;
    end;
    inc(count);
  end;

  if HeightCB3.checked then begin
    labels[count]:='Height of grade above ground level:';
    if mainForm.HeightCB3.ItemIndex=1 then begin
      texts[count]:=mainForm.HeightCB3.Text+': '+mainForm.noStoreysE31.Text+'-'+mainForm.noStoreysE32.Text;
    end
    else begin
      texts[count]:=mainForm.HeightCB3.Text+': '+mainForm.noStoreysE31.Text;
    end;
    inc(count);
  end;

  if HeightCB4.checked then begin
    labels[count]:='Slope of the ground:';
    texts[count]:= mainForm.noStoreysE4.Text;
    inc(count);
  end;

  if OccupancyCB1.checked then begin
    labels[count]:='Building occupancy class - general:';
    texts[count]:= mainForm.OccupancyCB1.Text;
    inc(count);
  end;

  if OccupancyCB2.checked then begin
    labels[count]:='Building occupancy class - detail:';
    texts[count]:= mainForm.OccupancyCB2.Text;
    inc(count);
  end;

  if PositionCB.checked then begin
    labels[count]:='Building Position within a block:';
    texts[count]:= mainForm.PositionCB.Text;
    inc(count);
  end;

  if PlanShapeCB.checked then begin
    labels[count]:='Shape of the Building Plan:';
    texts[count]:= mainForm.PlanShapeCB.Text;
    inc(count);
  end;

  if WallsCB.checked then begin
    labels[count]:='Material of exterior walls:';
    texts[count]:= mainForm.WallsCB.Text;
    inc(count);
  end;

  if RegularityCB1.checked then begin
    labels[count]:='Type of irregularity:';
    texts[count]:= mainForm.RegularityCB1.Text;
    inc(count);
  end;

  if RegularityCB2.checked then begin
    labels[count]:='Plan structural irregularity - primary:';
    texts[count]:= mainForm.RegularityCB2.Text;
    inc(count);
  end;

  if RegularityCB4.checked then begin
    labels[count]:='Plan structural irregularity - secondary:';
    texts[count]:= mainForm.RegularityCB4.Text;
    inc(count);
  end;

  if RegularityCB3.checked then begin
    labels[count]:='Vertical structural irregularity - primary:';
    texts[count]:= mainForm.RegularityCB3.Text;
    inc(count);
  end;

  if RegularityCB5.checked then begin
    labels[count]:='Vertical structural irregularity - secondary:';
    texts[count]:= mainForm.RegularityCB5.Text;
    inc(count);
  end;

  if RoofCB1.checked then begin
    labels[count]:='Roof shape:';
    texts[count]:= mainForm.RoofCB1.Text;
    inc(count);
  end;

  if RoofCB2.checked then begin
    labels[count]:='Roof covering:';
    texts[count]:= mainForm.RoofCB2.Text;
    inc(count);
  end;

  if RoofCB3.checked then begin
    labels[count]:='Roof system material:';
    texts[count]:= mainForm.RoofCB3.Text;
    inc(count);
  end;

  if RoofCB4.checked then begin
    labels[count]:='Roof system type:';
    texts[count]:= mainForm.RoofCB4.Text;
    inc(count);
  end;

  if RoofCB5.checked then begin
    labels[count]:='Roof connections:';
    texts[count]:= mainForm.RoofCB5.Text;
    inc(count);
  end;

  if FloorCB1.checked then begin
    labels[count]:='Floor system material:';
    texts[count]:= mainForm.FloorCB1.Text;
    inc(count);
  end;

  if FloorCB2.checked then begin
    labels[count]:='Floor system type:';
    texts[count]:= mainForm.FloorCB2.Text;
    inc(count);
  end;

  if FloorCB3.checked then begin
    labels[count]:='Floor connections:';
    texts[count]:= mainForm.FloorCB3.Text;
    inc(count);
  end;

  if FoundationsCB.checked then begin
    labels[count]:='Foundation system:';
    texts[count]:= mainForm.FoundationsCB.Text;
    inc(count);
  end;

  if CountriesCB.checked then begin
    labels[count]:='Countries:';
    texts[count]:= mainForm.CountriesCB.Text;
    inc(count);
  end;

  if RegionCB.checked then begin
    labels[count]:='Region (province, state, etc.):';
    texts[count]:= mainForm.RegionE.Text;
    inc(count);
  end;

  if ObsCB.checked then begin
    PDFform2.AL21.caption:='Summary:';
    PDFform2.AT21.text:= mainForm.ObservationsRE.Text;
  end
  else begin
    PDFform2.AL21.caption:='';
    PDFform2.AT21.text:='';
  end;

  str:=StringReplace(mainForm.ResultE.Text,'/',' /',[rfReplaceAll]);
  PDFForm2.PDFTaxonomy.Text:=str;
  PDFForm2.PDFReport.Caption:=mainForm.NameE.text;
  PDFForm2.PDFAuthors.Caption:=mainForm.AuthorsE.Text;
  PDFForm2.PDFAffiliation.Caption:=mainForm.AffiliationE.Text;
  PDFForm2.PDFEmail.Caption:=mainForm.EmailE.Text;

  (*if FeedbackCB.Checked then begin
    PDFForm3.PDFReport.Caption:=mainForm.NameE.text;
    PDFForm3.PDFAuthors.Caption:=mainForm.AuthorsE.Text;
    PDFForm3.PDFFeedback.Text:=mainForm.FeedbackRE.Text;
    PDFForm3.PDFTaxonomy.Text:=str;
  end;*)

  if count < 37 then begin
    for i := count to 37 do begin
      labels[i]:='';
      texts[i]:='';
    end;
  end;

  PDFform2.AL1.caption:=labels[0];
  PDFform2.AL2.caption:=labels[1];
  PDFform2.AL3.caption:=labels[2];
  PDFform2.AL4.caption:=labels[3];
  PDFform2.AL5.caption:=labels[4];
  PDFform2.AL6.caption:=labels[5];
  PDFform2.AL7.caption:=labels[6];
  PDFform2.AL8.caption:=labels[7];
  PDFform2.AL9.caption:=labels[8];
  PDFform2.AL10.caption:=labels[9];
  PDFform2.AL11.caption:=labels[10];
  PDFform2.AL12.caption:=labels[11];
  PDFform2.AL13.caption:=labels[12];
  PDFform2.AL14.caption:=labels[13];
  PDFform2.AL15.caption:=labels[14];
  PDFform2.AL16.caption:=labels[15];
  PDFform2.AL17.caption:=labels[16];
  PDFform2.AL18.caption:=labels[17];
  PDFform2.AL19.caption:=labels[18];
  PDFform2.AL20.caption:=labels[19];

  PDFform2.AT1.text:=texts[0];
  PDFform2.AT2.text:=texts[1];
  PDFform2.AT3.text:=texts[2];
  PDFform2.AT4.text:=texts[3];
  PDFform2.AT5.text:=texts[4];
  PDFform2.AT6.text:=texts[5];
  PDFform2.AT7.text:=texts[6];
  PDFform2.AT8.text:=texts[7];
  PDFform2.AT9.text:=texts[8];
  PDFform2.AT10.text:=texts[9];
  PDFform2.AT11.text:=texts[10];
  PDFform2.AT12.text:=texts[11];
  PDFform2.AT13.text:=texts[12];
  PDFform2.AT14.text:=texts[13];
  PDFform2.AT15.text:=texts[14];
  PDFform2.AT16.text:=texts[15];
  PDFform2.AT17.text:=texts[16];
  PDFform2.AT18.text:=texts[17];
  PDFform2.AT19.text:=texts[18];
  PDFform2.AT20.text:=texts[19];


   if SavePDF.Execute then begin
    with PDFform2.PReport do begin
      initialFileName := StringReplace(SavePDF.FileName,'.pdf','',[rfReplaceAll]);
      if FileExists(initialFileName + '_feedback.pdf') then DeleteFile(initialFileName + '_feedback.pdf');
      if FileExists(initialFileName + '_report.pdf') then DeleteFile(initialFileName + '_report.pdf');
      (*if FeedbackCB.Checked then begin
        FileName := initialFileName + '_feedback.pdf';
        BeginDoc;
        Print(PDFform3.Page);
        EndDoc;
      end;*)
      FileName := initialFileName + '_report.pdf';
      BeginDoc;
      Print(PDFform2.Page);
      EndDoc;
      ShellExecute(Self.Handle, 'Open', PChar(FileName), '', '', SW_SHOW);
    end;
  end;

end;

procedure TreportForm.CreateReportBClick(Sender: TObject);
begin
  if AttributesRB1.checked then begin
      CreateReducedReport;
  end
  else begin
      CreateExtendedReport;
  end;
  reportForm.Close;
end;

procedure TreportForm.DateCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.FloorCB1Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.FloorCB2Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.FloorCB3Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.FoundationsCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.HeightCB1Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.HeightCB2Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.HeightCB3Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.HeightCB4Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB11Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB21Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB31Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB41Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB12Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB22Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB32Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.MaterialCB42Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.ObsCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.OccupancyCB1Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.OccupancyCB2Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.PlanShapeCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.PositionCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RegionCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RegularityCB1Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RegularityCB2Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RegularityCB3Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RegularityCB4Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RegularityCB5Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RoofCB1Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RoofCB2Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RoofCB3Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RoofCB4Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.RoofCB5Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.SystemCB11Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.SystemCB21Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.SystemCB12Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.SystemCB22Click(Sender: TObject);
begin
  checkNumberAttributes;
end;

procedure TreportForm.WallsCBClick(Sender: TObject);
begin
  checkNumberAttributes;
end;

end.
