unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  ShellApi, PRJpegImage, clipbrd, JclShell;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    hereL: TLabel;
    developerL: TLabel;
    Label5: TLabel;
    procedure hereLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.hereLClick(Sender: TObject);
begin
  ShellExecute(Handle,'open','TaxT_User_Information.pdf',nil,nil, SW_SHOWNORMAL) ;
end;




end.
