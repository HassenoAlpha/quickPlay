unit fMamePrinter;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  JvBrowseFolder, JvCtrls, fJWinFontForm, JvToolEdit, Mask, JvExMask;

type
  TFrmMamePrinter = class(TJWinFontForm)
    CmbMame: TComboBox;
    lblMAME: TLabel;
    BtnOK: TButton;
    BtnCancel: TButton;
    MamePrintDescLabel1: TLabel;
    GrpSubfolder: TGroupBox;
    GrpFilter: TGroupBox;
    ChkBios: TCheckBox;
    ChkCasino: TCheckBox;
    ChkClones: TCheckBox;
    ChkMature: TCheckBox;
    ChkMechanical: TCheckBox;
    ChkMess: TCheckBox;
    ChkPreliminary: TCheckBox;
    ChkPrintClub: TCheckBox;
    ChkSimulator: TCheckBox;
    ChkTableTop: TCheckBox;
    ChkQuiz: TCheckBox;
    ChkUtilities: TCheckBox;
    ChkCompanySplit: TCheckBox;
    ChkGenreSplit: TCheckBox;
    ChkNPlayersSplit: TCheckBox;
    ChkRatingSplit: TCheckBox;
    ChkSeriesSplit: TCheckBox;
    ChkVersionSplit: TCheckBox;
    ChkYearSplit: TCheckBox;
    MamePrintDescLabel2: TLabel;
    MamePrintDescLabel3: TLabel;
    XMLEdit: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  EmuEmptyMessage = 'No MAME Emulators. Run an E-Find';

implementation

uses fMain, uQPConst, ShellAPI, uQPMiscTypes, ujProcesses, uSettings;

{$R *.dfm}

procedure TFrmMamePrinter.FormShow(Sender: TObject);
begin
  With MainFrm do
  begin
    EmuList.EmusToStrings(CmbMame.Items, cfMameArcade);
    if CmbMame.Items.Count =0 then
    begin
      CmbMame.Items.Add(EmuEmptyMessage );
      CmbMame.ItemIndex := CmbMame.Items.IndexOf(EmuEmptyMessage );
      CmbMame.Color := clInactiveBorder;
      CmbMame.Font.Color := clMaroon;
      CmbMame.Font.Style := [fsBold];
      CmbMame.Font.Size := 10;
      BtnOK.Enabled := false
    end
    else CmbMame.ItemIndex := CmbMame.Items.IndexOf(Settings.MametoolMameExePath);

    //Do we have a loaded Mame Json?
      if (Settings.MameXMLVersion <> '') and FileExists(Settings.Paths.CfgDir + 'mame.json') then
    XMLEdit.Text := 'Loaded: ' + MainFrm.Settings.MameXMLVersion
    else
    begin
      XMLEdit.text := 'Use Mame Options to load Mame XML First';
      BtnOK.Enabled := false
    end;
    //and here's all the checkboxes
    ChkBios.Checked          := Settings.MameOptBios;
    ChkCasino.Checked        := Settings.MameOptCasino;
    ChkClones.Checked        := Settings.MameOptClones;
    ChkMature.Checked        := Settings.MameOptMature;
    ChkMechanical.Checked    := Settings.MameOptMechanical;
    ChkMess.Checked          := Settings.MameOptMess;
    ChkPreliminary.Checked   := Settings.MameOptPreliminary;
    ChkPrintClub.Checked     := Settings.MameOptPrintClub;
    ChkSimulator.Checked     := Settings.MameOptSimulator;
    ChkTableTop.Checked      := Settings.MameOptTableTop;
    ChkQuiz.Checked          := Settings.MameOptQuiz;
    ChkUtilities.Checked     := Settings.MameOptUtilities;
    ChkCompanySplit.Checked  := Settings.MameOptCompany;
    ChkGenreSplit.Checked    := Settings.MameOptGenre;
    ChkNPlayersSplit.Checked := Settings.MameOptNPlayers;
    ChkRatingSplit.Checked   := Settings.MameOptRating;
    ChkSeriesSplit.Checked   := Settings.MameOptSeries;
    ChkVersionSplit.Checked  := Settings.MameOptVersion;
    ChkYearSplit.Checked     := Settings.MameOptYear;
  end;

end;

{-----------------------------------------------------------------------------}

procedure TFrmMamePrinter.BtnOKClick(Sender: TObject);
var
  Executable : String;
  RomdataFolder: String;
  MameExecutablePath: String;
  MameExtrasDir: String;
  MameXMLPath: String;
  Flags : String;
  Process : Boolean;

begin
   Process := True;

   if CmbMame.ItemIndex <>-1 then

        With MainFrm do
        begin
          Settings.MametoolMameExePath := CmbMame.Items.Strings[CmbMame.ItemIndex];
          //and here's all the checkbox settings
          Settings.MameOptBios        := ChkBios.Checked;
          Settings.MameOptCasino      := ChkCasino.Checked;
          Settings.MameOptClones      := ChkClones.Checked;
          Settings.MameOptMature      := ChkMature.Checked;
          Settings.MameOptMechanical  := ChkMechanical.Checked;
          Settings.MameOptMess        := ChkMess.Checked;
          Settings.MameOptPreliminary := ChkPreliminary.Checked;
          Settings.MameOptPrintClub   := ChkPrintClub.Checked;
          Settings.MameOptSimulator   := ChkSimulator.Checked;
          Settings.MameOptTableTop    := ChkTableTop.Checked;
          Settings.MameOptQuiz        := ChkQuiz.Checked;
          Settings.MameOptUtilities   := ChkUtilities.Checked;
          Settings.MameOptCompany     := ChkCompanySplit.Checked;
          Settings.MameOptGenre       := ChkGenreSplit.Checked;
          Settings.MameOptNPlayers    := ChkNPlayersSplit.Checked;
          Settings.MameOptRating      := ChkRatingSplit.Checked;
          Settings.MameOptSeries      := ChkSeriesSplit.Checked;
          Settings.MameOptVersion     := ChkVersionSplit.Checked;
          Settings.MameOptYear        := ChkYearSplit.Checked;
          Settings.SaveAllSettings();
        end;

   Executable := MainFrm.Settings.Paths.QPNodeFile;
   //we need to know what romdata directory the user is sitting in, and if its not empty that may
   // indicate they don't know it'll get overwritten
   if (MainFrm.RomList.Count > 0) then
     if (MessageDlg(QP_MAMEOPT_ROMS_EXIST_IN_SRC_DIR, mtInformation, [mbYes, mbNo], 0) = mrNo) then Process := False;

   if (Process = True) then
   begin
     RomdataFolder := MainFrm.GetSelectedFolder;
     //other settings needed will all come from qps settings ini: mamepath, extrasdir, xmlpath, checkboxes
     Flags := '--arcade --output-dir ' + '"' + ExcludeTrailingPathDelimiter(RomdataFolder) + '"';  //folder inclues trailing backslash which literals the quote
     //root the call in the appdir else node gets confused...
     RunProcess('cmd.exe /K ' + Executable + ' ' + Flags, True, MainFrm.Settings.Paths.AppDir, SW_SHOWNORMAL);
     //hoping we got a good return code, we need to refresh at the very least the roms view, and folders sidebar
     //  why not do this in the return in main? Remember there's a subsequent cancel options if roms are empty, we'd have to capture it
     //the below causes index out of bounds but so does Refresh() from main form generally
     MainFrm.ActRefreshExecute(Sender);
   end;

  //close the form with the modal result OK
  ModalResult := MrOK;
end;

end.

