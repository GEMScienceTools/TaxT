unit TaxT;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, clipbrd, ImgList,
  StdActns, ActnList,ShellApi, JclShell, ToolWin, Jpeg, PdfDoc, DateUtils,
  SysUtils;

type
  TmainForm = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    ResetB: TButton;
    AboutB: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    RegularityCB1: TComboBox;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    PositionCB: TComboBox;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    RoofCB1: TComboBox;
    RoofCB5: TComboBox;
    GroupBox6: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    FloorCB1: TComboBox;
    FloorCB2: TComboBox;
    RoofCB2: TComboBox;
    RoofCB3: TComboBox;
    RoofCB4: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    FloorCB3: TComboBox;
    Label20: TLabel;
    GroupBox9: TGroupBox;
    Label16: TLabel;
    PlanShapeCB: TComboBox;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    dateE2: TEdit;
    DateCB1: TComboBox;
    GroupBox12: TGroupBox;
    HeightCB1: TComboBox;
    noStoreysE12: TEdit;
    GroupBox13: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    OccupancyCB1: TComboBox;
    OccupancyCB2: TComboBox;
    RegularityCB2: TComboBox;
    Label27: TLabel;
    RegularityCB4: TComboBox;
    Label28: TLabel;
    RegularityCB3: TComboBox;
    Label29: TLabel;
    RegularityCB5: TComboBox;
    Label30: TLabel;
    HeightCB3: TComboBox;
    noStoreysE32: TEdit;
    Label24: TLabel;
    Label8: TLabel;
    Label31: TLabel;
    HeightCB2: TComboBox;
    noStoreysE22: TEdit;
    Label32: TLabel;
    noStoreysE4: TEdit;
    HeightCB4: TComboBox;
    Label33: TLabel;
    NameE: TEdit;
    Label34: TLabel;
    AuthorsE: TEdit;
    Label35: TLabel;
    CountriesCB: TComboBox;
    Label36: TLabel;
    RegionE: TEdit;
    uploadB: TButton;
    Image: TImage;                                                 
    ObservationsRE: TRichEdit;
    Label38: TLabel;
    omitCB: TCheckBox;
    SavePDF: TSaveDialog;
    OpenDialog: TOpenDialog;
    PageControl2: TPageControl;
    DirectionTab1: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    materialL: TLabel;
    MaterialCB11: TComboBox;
    MaterialCB31: TComboBox;
    MaterialCB21: TComboBox;
    MaterialCB41: TComboBox;
    DirectionTab2: TTabSheet;
    GroupBox10: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    SystemCB11: TComboBox;
    SystemCB21: TComboBox;
    GroupBox11: TGroupBox;
    Label6: TLabel;
    Label23: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    MaterialCB12: TComboBox;
    MaterialCB32: TComboBox;
    MaterialCB22: TComboBox;
    MaterialCB42: TComboBox;
    GroupBox14: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    SystemCB12: TComboBox;
    SystemCB22: TComboBox;
    NexusB: TButton;
    DirectionCB: TCheckBox;
    dateE1: TEdit;
    noStoreysE11: TEdit;
    noStoreysE21: TEdit;
    noStoreysE31: TEdit;
    GroupBox7: TGroupBox;
    Label15: TLabel;
    WallsCB: TComboBox;
    GroupBox15: TGroupBox;
    Label37: TLabel;
    FoundationsCB: TComboBox;
    GroupBox3: TGroupBox;
    Direction1RB1: TRadioButton;
    Direction1RB2: TRadioButton;
    GroupBox16: TGroupBox;
    Direction2RB1: TRadioButton;
    Direction2RB3: TRadioButton;
    resultE: TEdit;
    CopyB: TButton;
    Label5: TLabel;
    ExportPDFB: TButton;
    Label44: TLabel;
    affiliationE: TEdit;
    emailE: TEdit;
    Label45: TLabel;
    procedure ObservationsREChange(Sender: TObject);
    procedure ObservationsREClick(Sender: TObject);
    procedure ExportPDFBClick(Sender: TObject);
    procedure Direction2RB3Click(Sender: TObject);
    procedure Direction2RB1Click(Sender: TObject);
    procedure Direction1RB2Click(Sender: TObject);
    procedure Direction1RB1Click(Sender: TObject);
    procedure omitCBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AboutBClick(Sender: TObject);
    procedure NexusBClick(Sender: TObject);
    procedure dateE1Change(Sender: TObject);
    procedure DirectionCBClick(Sender: TObject);
    procedure SystemCB22Select(Sender: TObject);
    procedure MaterialCB42Select(Sender: TObject);
    procedure MaterialCB32Select(Sender: TObject);
    procedure MaterialCB22Select(Sender: TObject);
    procedure MaterialCB12Select(Sender: TObject);
    procedure SystemCB12Select(Sender: TObject);
    procedure ResetBClick(Sender: TObject);
    procedure CopyBClick(Sender: TObject);
    procedure uploadBClick(Sender: TObject);
    procedure OccupancyCB2Select(Sender: TObject);
    procedure noStoreysE4Change(Sender: TObject);
    procedure noStoreysE32Change(Sender: TObject);
    procedure noStoreysE22Change(Sender: TObject);
    procedure noStoreysE12Change(Sender: TObject);
    procedure dateE2Change(Sender: TObject);
    procedure WallsCBSelect(Sender: TObject);
    procedure FloorCB3Select(Sender: TObject);
    procedure FloorCB2Select(Sender: TObject);
    procedure RoofCB5Select(Sender: TObject);
    procedure RoofCB4Select(Sender: TObject);
    procedure RoofCB2Select(Sender: TObject);
    procedure RegularityCB5Select(Sender: TObject);
    procedure RegularityCB4Select(Sender: TObject);
    procedure RegularityCB3Select(Sender: TObject);
    procedure RegularityCB2Select(Sender: TObject);
    procedure PlanShapeCBSelect(Sender: TObject);
    procedure DirectionCBSelect(Sender: TObject);
    procedure PositionCBSelect(Sender: TObject);
    procedure FoundationsCBSelect(Sender: TObject);
    procedure SystemCB21Select(Sender: TObject);
    procedure MaterialCB41Select(Sender: TObject);
    procedure RoofCB3Select(Sender: TObject);
    procedure OccupancyCB1Select(Sender: TObject);
    procedure HeightCB4Select(Sender: TObject);
    procedure HeightCB2Select(Sender: TObject);
    procedure HeightCB3Select(Sender: TObject);
    procedure HeightCB1Select(Sender: TObject);
    procedure DateCB1Select(Sender: TObject);
    procedure FloorCB1Select(Sender: TObject);
    procedure RoofCB1Select(Sender: TObject);
    procedure RegularityCB1Select(Sender: TObject);
    procedure SystemCB11Select(Sender: TObject);
    procedure MaterialCB31Select(Sender: TObject);
    procedure MaterialCB21Select(Sender: TObject);
    procedure MaterialCB11Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Initiate;
    procedure ValidateMaterial1;
    procedure ValidateMaterial2;
    procedure ValidateSystem1;
    procedure ValidateSystem2;
    procedure ValidateRoof;
    procedure ValidateFloor;
    procedure ValidateHeight;
    procedure ValidateDate;
    procedure ValidateRegularity;
    procedure ValidateRegularity2;
    procedure ValidateRegularity3;
    procedure ValidateOccupancy;
    procedure BuildTaxonomy;
    procedure SetDirection2;
    procedure ResizeBMP(b : TBitmap; NewWidth, NewHeight : integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;
  noSelectedAtt: integer;


implementation

uses About, otherLib, PDFcreator, PDFcreator2, CreateReport;

{$R *.dfm}


procedure TmainForm.CopyBClick(Sender: TObject);
begin
  clipboard.AsText:= resultE.Text;
end;

procedure TmainForm.DateCB1Select(Sender: TObject);
begin
  ValidateDate;
  BuildTaxonomy;
end;

procedure TmainForm.dateE1Change(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.dateE2Change(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.Direction1RB1Click(Sender: TObject);
begin
  Direction2RB1.Checked := true;
    BuildTaxonomy;
end;

procedure TmainForm.Direction1RB2Click(Sender: TObject);
begin
  Direction2RB3.Checked:=true;
  BuildTaxonomy;
end;

procedure TmainForm.Direction2RB1Click(Sender: TObject);
begin
    Direction1RB1.Checked:=true;
    BuildTaxonomy;
end;

procedure TmainForm.Direction2RB3Click(Sender: TObject);
begin
    Direction1RB2.Checked:=true;
    BuildTaxonomy;
end;

procedure TmainForm.DirectionCBClick(Sender: TObject);
begin
  if DirectionCB.checked then begin
    SetDirection2;
    ValidateMaterial2;
    SetDirection2;
    ValidateSystem2;
    SetDirection2;
    BuildTaxonomy;
  end;

end;

procedure TmainForm.DirectionCBSelect(Sender: TObject);
begin
  BuildTaxonomy;
end;

(*procedure TmainForm.FeedbackREChange(Sender: TObject);
begin
         FeedbackRE.Font.Color := clBlack;
end;

procedure TmainForm.FeedbackREClick(Sender: TObject);
begin
  if FeedbackRE.Text = 'Provide some feedback to the EERI.' then begin
      FeedbackRE.Text := '';
      FeedbackRE.Font.Color := clBlack;
  end;
end;*)

procedure TmainForm.FloorCB1Select(Sender: TObject);
begin
  ValidateFloor;
  BuildTaxonomy;
end;

procedure TmainForm.FloorCB2Select(Sender: TObject);
begin
  BuildTaxonomy;
  if FloorCB2.ItemIndex>0 then begin
    reportForm.FloorCB2.Checked:= true;
  end
  else begin
    reportForm.FloorCB2.Checked:= false;
  end;
end;

procedure TmainForm.FloorCB3Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.FormActivate(Sender: TObject);
begin
//AboutBox.Show;
end;

procedure TmainForm.FormCreate(Sender: TObject);
begin
  Initiate;
end;

procedure TmainForm.FormShow(Sender: TObject);
begin
    Screen.Cursor := crAppStart;
    AboutBox.Show;
    Application.ProcessMessages;
    sleep(2500);
    Screen.Cursor := crDefault;
    AboutBox.Close;

end;

procedure TmainForm.ResetBClick(Sender: TObject);
begin
  MaterialCB11.Clear;
  MaterialCB21.Clear;
  MaterialCB31.Clear;
  MaterialCB41.Clear;
  SystemCB11.Clear;
  SystemCB21.Clear;
  MaterialCB12.Clear;
  MaterialCB22.Clear;
  MaterialCB32.Clear;
  MaterialCB42.Clear;
  SystemCB12.Clear;
  SystemCB22.Clear;
  FoundationsCB.Clear;
  PositionCB.Clear;
  PlanShapeCB.Clear;
  RegularityCB1.Clear;
  RegularityCB2.Clear;
  RegularityCB3.Clear;
  RegularityCB4.Clear;
  RegularityCB5.Clear;
  RoofCB1.Clear;
  RoofCB2.Clear;
  RoofCB3.Clear;
  RoofCB4.Clear;
  RoofCB5.Clear;
  FloorCB1.Clear;
  FloorCB2.Clear;
  FloorCB3.Clear;
  WallsCB.Clear;
  DateCB1.Clear;
  HeightCB1.Clear;
  HeightCB2.Clear;
  HeightCB3.Clear;
  HeightCB4.Clear;
  OccupancyCB1.Clear;
  OccupancyCB2.Clear;
  Initiate;
  ResultE.Text:='';
  DateE1.Text:='';
  DateE2.Text:='';
  noStoreysE11.Text:='';
  noStoreysE12.Text:='';
  noStoreysE21.Text:='';
  noStoreysE22.Text:='';
  noStoreysE31.Text:='';
  noStoreysE32.Text:='';
  noStoreysE4.Text:='';
  NameE.Text:='';
  AuthorsE.Text:='';
  CountriesCB.ItemIndex:=0;
  RegionE.Text:='';
  ObservationsRE.Text:='';
  //FeedbackRE.Text:='';
  Image.Picture:=nil;
  PDFform.Image.Picture:=nil;
  PDFform.warning.Caption:='Picture not available';
  PDFform2.Image.Picture:=nil;
  PDFform2.warning.Caption:='Picture not available';
end;

procedure TmainForm.ResizeBMP(b : TBitmap; NewWidth, NewHeight : integer);
var
  tbmp : TBitmap;
begin
  tbmp := TBitmap.Create;
  tbmp.Width := b.Width;
  tbmp.Height := b.Height;
  BitBlt(tbmp.Canvas.Handle,0,0,tbmp.Width,tbmp.Height,
  b.Canvas.Handle,0,0,SRCCOPY);
  b.Width := NewWidth;
  b.Height := NewHeight;
  StretchBlt(b.Canvas.Handle,0,0,b.Width,b.Height,tbmp.Canvas.Handle,0,0,tbmp.Width,tbmp.Height,SRCCOPY);
  tbmp.Free;
end;


procedure TmainForm.FoundationsCBSelect(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.HeightCB1Select(Sender: TObject);
begin
  ValidateHeight;
  BuildTaxonomy;
end;

procedure TmainForm.HeightCB2Select(Sender: TObject);
begin
  ValidateHeight;
  BuildTaxonomy;
end;

procedure TmainForm.HeightCB3Select(Sender: TObject);
begin
  ValidateHeight;
  BuildTaxonomy;
end;

procedure TmainForm.HeightCB4Select(Sender: TObject);
begin
  ValidateHeight;
  BuildTaxonomy;
end;

procedure TmainForm.Initiate;
begin
  ObservationsRE.Clear;
  //FeedbackRE.Clear;
  ObservationsRE.text:= 'Additional information on the building typology, e.g. a description of building function, structural strengths and deficiencies, and expected seismic performance.' ;
 // FeedbackRE.Text:= 'Provide some feedback to the EERI.';
  MaterialCB11.Items.Add('Unknown Material');
  MaterialCB11.Items.Add('Concrete, unknown reinforcement');
  MaterialCB11.Items.Add('Concrete, unreinforced');
  MaterialCB11.Items.Add('Concrete, reinforced');
  MaterialCB11.Items.Add('Concrete, composite with steel section');
  MaterialCB11.Items.Add('Steel');
  MaterialCB11.Items.Add('Metal (except steel)');
  MaterialCB11.Items.Add('Masonry, unknown reinforcement');
  MaterialCB11.Items.Add('Masonry, unreinforced');
  MaterialCB11.Items.Add('Masonry, confined');
  MaterialCB11.Items.Add('Masonry, reinforced');
  MaterialCB11.Items.Add('Earth, unknown reinforcement');
  MaterialCB11.Items.Add('Earth, unreinforced');
  MaterialCB11.Items.Add('Earth, reinforced');
  MaterialCB11.Items.Add('Wood');
  MaterialCB11.Items.Add('Other material');
  MaterialCB11.Itemindex:=0;

  MaterialCB12.Items.Add('Unknown Material');
  MaterialCB12.Items.Add('Concrete, unknown reinforcement');
  MaterialCB12.Items.Add('Concrete, unreinforced');
  MaterialCB12.Items.Add('Concrete, reinforced');
  MaterialCB12.Items.Add('Concrete, composite with steel section');
  MaterialCB12.Items.Add('Steel');
  MaterialCB12.Items.Add('Metal (except steel)');
  MaterialCB12.Items.Add('Masonry, unknown reinforcement');
  MaterialCB12.Items.Add('Masonry, unreinforced');
  MaterialCB12.Items.Add('Masonry, confined');
  MaterialCB12.Items.Add('Masonry, reinforced');
  MaterialCB12.Items.Add('Earth, unknown reinforcement');
  MaterialCB12.Items.Add('Earth, unreinforced');
  MaterialCB12.Items.Add('Earth, reinforced');
  MaterialCB12.Items.Add('Wood');
  MaterialCB12.Items.Add('Other material');
  MaterialCB12.Itemindex:=0;

  RoofCB1.Items.Add('Unknown roof shape');
  RoofCB1.Items.Add('Flat');
  RoofCB1.Items.Add('Pitched with gable ends');
  RoofCB1.Items.Add('Pitched and hipped');
  RoofCB1.Items.Add('Pitched with dormers');
  RoofCB1.Items.Add('Monopitch');
  RoofCB1.Items.Add('Sawtooth');
  RoofCB1.Items.Add('Curved');
  RoofCB1.Items.Add('Complex regular');
  RoofCB1.Items.Add('Complex irregular');
  RoofCB1.Items.Add('Roof shape, other');
  RoofCB1.Itemindex:=0;

  RoofCB2.Items.Add('Unknown roof covering');
  RoofCB2.Items.Add('Concrete roof, no covering');
  RoofCB2.Items.Add('Clay or concrete tile roof covering');
  RoofCB2.Items.Add('Fibre cement or metal tile covering');
  RoofCB2.Items.Add('Membrane roof covering');
  RoofCB2.Items.Add('Slate roof covering');
  RoofCB2.Items.Add('Stone slab roof covering');
  RoofCB2.Items.Add('Metal or asbestos sheet covering');
  RoofCB2.Items.Add('Wooden or asphalt shingle covering');
  RoofCB2.Items.Add('Vegetative roof covering');
  RoofCB2.Items.Add('Earthen roof covering');
  RoofCB2.Items.Add('Solar panelled roofs');
  RoofCB2.Items.Add('Tensile membrane or fabric roof');
  RoofCB2.Items.Add('Roof covering, other');
  RoofCB2.Itemindex:=0;

  RoofCB3.Items.Add('Roof material, unknown');
  RoofCB3.Items.Add('Masonry roof');
  RoofCB3.Items.Add('Earthen roof');
  RoofCB3.Items.Add('Concrete roof');
  RoofCB3.Items.Add('Metal roof');
  RoofCB3.Items.Add('Wooden roof');
  RoofCB3.Items.Add('Fabric roof');
  RoofCB3.Items.Add('Roof material,other');
  RoofCB3.Itemindex:=0;

  RoofCB5.Items.Add('Roof-wall diaphragm connection unknown');
  RoofCB5.Items.Add('Roof-wall diaphragm connection not provided');
  RoofCB5.Items.Add('Roof-wall diaphragm connection present');
  RoofCB5.Items.Add('Roof tie-down unknown');
  RoofCB5.Items.Add('Roof tie-down not provided');
  RoofCB5.Items.Add('Roof tie-down present');

  RoofCB5.Itemindex:=0;

  FoundationsCB.Items.Add('Unknown foundation system');
  FoundationsCB.Items.Add('Shallow foundation, with lateral capacity');
  FoundationsCB.Items.Add('Shallow foundation, with no lateral capacity');
  FoundationsCB.Items.Add('Deep foundation, with lateral capacity');
  FoundationsCB.Items.Add('Deep foundation, with no lateral capacity');
  FoundationsCB.Items.Add('Foundation, other');
  FoundationsCB.Itemindex:=0;

  PositionCB.Items.Add('Unknown building position');
  PositionCB.Items.Add('Detached building');
  PositionCB.Items.Add('Adjoining building(s) on one side');
  PositionCB.Items.Add('Adjoining building(s) on two sides');
  PositionCB.Items.Add('Adjoining building(s) on three sides');
  PositionCB.Itemindex:=0;

  PlanShapeCB.Items.Add('Unknown plan shape');
  PlanShapeCB.Items.Add('Square, solid');
  PlanShapeCB.Items.Add('Square, with an opening in plan');
  PlanShapeCB.Items.Add('Rectangular, solid');
  PlanShapeCB.Items.Add('Rectangular, with an opening in plan');
  PlanShapeCB.Items.Add('L-shape');
  PlanShapeCB.Items.Add('Curved, solid (e.g. circular, eliptical, ovoid)');
  PlanShapeCB.Items.Add('Curved, with an opening in plan');
  PlanShapeCB.Items.Add('Triangular, solid');
  PlanShapeCB.Items.Add('Triangular, with an opening in plan');
  PlanShapeCB.Items.Add('E-shape');
  PlanShapeCB.Items.Add('H-shape');
  PlanShapeCB.Items.Add('S-shape');
  PlanShapeCB.Items.Add('T-shape');
  PlanShapeCB.Items.Add('U- or C-shape');
  PlanShapeCB.Items.Add('X-shape');
  PlanShapeCB.Items.Add('Y-shape');
  PlanShapeCB.Items.Add('Polygonal, solid');
  PlanShapeCB.Items.Add('Polygonal, with an opening in plan');
  PlanShapeCB.Items.Add('Irregular plan shape');
  PlanShapeCB.Itemindex:=0;

  FloorCB1.Items.Add('Floor material, unknown');
  FloorCB1.Items.Add('No elevated or suspended floor material (single-storey)');
  FloorCB1.Items.Add('Masonry floor');
  FloorCB1.Items.Add('Earthen floor');
  FloorCB1.Items.Add('Concrete floor');
  FloorCB1.Items.Add('Metal floor');
  FloorCB1.Items.Add('Wooden floor');
  FloorCB1.Items.Add('Floor material, other');
  FloorCB1.Itemindex:=0;

  FloorCB3.Items.Add('Floor-wall diaphragm connection, unknown');
  FloorCB3.Items.Add('Floor-wall diaphragm connection not provided');
  FloorCB3.Items.Add('Floor-wall diaphragm connection present');
  FloorCB3.Itemindex:=0;

  WallsCB.Items.Add('Unknown material of exterior walls');
  WallsCB.Items.Add('Concrete exterior walls');
  WallsCB.Items.Add('Glass exterior walls');
  WallsCB.Items.Add('Earthen exterior walls');
  WallsCB.Items.Add('Masonry exterior walls');
  WallsCB.Items.Add('Metal exterior walls');
  WallsCB.Items.Add('Vegetative exterior walls');
  WallsCB.Items.Add('Wooden exterior walls');
  WallsCB.Items.Add('Stucco finish on light framing for exterior walls');
  WallsCB.Items.Add('Plastic/vinyl exterior walls, various');
  WallsCB.Items.Add('Cement-based boards for exterior walls');
  WallsCB.Items.Add('Material of exterior walls, other');
  WallsCB.Itemindex:=0;

  HeightCB1.Items.Add('Unknown number of storeys');
  HeightCB1.Items.Add('Range of the number of storeys');
  HeightCB1.Items.Add('Exact number of storeys');
  HeightCB1.Items.Add('Approximate number of storeys');
  HeightCB1.Itemindex:=0;

  HeightCB2.Items.Add('Unknown number of storeys');
  HeightCB2.Items.Add('Range of the number of storeys');
  HeightCB2.Items.Add('Exact number of storeys');
  HeightCB2.Items.Add('Approximate number of storeys');
  HeightCB2.Itemindex:=0;

  HeightCB3.Items.Add('Height above grade unknown');
  HeightCB3.Items.Add('Range of height above grade');
  HeightCB3.Items.Add('Exact height above grade');
  HeightCB3.Items.Add('Approximate height above grade');
  HeightCB3.Itemindex:=0;

  HeightCB4.Items.Add('Unknown slope');
  HeightCB4.Items.Add('Slope of the ground');
  HeightCB4.Itemindex:=0;

  DateCB1.Items.Add('Year unknown');
  DateCB1.Items.Add('Exact date of construction or retrofit');
  DateCB1.Items.Add('Bounds for the date of construction or retrofit');
  DateCB1.Items.Add('Latest possible date of construction or retrofit');
  DateCB1.Items.Add('Approximate date of construction or retrofit');
  DateCB1.Itemindex:=0;

  RegularityCB1.Items.Add('Unknown structural irregularity');
  RegularityCB1.Items.Add('Regular structure');
  RegularityCB1.Items.Add('Irregular structure');
  RegularityCB1.Itemindex:=0;

  OccupancyCB1.Items.Add('Unknown occupancy type');
  OccupancyCB1.Items.Add('Residential');
  OccupancyCB1.Items.Add('Commercial and public');
  OccupancyCB1.Items.Add('Mixed use');
  OccupancyCB1.Items.Add('Industrial');
  OccupancyCB1.Items.Add('Agriculture');
  OccupancyCB1.Items.Add('Assembly');
  OccupancyCB1.Items.Add('Government');
  OccupancyCB1.Items.Add('Education');
  OccupancyCB1.Items.Add('Other occupancy type');
  OccupancyCB1.Itemindex:=0;

	CountriesCB.Items.Add('Unknown');
	CountriesCB.Items.Add('Afghanistan');
	CountriesCB.Items.Add('Albania');
	CountriesCB.Items.Add('Algeria');
	CountriesCB.Items.Add('Andorra');
	CountriesCB.Items.Add('Angola');
	CountriesCB.Items.Add('Antigua and Barbuda');
	CountriesCB.Items.Add('Argentina');
	CountriesCB.Items.Add('Armenia');
	CountriesCB.Items.Add('Australia');
	CountriesCB.Items.Add('Austria');
	CountriesCB.Items.Add('Azerbaijan');
	CountriesCB.Items.Add('Bahamas, The');
	CountriesCB.Items.Add('Bahrain');
	CountriesCB.Items.Add('Bangladesh');
	CountriesCB.Items.Add('Barbados');
	CountriesCB.Items.Add('Belarus');
	CountriesCB.Items.Add('Belgium');
	CountriesCB.Items.Add('Belize');
	CountriesCB.Items.Add('Benin');
	CountriesCB.Items.Add('Bhutan');
	CountriesCB.Items.Add('Bolivia');
	CountriesCB.Items.Add('Bosnia and Herzegovina');
	CountriesCB.Items.Add('Botswana');
	CountriesCB.Items.Add('Brazil');
	CountriesCB.Items.Add('Brunei');
	CountriesCB.Items.Add('Bulgaria');
	CountriesCB.Items.Add('Burkina Faso');
	CountriesCB.Items.Add('Burundi');
	CountriesCB.Items.Add('Cambodia');
	CountriesCB.Items.Add('Cameroon');
	CountriesCB.Items.Add('Canada');
	CountriesCB.Items.Add('Cape Verde');
	CountriesCB.Items.Add('Central African Republic');
	CountriesCB.Items.Add('Chad');
	CountriesCB.Items.Add('Chile');
	CountriesCB.Items.Add('China, Peoples Republic of');
	CountriesCB.Items.Add('Colombia');
	CountriesCB.Items.Add('Comoros');
	CountriesCB.Items.Add('Congo, Democratic Republic of the (Congo � Kinshasa)');
	CountriesCB.Items.Add('Congo, Republic of the (Congo � Brazzaville)');
	CountriesCB.Items.Add('Costa Rica');
	CountriesCB.Items.Add('Cote dIvoire (Ivory Coast)');
	CountriesCB.Items.Add('Croatia');
	CountriesCB.Items.Add('Cuba');
	CountriesCB.Items.Add('Cyprus');
	CountriesCB.Items.Add('Czech Republic');
	CountriesCB.Items.Add('Denmark');
	CountriesCB.Items.Add('Djibouti');
	CountriesCB.Items.Add('Dominica');
	CountriesCB.Items.Add('Dominican Republic');
	CountriesCB.Items.Add('Ecuador');
	CountriesCB.Items.Add('Egypt');
	CountriesCB.Items.Add('El Salvador');
	CountriesCB.Items.Add('Equatorial Guinea');
	CountriesCB.Items.Add('Eritrea');
	CountriesCB.Items.Add('Estonia');
	CountriesCB.Items.Add('Ethiopia');
	CountriesCB.Items.Add('Fiji');
	CountriesCB.Items.Add('Finland');
	CountriesCB.Items.Add('France');
	CountriesCB.Items.Add('Gabon');
	CountriesCB.Items.Add('Gambia, The');
	CountriesCB.Items.Add('Georgia');
	CountriesCB.Items.Add('Germany');
	CountriesCB.Items.Add('Ghana');
	CountriesCB.Items.Add('Greece');
	CountriesCB.Items.Add('Grenada');
	CountriesCB.Items.Add('Guatemala');
	CountriesCB.Items.Add('Guinea');
	CountriesCB.Items.Add('Guinea-Bissau');
	CountriesCB.Items.Add('Guyana');
	CountriesCB.Items.Add('Haiti');
	CountriesCB.Items.Add('Honduras');
	CountriesCB.Items.Add('Hungary');
	CountriesCB.Items.Add('Iceland');
	CountriesCB.Items.Add('India');
	CountriesCB.Items.Add('Indonesia');
	CountriesCB.Items.Add('Iran');
	CountriesCB.Items.Add('Iraq');
	CountriesCB.Items.Add('Ireland');
	CountriesCB.Items.Add('Israel');
	CountriesCB.Items.Add('Italy');
	CountriesCB.Items.Add('Jamaica');
	CountriesCB.Items.Add('Japan');
	CountriesCB.Items.Add('Jordan');
	CountriesCB.Items.Add('Kazakhstan');
	CountriesCB.Items.Add('Kenya');
	CountriesCB.Items.Add('Kiribati');
	CountriesCB.Items.Add('Korea, Democratic Peoples Republic of (North Korea)');
	CountriesCB.Items.Add('Korea, Republic of  (South Korea)');
	CountriesCB.Items.Add('Kuwait');
	CountriesCB.Items.Add('Kyrgyzstan');
	CountriesCB.Items.Add('Laos');
	CountriesCB.Items.Add('Latvia');
	CountriesCB.Items.Add('Lebanon');
	CountriesCB.Items.Add('Lesotho');
	CountriesCB.Items.Add('Liberia');
	CountriesCB.Items.Add('Libya');
	CountriesCB.Items.Add('Liechtenstein');
	CountriesCB.Items.Add('Lithuania');
	CountriesCB.Items.Add('Luxembourg');
	CountriesCB.Items.Add('Macedonia');
	CountriesCB.Items.Add('Madagascar');
	CountriesCB.Items.Add('Malawi');
	CountriesCB.Items.Add('Malaysia');
	CountriesCB.Items.Add('Maldives');
	CountriesCB.Items.Add('Mali');
	CountriesCB.Items.Add('Malta');
	CountriesCB.Items.Add('Marshall Islands');
	CountriesCB.Items.Add('Mauritania');
	CountriesCB.Items.Add('Mauritius');
	CountriesCB.Items.Add('Mexico');
	CountriesCB.Items.Add('Micronesia');
	CountriesCB.Items.Add('Moldova');
	CountriesCB.Items.Add('Monaco');
	CountriesCB.Items.Add('Mongolia');
	CountriesCB.Items.Add('Montenegro');
	CountriesCB.Items.Add('Morocco');
	CountriesCB.Items.Add('Mozambique');
	CountriesCB.Items.Add('Myanmar (Burma)');
	CountriesCB.Items.Add('Namibia');
	CountriesCB.Items.Add('Nauru');
	CountriesCB.Items.Add('Nepal');
	CountriesCB.Items.Add('Netherlands');
	CountriesCB.Items.Add('New Zealand');
	CountriesCB.Items.Add('Nicaragua');
	CountriesCB.Items.Add('Niger');
	CountriesCB.Items.Add('Nigeria');
	CountriesCB.Items.Add('Norway');
	CountriesCB.Items.Add('Oman');
	CountriesCB.Items.Add('Pakistan');
	CountriesCB.Items.Add('Palau');
	CountriesCB.Items.Add('Panama');
	CountriesCB.Items.Add('Papua New Guinea');
	CountriesCB.Items.Add('Paraguay');
	CountriesCB.Items.Add('Peru');
	CountriesCB.Items.Add('Philippines');
	CountriesCB.Items.Add('Poland');
	CountriesCB.Items.Add('Portugal');
	CountriesCB.Items.Add('Qatar');
	CountriesCB.Items.Add('Romania');
	CountriesCB.Items.Add('Russia');
	CountriesCB.Items.Add('Rwanda');
	CountriesCB.Items.Add('Saint Kitts and Nevis');
	CountriesCB.Items.Add('Saint Lucia');
	CountriesCB.Items.Add('Saint Vincent and the Grenadines');
	CountriesCB.Items.Add('Samoa');
	CountriesCB.Items.Add('San Marino');
	CountriesCB.Items.Add('Sao Tome and Principe');
	CountriesCB.Items.Add('Saudi Arabia');
	CountriesCB.Items.Add('Senegal');
	CountriesCB.Items.Add('Serbia');
	CountriesCB.Items.Add('Seychelles');
	CountriesCB.Items.Add('Sierra Leone');
	CountriesCB.Items.Add('Singapore');
	CountriesCB.Items.Add('Slovakia');
	CountriesCB.Items.Add('Slovenia');
	CountriesCB.Items.Add('Solomon Islands');
	CountriesCB.Items.Add('Somalia');
	CountriesCB.Items.Add('South Africa');
	CountriesCB.Items.Add('Spain');
	CountriesCB.Items.Add('Sri Lanka');
	CountriesCB.Items.Add('Sudan');
	CountriesCB.Items.Add('Suriname');
	CountriesCB.Items.Add('Swaziland');
	CountriesCB.Items.Add('Sweden');
	CountriesCB.Items.Add('Switzerland');
	CountriesCB.Items.Add('Syria');
	CountriesCB.Items.Add('Tajikistan');
	CountriesCB.Items.Add('Tanzania');
	CountriesCB.Items.Add('Thailand');
	CountriesCB.Items.Add('Timor-Leste (East Timor)');
	CountriesCB.Items.Add('Togo');
	CountriesCB.Items.Add('Tonga');
	CountriesCB.Items.Add('Trinidad and Tobago');
	CountriesCB.Items.Add('Tunisia');
	CountriesCB.Items.Add('Turkey');
	CountriesCB.Items.Add('Turkmenistan');
	CountriesCB.Items.Add('Tuvalu');
	CountriesCB.Items.Add('Uganda');
	CountriesCB.Items.Add('Ukraine');
	CountriesCB.Items.Add('United Arab Emirates');
	CountriesCB.Items.Add('United Kingdom');
	CountriesCB.Items.Add('United States');
	CountriesCB.Items.Add('Uruguay');
	CountriesCB.Items.Add('Uzbekistan');
	CountriesCB.Items.Add('Vanuatu');
	CountriesCB.Items.Add('Vatican City');
	CountriesCB.Items.Add('Venezuela');
	CountriesCB.Items.Add('Vietnam');
	CountriesCB.Items.Add('Yemen');
	CountriesCB.Items.Add('Zambia');
	CountriesCB.Items.Add('Zimbabwe');
	CountriesCB.Items.Add('Abkhazia');
	CountriesCB.Items.Add('China, Republic of (Taiwan)');
	CountriesCB.Items.Add('Nagorno-Karabakh');
	CountriesCB.Items.Add('Northern Cyprus');
	CountriesCB.Items.Add('Pridnestrovie (Transnistria)');
	CountriesCB.Items.Add('Somaliland');
	CountriesCB.Items.Add('South Ossetia');
	CountriesCB.Items.Add('Ashmore and Cartier Islands');
	CountriesCB.Items.Add('Christmas Island');
	CountriesCB.Items.Add('Cocos (Keeling) Islands');
	CountriesCB.Items.Add('Coral Sea Islands');
	CountriesCB.Items.Add('Heard Island and McDonald Islands');
	CountriesCB.Items.Add('Norfolk Island');
	CountriesCB.Items.Add('New Caledonia');
	CountriesCB.Items.Add('French Polynesia');
	CountriesCB.Items.Add('Mayotte');
	CountriesCB.Items.Add('Saint Barthelemy');
	CountriesCB.Items.Add('Saint Martin');
	CountriesCB.Items.Add('Saint Pierre and Miquelon');
	CountriesCB.Items.Add('Wallis and Futuna');
	CountriesCB.Items.Add('French Southern and Antarctic Lands');
	CountriesCB.Items.Add('Clipperton Island');
	CountriesCB.Items.Add('Bouvet Island');
	CountriesCB.Items.Add('Cook Islands');
	CountriesCB.Items.Add('Niue');
	CountriesCB.Items.Add('Tokelau');
	CountriesCB.Items.Add('Guernsey');
	CountriesCB.Items.Add('Isle of Man');
	CountriesCB.Items.Add('Jersey');
	CountriesCB.Items.Add('Anguilla');
	CountriesCB.Items.Add('Bermuda');
	CountriesCB.Items.Add('British Indian Ocean Territory');
	CountriesCB.Items.Add('British Sovereign Base Areas');
	CountriesCB.Items.Add('British Virgin Islands');
	CountriesCB.Items.Add('Cayman Islands');
	CountriesCB.Items.Add('Falkland Islands (Islas Malvinas)');
	CountriesCB.Items.Add('Gibraltar');
	CountriesCB.Items.Add('Montserrat');
	CountriesCB.Items.Add('Pitcairn Islands');
	CountriesCB.Items.Add('Saint Helena');
	CountriesCB.Items.Add('South Georgia and the South Sandwich Islands');
	CountriesCB.Items.Add('Turks and Caicos Islands');
	CountriesCB.Items.Add('Northern Mariana Islands');
	CountriesCB.Items.Add('Puerto Rico');
	CountriesCB.Items.Add('American Samoa');
	CountriesCB.Items.Add('Baker Island');
	CountriesCB.Items.Add('Guam');
	CountriesCB.Items.Add('Howland Island');
	CountriesCB.Items.Add('Jarvis Island');
	CountriesCB.Items.Add('Johnston Atoll');
	CountriesCB.Items.Add('Kingman Reef');
	CountriesCB.Items.Add('Midway Islands');
	CountriesCB.Items.Add('Navassa Island');
	CountriesCB.Items.Add('Palmyra Atoll');
	CountriesCB.Items.Add('U.S. Virgin Islands');
	CountriesCB.Items.Add('Wake Island');
	CountriesCB.Items.Add('Hong Kong');
	CountriesCB.Items.Add('Macau');
	CountriesCB.Items.Add('Faroe Islands');
	CountriesCB.Items.Add('Greenland');
	CountriesCB.Items.Add('French Guiana');
	CountriesCB.Items.Add('Guadeloupe');
	CountriesCB.Items.Add('Martinique');
	CountriesCB.Items.Add('Reunion');
	CountriesCB.Items.Add('Aland');
	CountriesCB.Items.Add('Aruba');
	CountriesCB.Items.Add('Netherlands Antilles');
	CountriesCB.Items.Add('Svalbard');
	CountriesCB.Items.Add('Ascension');
	CountriesCB.Items.Add('Tristan da Cunha');
	CountriesCB.Items.Add('Antarctica');
	CountriesCB.Items.Add('Kosovo');
	CountriesCB.Items.Add('Palestinian Territories (Gaza Strip and West Bank)');
	CountriesCB.Items.Add('Western Sahara');
	CountriesCB.Items.Add('Australian Antarctic Territory');
	CountriesCB.Items.Add('Ross Dependency');
	CountriesCB.Items.Add('Peter I Island');
	CountriesCB.Items.Add('Queen Maud Land');
	CountriesCB.Items.Add('British Antarctic Territory');
  CountriesCB.ItemIndex:=0;
  ValidateMaterial1;
  ValidateSystem1;
  ValidateMaterial2;
  ValidateSystem2;
  ValidateRoof;
  ValidateFloor;
  ValidateHeight;
  ValidateDate;
  ValidateRegularity;
  ValidateOccupancy;

end;


procedure TmainForm.MaterialCB11Select(Sender: TObject);
begin
  ValidateMaterial1;
  SetDirection2;
  if DirectionCB.checked then ValidateMaterial2;
  BuildTaxonomy;
end;

procedure TmainForm.MaterialCB12Select(Sender: TObject);
begin
  ValidateMaterial2;
  ValidateSystem2;
  BuildTaxonomy;
end;

procedure TmainForm.MaterialCB21Select(Sender: TObject);
begin
  SetDirection2;
  BuildTaxonomy;
end;

procedure TmainForm.MaterialCB22Select(Sender: TObject);
begin
  BuildTaxonomy;
end;


procedure TmainForm.MaterialCB31Select(Sender: TObject);
begin
  SetDirection2;
  BuildTaxonomy;
end;

procedure TmainForm.MaterialCB32Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.MaterialCB41Select(Sender: TObject);
begin
  SetDirection2;
  BuildTaxonomy;
end;

procedure TmainForm.MaterialCB42Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.NexusBClick(Sender: TObject);
begin
    ShellExecEx('http://www.nexus.globalquakemodel.org/gem-ontology-taxonomy/building-taxonomy/', '','open', SW_SHOWNORMAL);
    //ShellExecEx('vitor.silva@netvisao.pt', '','open', SW_SHOWNORMAL)
end;

procedure TmainForm.noStoreysE12Change(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.noStoreysE22Change(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.noStoreysE32Change(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.noStoreysE4Change(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.ObservationsREChange(Sender: TObject);
begin
      ObservationsRE.Font.Color := clBlack;
end;

procedure TmainForm.ObservationsREClick(Sender: TObject);
begin
  if ObservationsRE.Text = 'Additional information on the building typology, e.g. a description of building function, structural strengths and deficiencies, and expected seismic performance.' then begin
      ObservationsRE.Text := '';
      ObservationsRE.Font.Color := clBlack;
  end;
end;

procedure TmainForm.OccupancyCB1Select(Sender: TObject);
begin
  ValidateOccupancy;
  BuildTaxonomy;
end;

procedure TmainForm.OccupancyCB2Select(Sender: TObject);
begin
  BuildTaxonomy;
  if OccupancyCB2.ItemIndex>0 then begin
    reportForm.OccupancyCB2.Checked:= true;
  end
  else begin
    reportForm.OccupancyCB2.Checked:= false;
  end;
end;

procedure TmainForm.omitCBClick(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.PlanShapeCBSelect(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.PositionCBSelect(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.RegularityCB1Select(Sender: TObject);
begin
  ValidateRegularity;
  BuildTaxonomy;
end;

procedure TmainForm.RegularityCB2Select(Sender: TObject);
begin
  ValidateRegularity2;
  BuildTaxonomy;
end;

procedure TmainForm.RegularityCB3Select(Sender: TObject);
begin
  ValidateRegularity3;
  BuildTaxonomy;
end;

procedure TmainForm.RegularityCB4Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.RegularityCB5Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.RoofCB1Select(Sender: TObject);
begin
  ValidateRoof;
  BuildTaxonomy;
end;

procedure TmainForm.RoofCB2Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.RoofCB3Select(Sender: TObject);
begin
  ValidateRoof;
  BuildTaxonomy;
end;

procedure TmainForm.RoofCB4Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.RoofCB5Select(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.SystemCB11Select(Sender: TObject);
begin
  SetDirection2;
  ValidateSystem1;
  if DirectionCB.checked then ValidateSystem2;
  BuildTaxonomy;
end;

procedure TmainForm.SystemCB12Select(Sender: TObject);
begin
  ValidateSystem2;
  BuildTaxonomy;
end;

procedure TmainForm.SystemCB21Select(Sender: TObject);
begin
  SetDirection2;
  BuildTaxonomy;
end;

procedure TmainForm.SystemCB22Select(Sender: TObject);
begin
  BuildTaxonomy;
  if SystemCB22.ItemIndex>0 then begin
    reportForm.SystemCB22.Checked:= true;
  end
  else begin
    reportForm.MaterialCB22.Checked:= false;
  end;
end;

procedure TmainForm.uploadBClick(Sender: TObject);
var
  Picture: TPicture;
  Bitmap1,Bitmap2: TBitmap;
  height, width: integer;
begin
  Picture := TPicture.Create;
  PDFform.warning.Caption:='';
  PDFform2.warning.Caption:='';
  try
    if OpenDialog.Execute then Picture.LoadFromFile(OpenDialog.Filename);
    Bitmap1 := TBitmap.Create;
    Bitmap2 := TBitmap.Create;
    try
      Bitmap1.Width := Picture.Width;
      Bitmap1.Height := Picture.Height;
      Bitmap1.Canvas.Draw(0, 0, Picture.Graphic);
      if (Bitmap1.Width > 0) and (Bitmap1.Height > 0)  then begin
      
        if Bitmap1.Width/Bitmap1.Height < 640/180 then begin
          height := 520;
          width := round(520*Bitmap1.Width/Bitmap1.Height);
          PDFForm.Image.Height:=180;
          PDFForm.Image.Width:=round(180*Bitmap1.Width/Bitmap1.Height);
          PDFForm.Image.Left:=round((658-PDFForm.Image.Width)/2);
          PDFForm2.Image.Height:=180;
          PDFForm2.Image.Width:=round(180*Bitmap1.Width/Bitmap1.Height);
          PDFForm2.Image.Left:=round((658-PDFForm2.Image.Width)/2);
        end;
        if Bitmap1.Width/Bitmap1.Height > 640/180 then begin
          height := round(600*Bitmap1.Height/Bitmap1.Width);
          width := 600;
          PDFForm.Image.Width:=640;
          PDFForm.Image.Height:=round(640*Bitmap1.Height/Bitmap1.Width);
          PDFForm.Image.Left:=round((658-PDFForm.Image.Width)/2);
          PDFForm2.Image.Width:=640;
          PDFForm2.Image.Height:=round(640*Bitmap1.Height/Bitmap1.Width);
          PDFForm2.Image.Left:=round((658-PDFForm2.Image.Width)/2);
        end;

       (* if Bitmap2.Width/Bitmap2.Height < 250/220 then begin
          height := 520;
          width := round(520*Bitmap2.Width/Bitmap2.Height);
          PDFForm.Image.Height:=220;
          PDFForm.Image.Width:=round(220*Bitmap2.Width/Bitmap2.Height);
          PDFForm.Image.Left:=round((658-PDFForm.Image.Width)/2);
        end;
        if Bitmap2.Width/Bitmap2.Height > 250/220 then begin
          height := round(600*Bitmap2.Height/Bitmap2.Width);
          width := 600;
          PDFForm.Image.Width:=250;
          PDFForm.Image.Height:=round(250*Bitmap2.Height/Bitmap2.Width);
          PDFForm.Image.Left:=round((658-PDFForm.Image.Width)/2);
        end;      *)

        ResizeBMP(Bitmap1,width,height);
        Image.Picture.Bitmap:=Bitmap1;
        PDFForm.Image.Picture.Bitmap:=Bitmap1;
        PDFForm2.Image.Picture.Bitmap:=Bitmap1;
      end;

      finally
        Bitmap1.Free;
      end;
    finally
      Picture.Free;
    end;
end;

procedure TmainForm.ValidateMaterial1;
begin

  MaterialCB21.Clear;
  MaterialCB31.Clear;
  MaterialCB41.Clear;
  SystemCB11.Clear;

  if MaterialCB11.ItemIndex=0 then begin
    MaterialCB21.Enabled:=false;
    MaterialCB31.Enabled:=false;
    MaterialCB41.Enabled:=false;
  end
  else if MaterialCB11.ItemIndex=2 then begin
    MaterialCB21.Items.Add('Unknown concrete technology');
    MaterialCB21.Items.Add('Cast-in-place concrete');
    MaterialCB21.Items.Add('Precast concrete');
    MaterialCB21.Enabled:=true;
  end
  else if (MaterialCB11.ItemIndex=1) or (MaterialCB11.ItemIndex=3) or (MaterialCB11.ItemIndex=4) then begin
    MaterialCB21.Items.Add('Unknown concrete technology');
    MaterialCB21.Items.Add('Cast-in-place concrete');
    MaterialCB21.Items.Add('Precast concrete');
    MaterialCB21.Items.Add('Cast-in-place prestressed concrete');
    MaterialCB21.Items.Add('Precast prestressed concrete');
    MaterialCB21.Enabled:=true;
  end
  else if MaterialCB11.ItemIndex=5 then begin
    MaterialCB21.Items.Add('Steel, unknown ');
    MaterialCB21.Items.Add('Cold-formed steel members');
    MaterialCB21.Items.Add('Hot-rolled steel members');
    MaterialCB21.Items.Add('Steel, other ');
    MaterialCB21.Enabled:=true;
  end
  else if MaterialCB11.ItemIndex=6 then begin
    MaterialCB21.Items.Add('Metal, unknown ');
    MaterialCB21.Items.Add('Iron');
    MaterialCB21.Items.Add('Metal, other ');
    MaterialCB21.Enabled:=true;
  end
  else if (MaterialCB11.ItemIndex>6) and (MaterialCB11.ItemIndex<11) then begin
    MaterialCB21.Items.Add('Masonry unit, unknown');
    MaterialCB21.Items.Add('Adobe blocks');
    MaterialCB21.Items.Add('Stone, unknown technology');
    MaterialCB21.Items.Add('Rubble (field stone) or semi-dressed stone');
    MaterialCB21.Items.Add('Dressed stone');
    MaterialCB21.Items.Add('Fired clay unit, unknown type');
    MaterialCB21.Items.Add('Fired clay solid bricks');
    MaterialCB21.Items.Add('Fired clay hollow bricks');
    MaterialCB21.Items.Add('Fired clay hollow blocks or tiles');
    MaterialCB21.Items.Add('Concrete blocks, unknown type');
    MaterialCB21.Items.Add('Concrete blocks, solid');
    MaterialCB21.Items.Add('Concrete blocks, hollow');
    MaterialCB21.Items.Add('Masonry unit, other');
    if MaterialCB11.ItemIndex=10 then begin
      MaterialCB41.Items.Add('Unknown reinforcement');
      MaterialCB41.Items.Add('Steel-reinforced');
      MaterialCB41.Items.Add('Wood-reinforced');
      MaterialCB41.Items.Add('Bamboo-, cane- or rope-reinforced');
      MaterialCB41.Items.Add('Fibre reinforcing mesh');
      MaterialCB41.Items.Add('Reinforced concrete bands');
      MaterialCB41.Enabled:=true;
    end;
    MaterialCB21.Enabled:=true;
  end
  else if (MaterialCB11.ItemIndex>10) and (MaterialCB11.ItemIndex<14) then begin
    MaterialCB21.Items.Add('Unknown earth technology');
    MaterialCB21.Items.Add('Rammed earth');
    MaterialCB21.Items.Add('Cob or wet construction');
    MaterialCB21.Items.Add('Earth technology, other');
    MaterialCB21.Enabled:=true;
  end
  else if MaterialCB11.ItemIndex=14 then begin
    MaterialCB21.Items.Add('Wood, unknown');
    MaterialCB21.Items.Add('Heavy wood');
    MaterialCB21.Items.Add('Light wood members');
    MaterialCB21.Items.Add('Solid wood');
    MaterialCB21.Items.Add('Wattle and daub');
    MaterialCB21.Items.Add('Bamboo');
    MaterialCB21.Items.Add('Wood, other');
    MaterialCB21.Enabled:=true;
  end
  else begin
    MaterialCB21.Enabled:=false;
    MaterialCB31.Enabled:=false;
    MaterialCB41.Enabled:=false;
  end;

  if MaterialCB11.ItemIndex=5 then begin
    MaterialCB31.Items.Add('Unknown connection');
    MaterialCB31.Items.Add('Welded connections');
    MaterialCB31.Items.Add('Riveted connections');
    MaterialCB31.Items.Add('Bolted connections');
    MaterialCB31.Enabled:=true;
  end
  else if (MaterialCB11.ItemIndex>6) and (MaterialCB11.ItemIndex<11) then begin
    MaterialCB31.Items.Add('Mortar type, unknown');
    MaterialCB31.Items.Add('No mortar');
    MaterialCB31.Items.Add('Mud mortar');
    MaterialCB31.Items.Add('Lime mortar');
    MaterialCB31.Items.Add('Cement mortar');
    MaterialCB31.Items.Add('Cement:lime mortar');
    MaterialCB31.Items.Add('Stone, unknown type');
    MaterialCB31.Items.Add('Limestone');
    MaterialCB31.Items.Add('Sandstone');
    MaterialCB31.Items.Add('Tuff');
    MaterialCB31.Items.Add('Slate');
    MaterialCB31.Items.Add('Granite');
    MaterialCB31.Items.Add('Basalt');
    MaterialCB31.Items.Add('Stone, other type');
    MaterialCB31.Enabled:=true;
  end
  else begin
    MaterialCB31.Enabled:=false;
  end;

  MaterialCB21.ItemIndex:=0;
  MaterialCB31.ItemIndex:=0;
  MaterialCB41.ItemIndex:=0;

  if (MaterialCB11.ItemIndex>10) and (MaterialCB11.ItemIndex<14) then begin
    SystemCB11.Items.Add('Unknown lateral load-resisting system');
    SystemCB11.Items.Add('No lateral load-resisting system');
    SystemCB11.Items.Add('Wall');
    SystemCB11.Items.Add('Hybrid lateral load-resisting system');
    SystemCB11.Items.Add('Other lateral load-resisting system');
  end
  else if ((MaterialCB11.ItemIndex>6) and (MaterialCB11.ItemIndex<11)) or (MaterialCB11.ItemIndex=14) then begin
    SystemCB11.Items.Add('Unknown lateral load-resisting system');
    SystemCB11.Items.Add('No lateral load-resisting system');
    SystemCB11.Items.Add('Moment frame');
    SystemCB11.Items.Add('Post and beam');
    SystemCB11.Items.Add('Wall');
    SystemCB11.Items.Add('Hybrid lateral load-resisting system');
    SystemCB11.Items.Add('Other lateral load-resisting system');
  end
  else begin
    SystemCB11.Items.Add('Unknown lateral load-resisting system');
    SystemCB11.Items.Add('No lateral load-resisting system');
    SystemCB11.Items.Add('Moment frame');
    SystemCB11.Items.Add('Infilled frame');
    SystemCB11.Items.Add('Braced frame');
    SystemCB11.Items.Add('Post and beam');
    SystemCB11.Items.Add('Wall');
    SystemCB11.Items.Add('Dual frame-wall system');
    SystemCB11.Items.Add('Flat slab/plate or waffle slab');
    SystemCB11.Items.Add('Infilled flat slab/plate or infilled waffle slab');
    SystemCB11.Items.Add('Hybrid lateral load-resisting system');
    SystemCB11.Items.Add('Other lateral load-resisting system');
  end;

  SystemCB11.Itemindex:=0;
  ValidateSystem1;
end;

procedure TmainForm.ValidateMaterial2;
begin

    MaterialCB22.Clear;
    MaterialCB32.Clear;
    MaterialCB42.Clear;
    SystemCB12.Clear;

    if MaterialCB12.ItemIndex=0 then begin
      MaterialCB22.Enabled:=false;
      MaterialCB32.Enabled:=false;
      MaterialCB42.Enabled:=false;
    end
    else if MaterialCB12.ItemIndex=2 then begin
      MaterialCB22.Items.Add('Unknown concrete technology');
      MaterialCB22.Items.Add('Cast-in-place concrete');
      MaterialCB22.Items.Add('Precast concrete');
      MaterialCB22.Enabled:=true;
    end
    else if (MaterialCB12.ItemIndex=1) or (MaterialCB12.ItemIndex=3) or (MaterialCB12.ItemIndex=4) then begin
      MaterialCB22.Items.Add('Unknown concrete technology');
      MaterialCB22.Items.Add('Cast-in-place concrete');
      MaterialCB22.Items.Add('Precast concrete');
      MaterialCB22.Items.Add('Cast-in-place prestressed concrete');
      MaterialCB22.Items.Add('Precast prestressed concrete');
      MaterialCB22.Enabled:=true;
    end
    else if MaterialCB12.ItemIndex=5 then begin
      MaterialCB22.Items.Add('Steel, unknown ');
      MaterialCB22.Items.Add('Cold-formed steel members');
      MaterialCB22.Items.Add('Hot-rolled steel members');
      MaterialCB22.Items.Add('Steel, other ');
      MaterialCB22.Enabled:=true;
    end
    else if MaterialCB12.ItemIndex=6 then begin
      MaterialCB22.Items.Add('Metal, unknown ');
      MaterialCB22.Items.Add('Iron');
      MaterialCB22.Items.Add('Metal, other ');
      MaterialCB22.Enabled:=true;
    end
    else if (MaterialCB12.ItemIndex>6) and (MaterialCB12.ItemIndex<11) then begin
      MaterialCB22.Items.Add('Masonry unit, unknown');
      MaterialCB22.Items.Add('Adobe blocks');
      MaterialCB22.Items.Add('Stone, unknown technology');
      MaterialCB22.Items.Add('Rubble (field stone) or semi-dressed stone');
      MaterialCB22.Items.Add('Dressed stone');
      MaterialCB22.Items.Add('Fired clay unit, unknown type');
      MaterialCB22.Items.Add('Fired clay solid bricks');
      MaterialCB22.Items.Add('Fired clay hollow bricks');
      MaterialCB22.Items.Add('Fired clay hollow blocks or tiles');
      MaterialCB22.Items.Add('Concrete blocks, unknown type');
      MaterialCB22.Items.Add('Concrete blocks, solid');
      MaterialCB22.Items.Add('Concrete blocks, hollow');
      MaterialCB22.Items.Add('Masonry unit, other');
      if MaterialCB12.ItemIndex=10 then begin
        MaterialCB42.Items.Add('Unknown reinforcement');
        MaterialCB42.Items.Add('Steel-reinforced');
        MaterialCB42.Items.Add('Wood-reinforced');
        MaterialCB42.Items.Add('Bamboo-, cane- or rope-reinforced');
        MaterialCB42.Items.Add('Reinforced composite mesh');
        MaterialCB42.Items.Add('Reinforced concrete bands');
        MaterialCB42.Enabled:=true;
      end;
      MaterialCB22.Enabled:=true;
    end
    else if (MaterialCB12.ItemIndex>10) and (MaterialCB12.ItemIndex<14) then begin
      MaterialCB22.Items.Add('Unknown earth technology');
      MaterialCB22.Items.Add('Rammed earth');
      MaterialCB22.Items.Add('Cob or wet construction');
      MaterialCB22.Items.Add('Earth technology, other');
      MaterialCB22.Enabled:=true;
    end
    else if MaterialCB12.ItemIndex=14 then begin
      MaterialCB22.Items.Add('Wood, unknown');
      MaterialCB22.Items.Add('Heavy wood');
      MaterialCB22.Items.Add('Light wood members');
      MaterialCB22.Items.Add('Solid wood');
      MaterialCB22.Items.Add('Wattle and daub');
      MaterialCB22.Items.Add('Bamboo');
      MaterialCB22.Items.Add('Wood, other');
      MaterialCB22.Enabled:=true;
    end
    else begin
      MaterialCB22.Enabled:=false;
      MaterialCB32.Enabled:=false;
      MaterialCB42.Enabled:=false;
    end;

    if MaterialCB12.ItemIndex=5 then begin
      MaterialCB32.Items.Add('Welded connections');
      MaterialCB32.Items.Add('Riveted connections');
      MaterialCB32.Items.Add('Bolted connections');
      MaterialCB32.Enabled:=true;
    end
    else if (MaterialCB12.ItemIndex>6) and (MaterialCB12.ItemIndex<11) then begin
      MaterialCB32.Items.Add('Mortar type, unknown');
      MaterialCB32.Items.Add('No mortar');
      MaterialCB32.Items.Add('Mud mortar');
      MaterialCB32.Items.Add('Lime mortar');
      MaterialCB32.Items.Add('Cement mortar');
      MaterialCB32.Items.Add('Cement:lime mortar');
      MaterialCB32.Items.Add('Stone, unknown type');
      MaterialCB32.Items.Add('Limestone');
      MaterialCB32.Items.Add('Sandstone');
      MaterialCB32.Items.Add('Tuff');
      MaterialCB32.Items.Add('Slate');
      MaterialCB32.Items.Add('Granite');
      MaterialCB32.Items.Add('Basalt');
      MaterialCB32.Items.Add('Stone, other type');
      MaterialCB32.Enabled:=true;
    end
    else begin
      MaterialCB32.Enabled:=false;
    end;

    MaterialCB22.ItemIndex:=0;
    MaterialCB32.ItemIndex:=0;
    MaterialCB42.ItemIndex:=0;

    if (MaterialCB12.ItemIndex>10) and (MaterialCB12.ItemIndex<14) then begin
      SystemCB12.Items.Add('Unknown lateral load-resisting system');
      SystemCB12.Items.Add('No lateral load-resisting system');
      SystemCB12.Items.Add('Wall');
      SystemCB12.Items.Add('Hybrid lateral load-resisting system');
      SystemCB12.Items.Add('Other lateral load-resisting system');
    end
    else if ((MaterialCB12.ItemIndex>6) and (MaterialCB12.ItemIndex<11)) or (MaterialCB12.ItemIndex=14) then begin
      SystemCB12.Items.Add('Unknown lateral load-resisting system');
      SystemCB12.Items.Add('No lateral load-resisting system');
      SystemCB12.Items.Add('Moment frame');
      SystemCB12.Items.Add('Post and beam');
      SystemCB12.Items.Add('Wall');
      SystemCB12.Items.Add('Hybrid lateral load-resisting system');
      SystemCB12.Items.Add('Other lateral load-resisting system');
    end
    else begin
      SystemCB12.Items.Add('Unknown lateral load-resisting system');
      SystemCB12.Items.Add('No lateral load-resisting system');
      SystemCB12.Items.Add('Moment frame');
      SystemCB12.Items.Add('Infilled frame');
      SystemCB12.Items.Add('Braced frame');
      SystemCB12.Items.Add('Post and beam');
      SystemCB12.Items.Add('Wall');
      SystemCB12.Items.Add('Dual frame-wall system');
      SystemCB12.Items.Add('Flat slab/plate or waffle slab');
      SystemCB12.Items.Add('Infilled flat slab/plate or infilled waffle slab');
      SystemCB12.Items.Add('Hybrid lateral load-resisting system');
      SystemCB12.Items.Add('Other lateral load-resisting system');
    end;

  SystemCB12.Itemindex:=0;
  ValidateSystem2;
end;

procedure TmainForm.SetDirection2;
begin
  if DirectionCB.checked then begin
    MaterialCB12.ItemIndex:=MaterialCB11.ItemIndex;
    MaterialCB22.ItemIndex:=MaterialCB21.ItemIndex;
    MaterialCB32.ItemIndex:=MaterialCB31.ItemIndex;
    MaterialCB42.ItemIndex:=MaterialCB41.ItemIndex;
    SystemCB12.ItemIndex:=SystemCB11.ItemIndex;
    SystemCB22.ItemIndex:=SystemCB21.ItemIndex;
  end;
end;

procedure TmainForm.ValidateSystem1;
begin

  SystemCB21.Clear;

  if (SystemCB11.ItemIndex=0) or (SystemCB11.ItemIndex=1) then begin
    SystemCB21.Enabled:=false;
  end
  else begin
    SystemCB21.Items.Add('Ductility unknown');
    SystemCB21.Items.Add('Ductile');
    SystemCB21.Items.Add('Non-ductile');
    SystemCB21.Items.Add('Base isolation and/or energy dissipation devices');
    SystemCB21.Enabled:=true;
  end;

  SystemCB21.ItemIndex:=0;

end;

procedure TmainForm.ValidateSystem2;
begin

  SystemCB22.Clear;

  if (SystemCB12.ItemIndex=0) or (SystemCB12.ItemIndex=1) then begin
    SystemCB22.Enabled:=false;
  end
  else begin
    SystemCB22.Items.Add('Ductility unknown');
    SystemCB22.Items.Add('Ductile');
    SystemCB22.Items.Add('Non-ductile');
    SystemCB22.Items.Add('Base isolation and/or energy dissipation devices');
    SystemCB22.Enabled:=true;
  end;

  SystemCB22.ItemIndex:=0;

end;

procedure TmainForm.WallsCBSelect(Sender: TObject);
begin
  BuildTaxonomy;
end;

procedure TmainForm.ValidateRoof;
begin

  RoofCB4.Clear;

 if (RoofCB3.ItemIndex=0) or (RoofCB3.ItemIndex=7) then begin
    RoofCB4.Enabled:=false;
  end
  else if RoofCB3.ItemIndex=1 then begin
    RoofCB4.Items.Add('Masonry roof, unknown');
    RoofCB4.Items.Add('Vaulted masonry roof');
    RoofCB4.Items.Add('Shallow-arched masonry roof');
    RoofCB4.Items.Add('Composite masonry and concrete roof system');
    RoofCB4.Enabled:=true;
  end
  else if RoofCB3.ItemIndex=2 then begin
    RoofCB4.Items.Add('Earthen roof, unknown');
    RoofCB4.Items.Add('Vaulted earthen roofs');
    RoofCB4.Enabled:=true;
  end
  else if RoofCB3.ItemIndex=3 then begin
    RoofCB4.Items.Add('Concrete roof, unknown');
    RoofCB4.Items.Add('Cast-in-place beamless RC roof');
    RoofCB4.Items.Add('Cast-in-place beam-supported RC roof');
    RoofCB4.Items.Add('Precast concrete roof with RC topping');
    RoofCB4.Items.Add('Precast concrete roof without RC topping');
    RoofCB4.Enabled:=true;
  end
  else if RoofCB3.ItemIndex=4 then begin
    RoofCB4.Items.Add('Metal roof, unknown');
    RoofCB4.Items.Add('Metal beams or trusses supporting light roofing');
    RoofCB4.Items.Add('Metal roof beams supporting precast concrete slabs');
    RoofCB4.Items.Add('Composite steel roof deck and concrete slab');
    RoofCB4.Enabled:=true;
  end
  else if RoofCB3.ItemIndex=5 then begin
    RoofCB4.Items.Add('Wooden roof, unknown');
    RoofCB4.Items.Add('Wooden structure with light roof covering');
    RoofCB4.Items.Add('Wooden beams or trusses with heavy roof covering');
    RoofCB4.Items.Add('Wood-based sheets on rafters or purlins');
    RoofCB4.Items.Add('Plywood panels or other light-weigth panels for roof');
    RoofCB4.Items.Add('Bamboo, straw or thatch roof');
    RoofCB4.Enabled:=true;
  end
  else if RoofCB3.ItemIndex=6 then begin
    RoofCB4.Items.Add('inflatable or tensile membrane roof');
    RoofCB4.Items.Add('Fabric roof, other');
    RoofCB4.Enabled:=true;
  end;

  RoofCB4.ItemIndex:=0;

end;

procedure TmainForm.ValidateFloor;
begin

  FloorCB2.Clear;

 if (FloorCB1.ItemIndex=0) or (FloorCB1.ItemIndex=1) or (FloorCB1.ItemIndex=7) then begin
    FloorCB2.Enabled:=false;
  end
  else if FloorCB1.ItemIndex=2 then begin
    FloorCB2.Items.Add('Masonry floor, unknown');
    FloorCB2.Items.Add('Vaulted masonry floor');
    FloorCB2.Items.Add('Shallow-arched masonry floor');
    FloorCB2.Items.Add('Composite cast-in place RC and masonry floor');
    FloorCB2.Enabled:=true;
  end
  else if FloorCB1.ItemIndex=3 then begin
    FloorCB2.Items.Add('Earthen floor, unknown');
    FloorCB2.Enabled:=true;
  end
  else if FloorCB1.ItemIndex=4 then begin
    FloorCB2.Items.Add('Concrete floor, unknown');
    FloorCB2.Items.Add('Cast-in-place beamless RC floor');
    FloorCB2.Items.Add('Cast-in-place beam-supported RC floor');
    FloorCB2.Items.Add('Precast concrete floor with RC topping');
    FloorCB2.Items.Add('Precast concrete floor without RC topping');
    FloorCB2.Enabled:=true;
  end
  else if FloorCB1.ItemIndex=5 then begin
    FloorCB2.Items.Add('Metal floor, unknown');
    FloorCB2.Items.Add('Metal beams, trusses or joists supporting light flooring');
    FloorCB2.Items.Add('Metal floor beams supporting precast concrete slabs');
    FloorCB2.Items.Add('Composite steel deck and concrete slab');
    FloorCB2.Enabled:=true;
  end
  else if FloorCB1.ItemIndex=6 then begin
    FloorCB2.Items.Add('Wooden floor, unknown');
    FloorCB2.Items.Add('Wood beams/trusses & joists supporting light flooring');
    FloorCB2.Items.Add('Wood beams/trusses & joists supporting heavy flooring');
    FloorCB2.Items.Add('Wood-based sheets on joists or beams');
    FloorCB2.Items.Add('Plywood panels or other light-weigth panels for floor');
    FloorCB2.Enabled:=true;
  end;

  FloorCB2.ItemIndex:=0;

end;

procedure TmainForm.ValidateHeight;
begin

  HeightCB2.Enabled:=false;
  HeightCB3.Enabled:=false;
  HeightCB4.Enabled:=false;
  noStoreysE11.Enabled:=false;
  noStoreysE12.Enabled:=false;
  noStoreysE21.Enabled:=false;
  noStoreysE22.Enabled:=false;
  noStoreysE31.Enabled:=false;
  noStoreysE32.Enabled:=false;
  noStoreysE4.Enabled:=false;

 if HeightCB1.ItemIndex>0 then begin

    HeightCB2.Enabled:=true;
    HeightCB3.Enabled:=true;
    HeightCB4.Enabled:=true;
    noStoreysE11.Enabled:=true;
    noStoreysE12.Enabled:=true;

    if HeightCB1.ItemIndex=1 then begin
      noStoreysE11.width:=45;
      noStoreysE11.Enabled:=true;
      noStoreysE12.Enabled:=true;
    end
    else begin
      noStoreysE11.width:=100;
      noStoreysE11.Enabled:=true;
      noStoreysE12.Enabled:=true;
    end;

    if HeightCB2.ItemIndex=0 then begin
      noStoreysE21.Enabled:=false;
      noStoreysE22.Enabled:=false;
      noStoreysE21.width:=100;
    end
    else if HeightCB2.ItemIndex=1 then begin
      noStoreysE21.width:=45;
      noStoreysE21.Enabled:=true;
      noStoreysE22.Enabled:=true;
    end
    else begin
      noStoreysE21.width:=100;
      noStoreysE21.Enabled:=true;
      noStoreysE22.Enabled:=true;
    end;

    if HeightCB3.ItemIndex=0 then begin
      noStoreysE31.Enabled:=false;
      noStoreysE32.Enabled:=false;
      noStoreysE31.width:=100;
    end
    else if HeightCB3.ItemIndex=1 then begin
      noStoreysE31.width:=45;
      noStoreysE31.Enabled:=true;
      noStoreysE32.Enabled:=true;
    end
    else begin
      noStoreysE31.width:=100;
      noStoreysE31.Enabled:=true;
      noStoreysE32.Enabled:=true;
    end;

    if HeightCB4.ItemIndex=0 then begin
      noStoreysE4.Enabled:=false;
    end
    else begin
      noStoreysE4.Enabled:=true;
    end;
  end
  else begin
    noStoreysE11.Enabled:=false;
    noStoreysE12.Enabled:=false;
    noStoreysE11.width:=100;
  end;

end;

procedure TmainForm.ValidateDate;
begin

 if DateCB1.ItemIndex=0 then begin
    DateE1.Enabled:=false;
    DateE2.Enabled:=false;
    DateE1.Width:=100;
  end
  else if DateCB1.ItemIndex=2 then begin
    DateE1.Width:=45;
    DateE1.Enabled:=true;
    DateE2.Enabled:=true;
  end
  else begin
    DateE1.Width:=100;
    DateE1.Enabled:=true;
    DateE2.Enabled:=true;
  end;
end;

procedure TmainForm.ValidateRegularity;
begin

  RegularityCB2.Clear;
  RegularityCB3.Clear;
  RegularityCB4.Clear;
  RegularityCB5.Clear;

 if (RegularityCB1.ItemIndex=0) or (RegularityCB1.ItemIndex=1) then begin
    RegularityCB2.Enabled:=false;
    RegularityCB3.Enabled:=false;
    RegularityCB4.Enabled:=false;
    RegularityCB5.Enabled:=false;
  end
  else if RegularityCB1.ItemIndex=2 then begin
    RegularityCB2.Items.Add('No irregularity');
    RegularityCB2.Items.Add('Torsion eccentricity');
    RegularityCB2.Items.Add('Re-entrant corner');
    RegularityCB2.Items.Add('Other plan irregularity');
    RegularityCB2.Enabled:=true;
    RegularityCB3.Items.Add('No irregularity');
    RegularityCB3.Items.Add('Soft storey');
    RegularityCB3.Items.Add('Cripple wall');
    RegularityCB3.Items.Add('Short column');
    RegularityCB3.Items.Add('Pounding potential');
    RegularityCB3.Items.Add('Setback');
    RegularityCB3.Items.Add('Change in vertical structure');
    RegularityCB3.Items.Add('Other vertical irregularity');
    RegularityCB3.Enabled:=true;
  end;

  RegularityCB2.ItemIndex:=0;
  RegularityCB3.ItemIndex:=0;
  RegularityCB4.ItemIndex:=0;
  RegularityCB5.ItemIndex:=0;
end;

procedure TmainForm.ValidateRegularity2;
begin

  RegularityCB4.Clear;

 if RegularityCB2.ItemIndex=0 then begin
    RegularityCB4.Enabled:=false;
  end
  else begin
    RegularityCB4.Items.Add('No irregularity');
    RegularityCB4.Items.Add('Torsion eccentricity');
    RegularityCB4.Items.Add('Re-entrant corner');
    RegularityCB4.Items.Add('Other plan irregularity');
    RegularityCB4.Enabled:=true;
  end;

  RegularityCB4.ItemIndex:=0;

end;


procedure TmainForm.ValidateRegularity3;
begin

  RegularityCB5.Clear;

  if RegularityCB3.ItemIndex=0 then begin
      RegularityCB5.Enabled:=false;
    end
    else begin
      RegularityCB5.Items.Add('No irregularity');
      RegularityCB5.Items.Add('Soft storey');
      RegularityCB5.Items.Add('Cripple wall');
      RegularityCB5.Items.Add('Short column');
      RegularityCB5.Items.Add('Pounding potential');
      RegularityCB5.Items.Add('Setback');
      RegularityCB5.Items.Add('Change in vertical structure');
      RegularityCB5.Items.Add('Other vertical irregularity');
      RegularityCB5.Enabled:=true;
   end;

  RegularityCB5.ItemIndex:=0;

end;

procedure TmainForm.ValidateOccupancy;
begin

  OccupancyCB2.Clear;

 if OccupancyCB1.ItemIndex=0 then begin
    OccupancyCB2.Enabled:=false;
  end
  else if OccupancyCB1.ItemIndex=1 then begin
    OccupancyCB2.Items.Add('Residential, unknown type');
    OccupancyCB2.Items.Add('Single dwelling');
    OccupancyCB2.Items.Add('Multi-unit, unknown type');
    OccupancyCB2.Items.Add('2 Units (Duplex)');
    OccupancyCB2.Items.Add('3-4 Units');
    OccupancyCB2.Items.Add('5-9 Units');
    OccupancyCB2.Items.Add('10-19 Units');
    OccupancyCB2.Items.Add('20-49 Units');
    OccupancyCB2.Items.Add('50+ Units');
    OccupancyCB2.Items.Add('Temporary lodging');
    OccupancyCB2.Items.Add('Institutional housing');
    OccupancyCB2.Items.Add('Mobile home');
    OccupancyCB2.Items.Add('Informal housing');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=2 then begin
    OccupancyCB2.Items.Add('Commercial and public, unknown type');
    OccupancyCB2.Items.Add('Retail trade');
    OccupancyCB2.Items.Add('Wholesale trade and storage (warehouse)');
    OccupancyCB2.Items.Add('Offices, professional/technical services');
    OccupancyCB2.Items.Add('Hospital/medical clinic');
    OccupancyCB2.Items.Add('Entertainment');
    OccupancyCB2.Items.Add('Public building');
    OccupancyCB2.Items.Add('Covered parking garage');
    OccupancyCB2.Items.Add('Bus station');
    OccupancyCB2.Items.Add('Railway station');
    OccupancyCB2.Items.Add('Airport');
    OccupancyCB2.Items.Add('Recreation and leisure');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=3 then begin
    OccupancyCB2.Items.Add('Mixed, unknown type');
    OccupancyCB2.Items.Add('Mostly residential and commercial');
    OccupancyCB2.Items.Add('Mostly commercial and residential');
    OccupancyCB2.Items.Add('Mostly commercial and industrial');
    OccupancyCB2.Items.Add('Mostly residential and industrial');
    OccupancyCB2.Items.Add('Mostly industrial and commercial');
    OccupancyCB2.Items.Add('Mostly industrial and residential');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=4 then begin
    OccupancyCB2.Items.Add('Industrial, unknown type');
    OccupancyCB2.Items.Add('Heavy industrial');
    OccupancyCB2.Items.Add('Light industrial');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=5 then begin
    OccupancyCB2.Items.Add('Agriculture, unknown type');
    OccupancyCB2.Items.Add('Produce storage');
    OccupancyCB2.Items.Add('Animal shelter');
    OccupancyCB2.Items.Add('Agricultural processing');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=6 then begin
    OccupancyCB2.Items.Add('Assembly, unknown type');
    OccupancyCB2.Items.Add('Religious gathering');
    OccupancyCB2.Items.Add('Arena');
    OccupancyCB2.Items.Add('Cinema or concert hall');
    OccupancyCB2.Items.Add('Other gatherings');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=7 then begin
    OccupancyCB2.Items.Add('Government, unknown type');
    OccupancyCB2.Items.Add('Government, general services');
    OccupancyCB2.Items.Add('Government, emergency response');
    OccupancyCB2.Enabled:=true;
  end
  else if OccupancyCB1.ItemIndex=8 then begin
    OccupancyCB2.Items.Add('Education, unknown type');
    OccupancyCB2.Items.Add('Pre-school facility');
    OccupancyCB2.Items.Add('School');
    OccupancyCB2.Items.Add('College/university, offices and/or classrooms');
    OccupancyCB2.Items.Add('College/university, research facilities and/or labs');
    OccupancyCB2.Enabled:=true;
  end
  else begin
    OccupancyCB2.Enabled:=false;
  end;

  OccupancyCB2.ItemIndex:=0;

end;

procedure TmainForm.ExportPDFBClick(Sender: TObject);
begin

  if (AuthorsE.Text='') or (affiliationE.Text='')  then begin
    showmessage('Authors and Affilition are mandatory fields in order to create a TaxT report.');
  end
  else begin

    if MaterialCB11.ItemIndex>0 then begin
      reportForm.MaterialCB11.Checked:= true;
    end
    else begin
      reportForm.MaterialCB11.Checked:= false;
    end;

    if MaterialCB21.ItemIndex>0 then begin
      reportForm.MaterialCB21.Checked:= true;
    end
    else begin
      reportForm.MaterialCB21.Checked:= false;
    end;

    if MaterialCB31.ItemIndex>0 then begin
      reportForm.MaterialCB31.Checked:= true;
    end
    else begin
      reportForm.MaterialCB31.Checked:= false;
    end;

    if MaterialCB41.ItemIndex>0 then begin
      reportForm.MaterialCB41.Checked:= true;
    end
    else begin
      reportForm.MaterialCB41.Checked:= false;
    end;

    if MaterialCB12.ItemIndex>0 then begin
      reportForm.MaterialCB12.Checked:= true;
    end
    else begin
      reportForm.MaterialCB12.Checked:= false;
    end;

    if MaterialCB22.ItemIndex>0 then begin
      reportForm.MaterialCB22.Checked:= true;
    end
    else begin
      reportForm.MaterialCB22.Checked:= false;
    end;

    if MaterialCB32.ItemIndex>0 then begin
      reportForm.MaterialCB32.Checked:= true;
    end
    else begin
      reportForm.MaterialCB32.Checked:= false;
    end;

    if MaterialCB42.ItemIndex>0 then begin
      reportForm.MaterialCB42.Checked:= true;
    end
    else begin
      reportForm.MaterialCB42.Checked:= false;
    end;

    if SystemCB11.ItemIndex>0 then begin
      reportForm.SystemCB11.Checked:= true;
    end
    else begin
      reportForm.SystemCB11.Checked:= false;
    end;

    if SystemCB21.ItemIndex>0 then begin
      reportForm.SystemCB21.Checked:= true;
    end
    else begin
      reportForm.SystemCB21.Checked:= false;
    end;

    if SystemCB12.ItemIndex>0 then begin
      reportForm.SystemCB12.Checked:= true;
    end
    else begin
      reportForm.SystemCB12.Checked:= false;
    end;

    if SystemCB22.ItemIndex>0 then begin
      reportForm.SystemCB22.Checked:= true;
    end
    else begin
      reportForm.SystemCB22.Checked:= false;
    end;

    if DateCB1.ItemIndex>0 then begin
      reportForm.DateCB.Checked:= true;
    end
    else begin
      reportForm.DateCB.Checked:= false;
    end;

    if HeightCB1.ItemIndex>0 then begin
      reportForm.HeightCB1.Checked:= true;
    end
    else begin
      reportForm.HeightCB1.Checked:= false;
    end;

    if HeightCB3.ItemIndex>0 then begin
      reportForm.HeightCB3.Checked:= true;
    end
    else begin
      reportForm.HeightCB3.Checked:= false;
    end;

    if HeightCB2.ItemIndex>0 then begin
      reportForm.HeightCB2.Checked:= true;
    end
    else begin
      reportForm.HeightCB2.Checked:= false;
    end;

    if HeightCB4.ItemIndex>0 then begin
      reportForm.HeightCB4.Checked:= true;
    end
    else begin
      reportForm.HeightCB4.Checked:= false;
    end;

    if OccupancyCB1.ItemIndex>0 then begin
      reportForm.OccupancyCB1.Checked:= true;
    end
    else begin
      reportForm.OccupancyCB1.Checked:= false;
    end;

    if OccupancyCB2.ItemIndex>0 then begin
      reportForm.OccupancyCB2.Checked:= true;
    end
    else begin
      reportForm.OccupancyCB2.Checked:= false;
    end;

    if PositionCB.ItemIndex>0 then begin
      reportForm.PositionCB.Checked:= true;
    end
    else begin
      reportForm.PositionCB.Checked:= false;
    end;

    if PlanShapeCB.ItemIndex>0 then begin
      reportForm.PlanShapeCB.Checked:= true;
    end
    else begin
      reportForm.PlanShapeCB.Checked:= false;
    end;

    if RegularityCB1.ItemIndex>0 then begin
      reportForm.RegularityCB1.Checked:= true;
    end
    else begin
      reportForm.RegularityCB1.Checked:= false;
    end;

    if RegularityCB2.ItemIndex>0 then begin
      reportForm.RegularityCB2.Checked:= true;
    end
    else begin
      reportForm.RegularityCB2.Checked:= false;
    end;

    if RegularityCB3.ItemIndex>0 then begin
      reportForm.RegularityCB3.Checked:= true;
    end
    else begin
      reportForm.RegularityCB3.Checked:= false;
    end;

    if RegularityCB4.ItemIndex>0 then begin
      reportForm.RegularityCB4.Checked:= true;
    end
    else begin
      reportForm.RegularityCB4.Checked:= false;
    end;

    if RegularityCB5.ItemIndex>0 then begin
      reportForm.RegularityCB5.Checked:= true;
    end
    else begin
      reportForm.RegularityCB5.Checked:= false;
    end;

    if WallsCB.ItemIndex>0 then begin
      reportForm.WallsCB.Checked:= true;
    end
    else begin
      reportForm.WallsCB.Checked:= false;
    end;

    if RoofCB1.ItemIndex>0 then begin
      reportForm.RoofCB1.Checked:= true;
    end
    else begin
      reportForm.RoofCB1.Checked:= false;
    end;

    if RoofCB2.ItemIndex>0 then begin
      reportForm.RoofCB2.Checked:= true;
    end
    else begin
      reportForm.RoofCB2.Checked:= false;
    end;

    if RoofCB3.ItemIndex>0 then begin
      reportForm.RoofCB3.Checked:= true;
    end
    else begin
      reportForm.RoofCB3.Checked:= false;
    end;

    if RoofCB4.ItemIndex>0 then begin
      reportForm.RoofCB4.Checked:= true;
    end
    else begin
      reportForm.RoofCB4.Checked:= false;
    end;

    if RoofCB5.ItemIndex>0 then begin
      reportForm.RoofCB5.Checked:= true;
    end
    else begin
      reportForm.RoofCB5.Checked:= false;
    end;

    if FloorCB1.ItemIndex>0 then begin
      reportForm.FloorCB1.Checked:= true;
    end
    else begin
      reportForm.FloorCB1.Checked:= false;
    end;

    if FloorCB2.ItemIndex>0 then begin
      reportForm.FloorCB2.Checked:= true;
    end
    else begin
      reportForm.FloorCB2.Checked:= false;
    end;

    if FloorCB3.ItemIndex>0 then begin
      reportForm.FloorCB3.Checked:= true;
    end
    else begin
      reportForm.FloorCB3.Checked:= false;
    end;

    if FoundationsCB.ItemIndex>0 then begin
      reportForm.FoundationsCB.Checked:= true;
    end
    else begin
      reportForm.FoundationsCB.Checked:= false;
    end;

    if CountriesCB.ItemIndex>0 then begin
      reportForm.CountriesCB.Checked:= true;
    end
    else begin
      reportForm.CountriesCB.Checked:= false;
    end;

    if RegionE.Text = '' then begin
      reportForm.RegionCB.Checked:= false;
    end
    else begin
      reportForm.RegionCB.Checked:= true;
    end;

    if (ObservationsRE.Text = '') or (ObservationsRE.Text = 'Additional information on the building typology, e.g. a description of building function, structural strengths and deficiencies, and expected seismic performance.') then begin
      reportForm.ObsCB.Checked:= false;
    end
    else begin
      reportForm.ObsCB.Checked:= true;
    end;

    (*if (FeedbackRE.Text = '') or (FeedbackRE.Text= 'Provide some feedback to the EERI.') then begin
      reportForm.FeedbackCB.Checked:= false;
    end
    else begin
      reportForm.FeedbackCB.Checked:= true;
    end; *)

    reportForm.ShowModal;
  end;
end;


procedure TmainForm.AboutBClick(Sender: TObject);
begin
  Aboutbox.Height := 270;
  Aboutbox.BorderStyle:=bsDialog;
  Aboutbox.ShowModal;
end;

procedure TmainForm.BuildTaxonomy;
var
  Taxonomy: array [0..33] of string;
  ResTax, direction1, direction2: string;
begin

  //0 - Material type D1
  //1 - Material technology D1
  //2 - Material properties D1
  //3 - Type of lateral system D1
  //4 - System ductility D1
  //5 - Material type D2
  //6 - Material technology D2
  //7 - Material properties D2
  //8 - Type of lateral system D2
  //9 - System ductility D2
  //10- Date of construction
  //11- Height above the ground
  //12- Height below the ground
  //13- Height of grade
  //14- Slope of the ground
  //15- Occupancy type
  //16- Occupancy description
  //17- Position
  //18- Plan
  //19- Type of irregularity
  //20- Plan irregularity(primary)
  //21- Plan irregularity(secondary)
  //22- Vertical irregularity(primary)
  //23- Vertical irregularity(secondary)
  //24- Material of exterior walls
  //25- Roof shape
  //26- Roof covering
  //27- Roof system material
  //28- Roof system type
  //29- Roof connections
  //30- Floor system material
  //31- Floor system type
  //32- Floor connections
  //33 - Foundation

  if (MaterialCB11.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[0]:='MAT99';
  if MaterialCB11.ItemIndex=1 then Taxonomy[0]:='C99';
  if MaterialCB11.ItemIndex=2 then Taxonomy[0]:='CU';
  if MaterialCB11.ItemIndex=3 then Taxonomy[0]:='CR';
  if MaterialCB11.ItemIndex=4 then Taxonomy[0]:='SRC';

  if (MaterialCB11.ItemIndex>0) and (MaterialCB11.ItemIndex<5)  then begin
    if (MaterialCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:='+CT99';
    if MaterialCB21.ItemIndex=1 then Taxonomy[1]:='+CIP';
    if MaterialCB21.ItemIndex=2 then Taxonomy[1]:='+PC';
    if MaterialCB21.ItemIndex=3 then Taxonomy[1]:='+CIPPS';
    if MaterialCB21.ItemIndex=4 then Taxonomy[1]:='+PCPS';
  end;

  if MaterialCB11.ItemIndex=5 then begin
    Taxonomy[0]:='S';
    if (MaterialCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:='+S99';
    if MaterialCB21.ItemIndex=1 then Taxonomy[1]:='+SL';
    if MaterialCB21.ItemIndex=2 then Taxonomy[1]:='+SR';
    if MaterialCB21.ItemIndex=3 then Taxonomy[1]:='+SO';
  end;

  if MaterialCB11.ItemIndex=6 then begin
    Taxonomy[0]:='ME';
    if (MaterialCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:='+ME99';
    if MaterialCB21.ItemIndex=1 then Taxonomy[1]:='+MEIR';
    if MaterialCB21.ItemIndex=2 then Taxonomy[1]:='+MEO';
  end;

  if MaterialCB11.ItemIndex=5 then begin
    if (MaterialCB31.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[2]:='+SC99';
    if MaterialCB31.ItemIndex=1 then Taxonomy[2]:='+WEL';
    if MaterialCB31.ItemIndex=2 then Taxonomy[2]:='+RIV';
    if MaterialCB31.ItemIndex=3 then Taxonomy[2]:='+BOL';
  end;

  if (MaterialCB11.ItemIndex>6) and (MaterialCB11.ItemIndex<11) then begin
    if MaterialCB11.ItemIndex=7 then Taxonomy[0]:='M99';
    if MaterialCB11.ItemIndex=8 then Taxonomy[0]:='MUR';
    if MaterialCB11.ItemIndex=9 then Taxonomy[0]:='MCF';

    if (MaterialCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:='+MUN99';
    if MaterialCB21.ItemIndex=1 then Taxonomy[1]:='+ADO';
    if MaterialCB21.ItemIndex=2 then Taxonomy[1]:='+ST99';
    if MaterialCB21.ItemIndex=3 then Taxonomy[1]:='+STRUB';
    if MaterialCB21.ItemIndex=4 then Taxonomy[1]:='+STDRE';
    if MaterialCB21.ItemIndex=5 then Taxonomy[1]:='+CL99';
    if MaterialCB21.ItemIndex=6 then Taxonomy[1]:='+CLBRS';
    if MaterialCB21.ItemIndex=7 then Taxonomy[1]:='+CLBRH';
    if MaterialCB21.ItemIndex=8 then Taxonomy[1]:='+CLBLH';
    if MaterialCB21.ItemIndex=9 then Taxonomy[1]:='+CB99';
    if MaterialCB21.ItemIndex=10 then Taxonomy[1]:='+CBS';
    if MaterialCB21.ItemIndex=11 then Taxonomy[1]:='+CBH';
    if MaterialCB21.ItemIndex=12 then Taxonomy[1]:='+MO';

    if MaterialCB11.ItemIndex=10 then begin
      Taxonomy[0]:='MR';
      if (MaterialCB41.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:=Taxonomy[1]+'+MR99';
      if MaterialCB41.ItemIndex=1 then Taxonomy[1]:=Taxonomy[1]+'+RS';
      if MaterialCB41.ItemIndex=2 then Taxonomy[1]:=Taxonomy[1]+'+RW';
      if MaterialCB41.ItemIndex=3 then Taxonomy[1]:=Taxonomy[1]+'+RB';
      if MaterialCB41.ItemIndex=4 then Taxonomy[1]:=Taxonomy[1]+'+RCM';
      if MaterialCB41.ItemIndex=5 then Taxonomy[1]:=Taxonomy[1]+'+RCB';
    end;

    if (MaterialCB31.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[2]:='+MO99';
    if MaterialCB31.ItemIndex=1 then Taxonomy[2]:='+MON';
    if MaterialCB31.ItemIndex=2 then Taxonomy[2]:='+MOM';
    if MaterialCB31.ItemIndex=3 then Taxonomy[2]:='+MOL';
    if MaterialCB31.ItemIndex=4 then Taxonomy[2]:='+MOC';
    if MaterialCB31.ItemIndex=5 then Taxonomy[2]:='+MOCL';
    if MaterialCB31.ItemIndex=6 then Taxonomy[2]:='+SP99';
    if MaterialCB31.ItemIndex=7 then Taxonomy[2]:='+SPLI';
    if MaterialCB31.ItemIndex=8 then Taxonomy[2]:='+SPSA';
    if MaterialCB31.ItemIndex=9 then Taxonomy[2]:='+SPTU';
    if MaterialCB31.ItemIndex=10 then Taxonomy[2]:='+SPSL';
    if MaterialCB31.ItemIndex=11 then Taxonomy[2]:='+SPGR';
    if MaterialCB31.ItemIndex=12 then Taxonomy[2]:='+SPBA';
    if MaterialCB31.ItemIndex=13 then Taxonomy[2]:='+SPO';

  end;

  if (MaterialCB11.ItemIndex>10) and (MaterialCB11.ItemIndex<14) then begin
    if MaterialCB11.ItemIndex=11 then Taxonomy[0]:='E99';
    if MaterialCB11.ItemIndex=12 then Taxonomy[0]:='EU';
    if MaterialCB11.ItemIndex=13 then Taxonomy[0]:='ER';

    if (MaterialCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:='+ET99';
    if MaterialCB21.ItemIndex=1 then Taxonomy[1]:='+ETR';
    if MaterialCB21.ItemIndex=2 then Taxonomy[1]:='+ETC';
    if MaterialCB21.ItemIndex=3 then Taxonomy[1]:='+ETO';
  end;

  if MaterialCB11.ItemIndex=14 then begin
    Taxonomy[0]:='W';
    if (MaterialCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[1]:='+W99';
    if MaterialCB21.ItemIndex=1 then Taxonomy[1]:='+WHE';
    if MaterialCB21.ItemIndex=2 then Taxonomy[1]:='+WLI';
    if MaterialCB21.ItemIndex=3 then Taxonomy[1]:='+WS';
    if MaterialCB21.ItemIndex=4 then Taxonomy[1]:='+WWD';
    if MaterialCB21.ItemIndex=5 then Taxonomy[1]:='+WBB';
    if MaterialCB21.ItemIndex=6 then Taxonomy[1]:='+WO';
  end;

  if MaterialCB11.ItemIndex=15 then Taxonomy[0]:='MATO';

  if (SystemCB11.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[3]:='L99';

  if (MaterialCB11.ItemIndex>10) and (MaterialCB11.ItemIndex<14) then begin
    if SystemCB11.ItemIndex=1 then Taxonomy[3]:='LN';
    if SystemCB11.ItemIndex=2 then Taxonomy[3]:='LWAL';
    if SystemCB11.ItemIndex=3 then Taxonomy[3]:='LO';
  end
  else if ((MaterialCB11.ItemIndex>6) and (MaterialCB11.ItemIndex<11)) or (MaterialCB11.ItemIndex=14) then begin
    if SystemCB11.ItemIndex=1 then Taxonomy[3]:='LN';
    if SystemCB11.ItemIndex=2 then Taxonomy[3]:='LFM';;
    if SystemCB11.ItemIndex=3 then Taxonomy[3]:='LPB';
    if SystemCB11.ItemIndex=4 then Taxonomy[3]:='LWAL';
    if SystemCB11.ItemIndex=5 then Taxonomy[3]:='LO';
  end
  else begin
    if SystemCB11.ItemIndex=1 then Taxonomy[3]:='LN';
    if SystemCB11.ItemIndex=2 then Taxonomy[3]:='LFM';
    if SystemCB11.ItemIndex=3 then Taxonomy[3]:='LFINF';
    if SystemCB11.ItemIndex=4 then Taxonomy[3]:='LFBR';
    if SystemCB11.ItemIndex=5 then Taxonomy[3]:='LPB';
    if SystemCB11.ItemIndex=6 then Taxonomy[3]:='LWAL';
    if SystemCB11.ItemIndex=7 then Taxonomy[3]:='LDUAL';
    if SystemCB11.ItemIndex=8 then Taxonomy[3]:='LFLS';
    if SystemCB11.ItemIndex=9 then Taxonomy[3]:='LFLSINF';
    if SystemCB11.ItemIndex=10 then Taxonomy[3]:='LH';
    if SystemCB11.ItemIndex=11 then Taxonomy[3]:='LO';
  end;

  if SystemCB11.ItemIndex>0 then begin
    if (SystemCB21.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[4]:='+DU99';
    if SystemCB21.ItemIndex=1 then Taxonomy[4]:='+DUC';
    if SystemCB21.ItemIndex=2 then Taxonomy[4]:='+DNO';
    if SystemCB21.ItemIndex=3 then Taxonomy[4]:='+DBD';
  end;

  if (MaterialCB12.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[5]:='MAT99';
  if MaterialCB12.ItemIndex=1 then Taxonomy[5]:='C99';
  if MaterialCB12.ItemIndex=2 then Taxonomy[5]:='CU';
  if MaterialCB12.ItemIndex=3 then Taxonomy[5]:='CR';
  if MaterialCB12.ItemIndex=4 then Taxonomy[5]:='SRC';

  if (MaterialCB12.ItemIndex>0) and (MaterialCB12.ItemIndex<5)  then begin
    if (MaterialCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:='+CT99';
    if MaterialCB22.ItemIndex=1 then Taxonomy[6]:='+CIP';
    if MaterialCB22.ItemIndex=2 then Taxonomy[6]:='+PC';
    if MaterialCB22.ItemIndex=3 then Taxonomy[6]:='+CIPPS';
    if MaterialCB22.ItemIndex=4 then Taxonomy[6]:='+PCPS';
  end;



  if MaterialCB12.ItemIndex=5 then begin
    Taxonomy[5]:='S';
    if (MaterialCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:='+S99';
    if MaterialCB22.ItemIndex=1 then Taxonomy[6]:='+SL';
    if MaterialCB22.ItemIndex=2 then Taxonomy[6]:='+SR';
    if MaterialCB22.ItemIndex=3 then Taxonomy[6]:='+SO';
  end;

  if MaterialCB12.ItemIndex=6 then begin
    Taxonomy[5]:='ME';
    if (MaterialCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:='+ME99';
    if MaterialCB22.ItemIndex=1 then Taxonomy[6]:='+MEIR';
    if MaterialCB22.ItemIndex=2 then Taxonomy[6]:='+MEO';
  end;

  if MaterialCB12.ItemIndex=5 then begin
    if (MaterialCB32.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[7]:='+SC99';
    if MaterialCB32.ItemIndex=1 then Taxonomy[7]:='+WEL';
    if MaterialCB32.ItemIndex=2 then Taxonomy[7]:='+RIV';
    if MaterialCB32.ItemIndex=3 then Taxonomy[7]:='+BOL';
  end;

  if (MaterialCB12.ItemIndex>6) and (MaterialCB12.ItemIndex<11) then begin
    if MaterialCB12.ItemIndex=7 then Taxonomy[5]:='M99';
    if MaterialCB12.ItemIndex=8 then Taxonomy[5]:='MUR';
    if MaterialCB12.ItemIndex=9 then Taxonomy[5]:='MCF';

    if (MaterialCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:='+MUN99';
    if MaterialCB22.ItemIndex=1 then Taxonomy[6]:='+ADO';
    if MaterialCB22.ItemIndex=2 then Taxonomy[6]:='+ST99';
    if MaterialCB22.ItemIndex=3 then Taxonomy[6]:='+STRUB';
    if MaterialCB22.ItemIndex=4 then Taxonomy[6]:='+STDRE';
    if MaterialCB22.ItemIndex=5 then Taxonomy[6]:='+CL99';
    if MaterialCB22.ItemIndex=6 then Taxonomy[6]:='+CLBRS';
    if MaterialCB22.ItemIndex=7 then Taxonomy[6]:='+CLBRH';
    if MaterialCB22.ItemIndex=8 then Taxonomy[6]:='+CLBLH';
    if MaterialCB22.ItemIndex=9 then Taxonomy[6]:='+CB99';
    if MaterialCB22.ItemIndex=10 then Taxonomy[6]:='+CBS';
    if MaterialCB22.ItemIndex=11 then Taxonomy[6]:='+CBH';
    if MaterialCB22.ItemIndex=12 then Taxonomy[6]:='+MO';

    if MaterialCB12.ItemIndex=10 then begin
      Taxonomy[5]:='MR';
      if (MaterialCB42.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:=Taxonomy[6]+'+MR99';
      if MaterialCB42.ItemIndex=1 then Taxonomy[6]:=Taxonomy[6]+'+RS';
      if MaterialCB42.ItemIndex=2 then Taxonomy[6]:=Taxonomy[6]+'+RW';
      if MaterialCB42.ItemIndex=3 then Taxonomy[6]:=Taxonomy[6]+'+RB';
      if MaterialCB42.ItemIndex=4 then Taxonomy[6]:=Taxonomy[6]+'+RCM';
      if MaterialCB42.ItemIndex=5 then Taxonomy[6]:=Taxonomy[6]+'+RCB';
    end;

    if (MaterialCB32.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[7]:='+MO99';
    if MaterialCB32.ItemIndex=1 then Taxonomy[7]:='+MON';
    if MaterialCB32.ItemIndex=2 then Taxonomy[7]:='+MOM';
    if MaterialCB32.ItemIndex=3 then Taxonomy[7]:='+MOL';
    if MaterialCB32.ItemIndex=4 then Taxonomy[7]:='+MOC';
    if MaterialCB32.ItemIndex=5 then Taxonomy[7]:='+MOCL';
    if MaterialCB32.ItemIndex=6 then Taxonomy[7]:='+SP99';
    if MaterialCB32.ItemIndex=7 then Taxonomy[7]:='+SPLI';
    if MaterialCB32.ItemIndex=8 then Taxonomy[7]:='+SPSA';
    if MaterialCB32.ItemIndex=9 then Taxonomy[7]:='+SPTU';
    if MaterialCB32.ItemIndex=10 then Taxonomy[7]:='+SPSL';
    if MaterialCB32.ItemIndex=11 then Taxonomy[7]:='+SPGR';
    if MaterialCB32.ItemIndex=12 then Taxonomy[7]:='+SPBA';
    if MaterialCB32.ItemIndex=13 then Taxonomy[7]:='+SPO';

  end;

  if (MaterialCB12.ItemIndex>10) and (MaterialCB12.ItemIndex<14) then begin
    if MaterialCB12.ItemIndex=11 then Taxonomy[5]:='E99';
    if MaterialCB12.ItemIndex=12 then Taxonomy[5]:='EU';
    if MaterialCB12.ItemIndex=13 then Taxonomy[5]:='ER';

    if (MaterialCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:='+ET99';
    if MaterialCB22.ItemIndex=1 then Taxonomy[6]:='+ETR';
    if MaterialCB22.ItemIndex=2 then Taxonomy[6]:='+ETC';
    if MaterialCB22.ItemIndex=3 then Taxonomy[6]:='+ETO';
  end;

  if MaterialCB12.ItemIndex=14 then begin
    Taxonomy[5]:='W';
    if (MaterialCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[6]:='+W99';
    if MaterialCB22.ItemIndex=1 then Taxonomy[6]:='+WHE';
    if MaterialCB22.ItemIndex=2 then Taxonomy[6]:='+WLI';
    if MaterialCB22.ItemIndex=3 then Taxonomy[6]:='+WS';
    if MaterialCB22.ItemIndex=4 then Taxonomy[6]:='+WWD';
    if MaterialCB22.ItemIndex=5 then Taxonomy[6]:='+WBB';
    if MaterialCB22.ItemIndex=6 then Taxonomy[6]:='+WO';
  end;

  if MaterialCB12.ItemIndex=15 then Taxonomy[5]:='MATO';

  if (SystemCB12.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[8]:='L99';

  if (MaterialCB12.ItemIndex>10) and (MaterialCB12.ItemIndex<14) then begin
    if SystemCB12.ItemIndex=1 then Taxonomy[8]:='LN';
    if SystemCB12.ItemIndex=2 then Taxonomy[8]:='LWAL';
    if SystemCB12.ItemIndex=3 then Taxonomy[8]:='LO';
  end
  else if ((MaterialCB12.ItemIndex>6) and (MaterialCB12.ItemIndex<11)) or (MaterialCB12.ItemIndex=14) then begin
    if SystemCB12.ItemIndex=1 then Taxonomy[8]:='LN';
    if SystemCB12.ItemIndex=2 then Taxonomy[8]:='LFM';;
    if SystemCB12.ItemIndex=3 then Taxonomy[8]:='LPB';
    if SystemCB12.ItemIndex=4 then Taxonomy[8]:='LWAL';
    if SystemCB12.ItemIndex=5 then Taxonomy[8]:='LO';
  end
  else begin
    if SystemCB12.ItemIndex=1 then Taxonomy[8]:='LN';
    if SystemCB12.ItemIndex=2 then Taxonomy[8]:='LFM';
    if SystemCB12.ItemIndex=3 then Taxonomy[8]:='LFINF';
    if SystemCB12.ItemIndex=4 then Taxonomy[8]:='LFBR';
    if SystemCB12.ItemIndex=5 then Taxonomy[8]:='LPB';
    if SystemCB12.ItemIndex=6 then Taxonomy[8]:='LWAL';
    if SystemCB12.ItemIndex=7 then Taxonomy[8]:='LDUAL';
    if SystemCB12.ItemIndex=8 then Taxonomy[8]:='LFLS';
    if SystemCB12.ItemIndex=9 then Taxonomy[8]:='LFLSINF';
    if SystemCB12.ItemIndex=10 then Taxonomy[8]:='LH';
    if SystemCB12.ItemIndex=11 then Taxonomy[8]:='LO';
  end;

  if SystemCB12.ItemIndex>0 then begin
    if (SystemCB22.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[9]:='+DU99';
    if SystemCB22.ItemIndex=1 then Taxonomy[9]:='+DUC';
    if SystemCB22.ItemIndex=2 then Taxonomy[9]:='+DNO';
    if SystemCB22.ItemIndex=3 then Taxonomy[9]:='+DBD';
  end;

 if (DateCB1.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[10]:='Y99';
  if DateCB1.ItemIndex=1 then Taxonomy[10]:='YEX:'+dateE1.Text;
  if DateCB1.ItemIndex=2 then Taxonomy[10]:='YBET:'+dateE1.Text+','+dateE2.Text;
  if DateCB1.ItemIndex=3 then Taxonomy[10]:='YPRE:'+dateE1.Text;
  if DateCB1.ItemIndex=4 then Taxonomy[10]:='YAPP:'+dateE1.Text;

  if HeightCB1.ItemIndex=0 then begin
    if OmitCB.checked = false then Taxonomy[11]:='H99';
  end
  else begin
    if HeightCB1.ItemIndex=1 then Taxonomy[11]:='HBET:'+noStoreysE11.Text+','+noStoreysE12.Text;
    if HeightCB1.ItemIndex=2 then Taxonomy[11]:='HEX:'+noStoreysE11.Text;
    if HeightCB1.ItemIndex=3 then Taxonomy[11]:='HAPP:'+noStoreysE11.Text;

    if (HeightCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[12]:='+HB99';
    if HeightCB2.ItemIndex=1 then Taxonomy[12]:='+HBBET:'+noStoreysE21.Text+','+noStoreysE22.Text;
    if HeightCB2.ItemIndex=2 then Taxonomy[12]:='+HBEX:'+noStoreysE21.Text;
    if HeightCB2.ItemIndex=3 then Taxonomy[12]:='+HBAPP:'+noStoreysE21.Text;

    if (HeightCB3.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[12]:='+HF99';
    if HeightCB3.ItemIndex=1 then Taxonomy[13]:='+HFBET:'+noStoreysE31.Text+','+noStoreysE32.Text;
    if HeightCB3.ItemIndex=2 then Taxonomy[13]:='+HFEX:'+noStoreysE31.Text;
    if HeightCB3.ItemIndex=3 then Taxonomy[13]:='+HFAPP:'+noStoreysE31.Text;

    if (HeightCB4.ItemIndex=1) and (OmitCB.checked = false) then Taxonomy[14]:='+HD99';
    if HeightCB4.ItemIndex=1 then Taxonomy[14]:='+HD:'+noStoreysE4.Text;
  end;

 if OccupancyCB1.ItemIndex=0 then begin
    if OmitCB.checked = false then Taxonomy[15]:='OC99';
  end
  else begin
    if OccupancyCB1.ItemIndex=1 then begin
      Taxonomy[15]:='RES';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+RES99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+RES1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+RES2';
      if OccupancyCB2.ItemIndex=3 then Taxonomy[16]:='+RES2A';
      if OccupancyCB2.ItemIndex=4 then Taxonomy[16]:='+RES2B';
      if OccupancyCB2.ItemIndex=5 then Taxonomy[16]:='+RES2C';
      if OccupancyCB2.ItemIndex=6 then Taxonomy[16]:='+RES2D';
      if OccupancyCB2.ItemIndex=7 then Taxonomy[16]:='+RES2E';
      if OccupancyCB2.ItemIndex=8 then Taxonomy[16]:='+RES2F';
      if OccupancyCB2.ItemIndex=9 then Taxonomy[16]:='+RES3';
      if OccupancyCB2.ItemIndex=10 then Taxonomy[16]:='+RES4';
      if OccupancyCB2.ItemIndex=11 then Taxonomy[16]:='+RES5';
      if OccupancyCB2.ItemIndex=12 then Taxonomy[16]:='+RES6';
    end
    else if OccupancyCB1.ItemIndex=2 then begin
      Taxonomy[15]:='COM';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+COM99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+COM1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+COM2';
      if OccupancyCB2.ItemIndex=3 then Taxonomy[16]:='+COM3';
      if OccupancyCB2.ItemIndex=4 then Taxonomy[16]:='+COM4';
      if OccupancyCB2.ItemIndex=5 then Taxonomy[16]:='+COM5';
      if OccupancyCB2.ItemIndex=6 then Taxonomy[16]:='+COM6';
      if OccupancyCB2.ItemIndex=7 then Taxonomy[16]:='+COM7';
      if OccupancyCB2.ItemIndex=8 then Taxonomy[16]:='+COM8';
      if OccupancyCB2.ItemIndex=9 then Taxonomy[16]:='+COM9';
      if OccupancyCB2.ItemIndex=10 then Taxonomy[16]:='+COM10';
      if OccupancyCB2.ItemIndex=11 then Taxonomy[16]:='+COM11';
    end
    else if OccupancyCB1.ItemIndex=3 then begin
      Taxonomy[15]:='MIX';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+MIX99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+MIX1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+MIX2';
      if OccupancyCB2.ItemIndex=3 then Taxonomy[16]:='+MIX3';
      if OccupancyCB2.ItemIndex=4 then Taxonomy[16]:='+MIX4';
      if OccupancyCB2.ItemIndex=5 then Taxonomy[16]:='+MIX5';
      if OccupancyCB2.ItemIndex=6 then Taxonomy[16]:='+MIX6';
    end
    else if OccupancyCB1.ItemIndex=4 then begin
      Taxonomy[15]:='IND';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+IND99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+IND1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+IND2';
    end
    else if OccupancyCB1.ItemIndex=5 then begin
      Taxonomy[15]:='AGR';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+AGR99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+AGR1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+AGR2';
      if OccupancyCB2.ItemIndex=3 then Taxonomy[16]:='+AGR3';
    end
    else if OccupancyCB1.ItemIndex=6 then begin
      Taxonomy[15]:='ASS';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+ASS99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+ASS1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+ASS2';
      if OccupancyCB2.ItemIndex=3 then Taxonomy[16]:='+ASS3';
      if OccupancyCB2.ItemIndex=4 then Taxonomy[16]:='+ASS4';
    end
    else if OccupancyCB1.ItemIndex=7 then begin
      Taxonomy[15]:='GOV';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+GOV99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+GOV1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+GOV2';
    end
    else if OccupancyCB1.ItemIndex=8 then begin
      Taxonomy[15]:='EDU';
      if (OccupancyCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[16]:='+EDU99';
      if OccupancyCB2.ItemIndex=1 then Taxonomy[16]:='+EDU1';
      if OccupancyCB2.ItemIndex=2 then Taxonomy[16]:='+EDU2';
      if OccupancyCB2.ItemIndex=3 then Taxonomy[16]:='+EDU3';
      if OccupancyCB2.ItemIndex=4 then Taxonomy[16]:='+EDU4';
    end
    else if OccupancyCB1.ItemIndex=9 then begin
      Taxonomy[15]:='OCO';
    end
  end;

 if (PositionCB.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[17]:='BP99';
  if PositionCB.ItemIndex=1 then Taxonomy[17]:='BPD';
  if PositionCB.ItemIndex=2 then Taxonomy[17]:='BP1';
  if PositionCB.ItemIndex=3 then Taxonomy[17]:='BP2';
  if PositionCB.ItemIndex=4 then Taxonomy[17]:='BP3';
  if PositionCB.ItemIndex=5 then Taxonomy[17]:='BPI';

  if (PlanShapeCB.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[18]:='PLF99';
  if PlanShapeCB.ItemIndex=1 then Taxonomy[18]:='PLFSQ';
  if PlanShapeCB.ItemIndex=2 then Taxonomy[18]:='PLFSQO';
  if PlanShapeCB.ItemIndex=3 then Taxonomy[18]:='PLFR';
  if PlanShapeCB.ItemIndex=4 then Taxonomy[18]:='PLFRO';
  if PlanShapeCB.ItemIndex=5 then Taxonomy[18]:='PLFL';
  if PlanShapeCB.ItemIndex=6 then Taxonomy[18]:='PLFC';
  if PlanShapeCB.ItemIndex=7 then Taxonomy[18]:='PLFCO';
  if PlanShapeCB.ItemIndex=8 then Taxonomy[18]:='PLFD';
  if PlanShapeCB.ItemIndex=9 then Taxonomy[18]:='PLFDO';
  if PlanShapeCB.ItemIndex=10 then Taxonomy[18]:='PLFE';
  if PlanShapeCB.ItemIndex=11 then Taxonomy[18]:='PLFH';
  if PlanShapeCB.ItemIndex=12 then Taxonomy[18]:='PLFS';
  if PlanShapeCB.ItemIndex=13 then Taxonomy[18]:='PLFT';
  if PlanShapeCB.ItemIndex=14 then Taxonomy[18]:='PLFU';
  if PlanShapeCB.ItemIndex=15 then Taxonomy[18]:='PLFX';
  if PlanShapeCB.ItemIndex=16 then Taxonomy[18]:='PLFY';
  if PlanShapeCB.ItemIndex=17 then Taxonomy[18]:='PLFP';
  if PlanShapeCB.ItemIndex=18 then Taxonomy[18]:='PLFPO';
  if PlanShapeCB.ItemIndex=19 then Taxonomy[18]:='PLFI';

  if RegularityCB1.ItemIndex=0 then begin
    if OmitCB.checked = false then Taxonomy[19]:='IR99';
  end
  else begin
    if RegularityCB1.ItemIndex=1 then Taxonomy[19]:='IRRE';
    if RegularityCB1.ItemIndex=2 then begin
      Taxonomy[19]:='IRIR';
      if (OmitCB.checked = false) and (RegularityCB2.ItemIndex=0) then Taxonomy[20]:='+IRPP:IRN';
      if RegularityCB2.ItemIndex=1 then Taxonomy[20]:='+IRPP:TOR';
      if RegularityCB2.ItemIndex=2 then Taxonomy[20]:='+IRPP:REC';
      if RegularityCB2.ItemIndex=3 then Taxonomy[20]:='+IRPP:IRHO';

      if (OmitCB.checked = false) and (RegularityCB3.ItemIndex=0)  then Taxonomy[21]:='+IRVP:IRN';
      if RegularityCB3.ItemIndex=1 then Taxonomy[21]:='+IRVP:SOS';
      if RegularityCB3.ItemIndex=2 then Taxonomy[21]:='+IRVP:CRW';
      if RegularityCB3.ItemIndex=3 then Taxonomy[21]:='+IRVP:SHC';
      if RegularityCB3.ItemIndex=4 then Taxonomy[21]:='+IRVP:POP';
      if RegularityCB3.ItemIndex=5 then Taxonomy[21]:='+IRVP:SET';
      if RegularityCB3.ItemIndex=6 then Taxonomy[21]:='+IRVP:CHV';
      if RegularityCB3.ItemIndex=7 then Taxonomy[21]:='+IRVP:IRVO';

      if RegularityCB4.ItemIndex>0 then begin
        if RegularityCB4.ItemIndex=0 then Taxonomy[22]:='+IRPS:IRN';
        if RegularityCB4.ItemIndex=1 then Taxonomy[22]:='+IRPS:TOR';
        if RegularityCB4.ItemIndex=2 then Taxonomy[22]:='+IRPS:REC';
        if RegularityCB4.ItemIndex=3 then Taxonomy[22]:='+IRPS:IRHO';
      end;
      if RegularityCB5.ItemIndex>0 then begin
        if RegularityCB5.ItemIndex=0 then Taxonomy[23]:='+IRVS:IRN';
        if RegularityCB5.ItemIndex=1 then Taxonomy[23]:='+IRVS:SOS';
        if RegularityCB5.ItemIndex=2 then Taxonomy[23]:='+IRVS:CRW';
        if RegularityCB5.ItemIndex=3 then Taxonomy[23]:='+IRVS:SHC';
        if RegularityCB5.ItemIndex=4 then Taxonomy[23]:='+IRVS:POP';
        if RegularityCB5.ItemIndex=5 then Taxonomy[23]:='+IRVS:SET';
        if RegularityCB5.ItemIndex=6 then Taxonomy[23]:='+IRVS:CHV';
        if RegularityCB5.ItemIndex=7 then Taxonomy[23]:='+IRVS:IRVO';
      end;
    end
  end;

  if (WallsCB.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[24]:='EW99';
  if WallsCB.ItemIndex=1 then Taxonomy[24]:='EWC';
  if WallsCB.ItemIndex=2 then Taxonomy[24]:='EWG';
  if WallsCB.ItemIndex=3 then Taxonomy[24]:='EWE';
  if WallsCB.ItemIndex=4 then Taxonomy[24]:='EWMA';
  if WallsCB.ItemIndex=5 then Taxonomy[24]:='EWME';
  if WallsCB.ItemIndex=6 then Taxonomy[24]:='EWV';
  if WallsCB.ItemIndex=7 then Taxonomy[24]:='EWW';
  if WallsCB.ItemIndex=8 then Taxonomy[24]:='EWSL';
  if WallsCB.ItemIndex=9 then Taxonomy[24]:='EWPL';
  if WallsCB.ItemIndex=10 then Taxonomy[24]:='EWCB';
  if WallsCB.ItemIndex=11 then Taxonomy[24]:='EWO';

 if (RoofCB1.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[25]:='RSH99';
  if RoofCB1.ItemIndex=1 then Taxonomy[25]:='RSH1';
  if RoofCB1.ItemIndex=2 then Taxonomy[25]:='RSH2';
  if RoofCB1.ItemIndex=3 then Taxonomy[25]:='RSH3';
  if RoofCB1.ItemIndex=4 then Taxonomy[25]:='RSH4';
  if RoofCB1.ItemIndex=5 then Taxonomy[25]:='RSH5';
  if RoofCB1.ItemIndex=6 then Taxonomy[25]:='RSH6';
  if RoofCB1.ItemIndex=7 then Taxonomy[25]:='RSH7';
  if RoofCB1.ItemIndex=8 then Taxonomy[25]:='RSH8';
  if RoofCB1.ItemIndex=9 then Taxonomy[25]:='RSH9';
  if RoofCB1.ItemIndex=10 then Taxonomy[25]:='RSHO';

  if (RoofCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[26]:='+RMT99';
  if RoofCB2.ItemIndex=1 then Taxonomy[26]:='+RMN';
  if RoofCB2.ItemIndex=2 then Taxonomy[26]:='+RMT1';
  if RoofCB2.ItemIndex=3 then Taxonomy[26]:='+RMT2';
  if RoofCB2.ItemIndex=4 then Taxonomy[26]:='+RMT3';
  if RoofCB2.ItemIndex=5 then Taxonomy[26]:='+RMT4';
  if RoofCB2.ItemIndex=6 then Taxonomy[26]:='+RMT5';
  if RoofCB2.ItemIndex=7 then Taxonomy[26]:='+RMT6';
  if RoofCB2.ItemIndex=8 then Taxonomy[26]:='+RMT7';
  if RoofCB2.ItemIndex=9 then Taxonomy[26]:='+RMT8';
  if RoofCB2.ItemIndex=10 then Taxonomy[26]:='+RM9T';
  if RoofCB2.ItemIndex=11 then Taxonomy[26]:='+RMT10';
  if RoofCB2.ItemIndex=12 then Taxonomy[26]:='+RMT11';
  if RoofCB2.ItemIndex=13 then Taxonomy[26]:='+RMTO';

  if RoofCB3.ItemIndex=0 then begin
    if OmitCB.checked = false then Taxonomy[27]:='+R99';
  end
  else begin
    if RoofCB3.ItemIndex=1 then begin
      Taxonomy[27]:='+RM';
      if (RoofCB4.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[28]:='+RM99';
      if RoofCB4.ItemIndex=1 then Taxonomy[28]:='+RM1';
      if RoofCB4.ItemIndex=2 then Taxonomy[28]:='+RM2';
      if RoofCB4.ItemIndex=3 then Taxonomy[28]:='+RM3';
    end
    else if RoofCB3.ItemIndex=2 then begin
      Taxonomy[27]:='+RE';
      if (RoofCB4.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[28]:='+RE99';
      if RoofCB4.ItemIndex=1 then Taxonomy[28]:='+RE1';
    end
    else if RoofCB3.ItemIndex=3 then begin
      Taxonomy[27]:='+RC';
      if (RoofCB4.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[28]:='+RC99';
      if RoofCB4.ItemIndex=1 then Taxonomy[28]:='+RC1';
      if RoofCB4.ItemIndex=2 then Taxonomy[28]:='+RC2';
      if RoofCB4.ItemIndex=3 then Taxonomy[28]:='+RC3';
      if RoofCB4.ItemIndex=4 then Taxonomy[28]:='+RC4';
    end
    else if RoofCB3.ItemIndex=4 then begin
      Taxonomy[27]:='+RME';
      if (RoofCB4.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[28]:='+RME99';
      if RoofCB4.ItemIndex=1 then Taxonomy[28]:='+RME1';
      if RoofCB4.ItemIndex=2 then Taxonomy[28]:='+RME2';
      if RoofCB4.ItemIndex=3 then Taxonomy[28]:='+RME3';
    end
    else if RoofCB3.ItemIndex=5 then begin
      Taxonomy[27]:='+RWO';
      if (RoofCB4.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[28]:='+RWO99';
      if RoofCB4.ItemIndex=1 then Taxonomy[28]:='+RWO1';
      if RoofCB4.ItemIndex=2 then Taxonomy[28]:='+RWO2';
      if RoofCB4.ItemIndex=3 then Taxonomy[28]:='+RWO3';
      if RoofCB4.ItemIndex=4 then Taxonomy[28]:='+RWO4';
      if RoofCB4.ItemIndex=5 then Taxonomy[28]:='+RWO5';
    end
    else if RoofCB3.ItemIndex=6 then begin
      Taxonomy[27]:='+RFA';
      if RoofCB4.ItemIndex=0 then Taxonomy[28]:='+RFA1';
      if RoofCB4.ItemIndex=1 then Taxonomy[28]:='+RFAO';
    end
    else if RoofCB3.ItemIndex=7 then begin
      Taxonomy[27]:='+RO';
    end
  end;

  if (RoofCB5.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[29]:='+RWC99';
  if RoofCB5.ItemIndex=1 then Taxonomy[29]:='+RWCN';
  if RoofCB5.ItemIndex=2 then Taxonomy[29]:='+RWCP';
  if RoofCB5.ItemIndex=3 then Taxonomy[29]:='+RTD99';
  if RoofCB5.ItemIndex=4 then Taxonomy[29]:='+RTDN';
  if RoofCB5.ItemIndex=5 then Taxonomy[29]:='+RTDP';

  if FloorCB1.ItemIndex=0 then begin
    if OmitCB.checked = false then Taxonomy[30]:='F99';
  end
  else if FloorCB1.ItemIndex=1 then begin
    Taxonomy[30]:='FN';
  end
  else begin
    if FloorCB1.ItemIndex=2 then begin
      Taxonomy[30]:='FM';
      if (FloorCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[31]:='+FM99';
      if FloorCB2.ItemIndex=1 then Taxonomy[31]:='+FM1';
      if FloorCB2.ItemIndex=2 then Taxonomy[31]:='+FM2';
      if FloorCB2.ItemIndex=3 then Taxonomy[31]:='+FM3';
    end
    else if FloorCB1.ItemIndex=3 then begin
      Taxonomy[30]:='FE';
      if (FloorCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[31]:='+FE99';
    end
    else if FloorCB1.ItemIndex=4 then begin
      Taxonomy[30]:='FC';
      if (FloorCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[31]:='+FC99';
      if FloorCB2.ItemIndex=1 then Taxonomy[31]:='+FC1';
      if FloorCB2.ItemIndex=2 then Taxonomy[31]:='+FC2';
      if FloorCB2.ItemIndex=3 then Taxonomy[31]:='+FC3';
      if FloorCB2.ItemIndex=4 then Taxonomy[31]:='+FC4';
    end
    else if FloorCB1.ItemIndex=5 then begin
      Taxonomy[30]:='FME';
      if (FloorCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[31]:='+FME99';
      if FloorCB2.ItemIndex=1 then Taxonomy[31]:='+FME1';
      if FloorCB2.ItemIndex=2 then Taxonomy[31]:='+FME2';
      if FloorCB2.ItemIndex=3 then Taxonomy[31]:='+FME3';
    end
    else if FloorCB1.ItemIndex=6 then begin
      Taxonomy[30]:='FW';
      if (FloorCB2.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[31]:='+FW99';
      if FloorCB2.ItemIndex=1 then Taxonomy[31]:='+FW1';
      if FloorCB2.ItemIndex=2 then Taxonomy[31]:='+FW2';
      if FloorCB2.ItemIndex=3 then Taxonomy[31]:='+FW3';
      if FloorCB2.ItemIndex=4 then Taxonomy[31]:='+FW4';
    end
    else if FloorCB1.ItemIndex=7 then begin
      Taxonomy[30]:='FO';
    end
  end;

  if (FloorCB3.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[32]:='+FWC99';
  if FloorCB3.ItemIndex=1 then Taxonomy[32]:='+FWCN';
  if FloorCB3.ItemIndex=2 then Taxonomy[32]:='+FWCP';

  if (FoundationsCB.ItemIndex=0) and (OmitCB.checked = false) then Taxonomy[33]:='FOS99';
  if FoundationsCB.ItemIndex=1 then Taxonomy[33]:='FOSSL';
  if FoundationsCB.ItemIndex=2 then Taxonomy[33]:='FOSN';
  if FoundationsCB.ItemIndex=3 then Taxonomy[33]:='FOSDL';
  if FoundationsCB.ItemIndex=4 then Taxonomy[33]:='FOSDN';
  if FoundationsCB.ItemIndex=5 then Taxonomy[33]:='FOSO';

  direction1:='DX';
  direction2:='DY';
  if (Direction1RB1.checked) and (OmitCB.checked = false) then begin
    direction1 := direction1+'+D99';
    direction2 := direction2+'+D99';
  end
  else if Direction1RB2.checked then begin
    direction1 := direction1+'+PF';
    direction2 := direction2+'+OF';
  end;

  ResTax:=direction1+'/'+Taxonomy[0]+Taxonomy[1]+Taxonomy[2]+'/'+Taxonomy[3]+Taxonomy[4]+'/'+direction2+'/'+Taxonomy[5]+Taxonomy[6]+Taxonomy[7]+'/'+Taxonomy[8]+Taxonomy[9]+'/'
  +Taxonomy[11]+Taxonomy[12]+Taxonomy[13]+Taxonomy[14]+'/'+Taxonomy[10]+'/'+Taxonomy[15]+Taxonomy[16]+'/'+Taxonomy[17]+'/'+Taxonomy[18]+'/'+Taxonomy[19]+Taxonomy[20]
  +Taxonomy[22]+Taxonomy[21]+Taxonomy[23]+'/'+Taxonomy[24]+'/'+Taxonomy[25]+Taxonomy[26]+Taxonomy[27]+Taxonomy[28]+Taxonomy[29]+'/'+Taxonomy[30]
  +Taxonomy[31]+Taxonomy[32]+'/'+Taxonomy[33];
  resultE.Text:=ResTax;

  //0 - Material type
  //1 - Material technology
  //2 - Material properties
  //3 - Type of lateral system
  //4 - System ductility
  //5 - Material type
  //6 - Material technology
  //7 - Material properties
  //8 - Type of lateral system
  //9 - System ductility
  //10- Date of construction
  //11- Height above the ground
  //12- Height below the ground
  //13- Height of grade
  //14- Slope of the ground
  //15- Occupancy type
  //16- Occupancy description
  //17- Position
  //18- Plan
  //19- Type of irregularity
  //20- Plan irregularity(primary)
  //21- Plan irregularity(secondary)
  //22- Vertical irregularity(primary)
  //23- Vertical irregularity(secondary)
  //24- Material of exterior walls
  //25- Roof shape
  //26- Roof covering
  //27- Roof system material
  //28- Roof system type
  //29- Roof connections
  //30- Floor system material
  //31- Floor system type
  //32- Floor connections
  //33 - Foundation


end;
end.
