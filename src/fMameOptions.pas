unit fMameOptions;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvBaseDlg, JvSelectDirectory, JvBrowseFolder, Buttons,
  uRomList, JvComponent, JvExStdCtrls, JvButton, JvCtrls, ExtCtrls,
  JvComponentBase, fJWinFontForm;

type
  TFrmMameOptions = class(TJWinFontForm)
    CmbMame: TComboBox;
    lblMAME: TLabel;
    BtnOK: TButton;
    BtnCancel: TButton;
    lblDir: TLabel;
    jvBrowse: TJvBrowseForFolderDialog;
    ListDirs: TListBox;
    BtnAdd: TJvImgBtn;
    BtnDel: TJvImgBtn;
    MameExtrasLabel: TLabel;
    TxtMameExtrasDirPath: TEdit;
    BtnMameExtrasDirFind: TButton;
    procedure BtnMameExtrasDirFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses fMain, uJUtilities, StrUtils, JCLstrings, IniFiles, uRom, uEmuList, uQPConst,
  uEmu, uQPMiscTypes;

{$R *.dfm}


procedure TFrmMameOptions.FormShow(Sender: TObject);
var
  Ini : TMemIniFile;
  Dirs : TStringList;
  I : Integer;
begin
    MainFrm.EmuList.EmusToStrings(CmbMame.Items, cfMame);

  Ini := TMemIniFile.Create(MainFrm.Settings.Paths.SettingsFile);
  TxtMameExtrasDirPath.Text :=  MainFrm.Settings.MameExtrasDir;
  Try

    //Load in the Directories.
    Dirs := TStringList.Create;
    try
      StrTokenToStrings(Ini.ReadString('MAMEScan', 'Dirs', ''),';', Dirs);
      For i := 0 to Dirs.Count-1 do
        ListDirs.Items.Add(Dirs.Strings[i])
    Finally
      FreeAndNil(Dirs);
    end;

    CmbMAME.ItemIndex := -1;

  Finally
    FreeAndNil(Ini);
  end;

end;

{-----------------------------------------------------------------------------}

procedure TFrmMameOptions.BtnMameExtrasDirFindClick(Sender: TObject);
var
  jvBrowse: TJvBrowseForFolderDialog;
begin
  jvBrowse := TJvBrowseForFolderDialog.Create(self);

  try

   if DirectoryExists(MainFrm.Settings.MameExtrasDir) then
      jvBrowse.Directory := MainFrm.Settings.MameExtrasDir;
      if (jvBrowse.execute) and (DirectoryExists(jvBrowse.Directory)) then
        begin
         if DirectoryExists(jvBrowse.Directory + '/icons/') then
             TxtMameExtrasDirPath.Text := jvBrowse.Directory
           else
             MessageDlg(QP_MAMEOPT_BAD_DIR, mtError, [mbOK], 0);
         end;
  finally
    FreeAndNil(jvBrowse);
  end;
end;

{-----------------------------------------------------------------------------}

procedure TFrmMameOptions.BtnOKClick(Sender: TObject);
var
  DirOutput : String;
  i  : Integer;
  Ini : TMemIniFile;
  Emu : TQPEmu;
  Clear : boolean;
begin
        MainFrm.Settings.MameExtrasDir := TxtMameExtrasDirPath.Text;
        MainFrm.Settings.SaveAllSettings();
 // If (CmbMame.ItemIndex = -1) or (ListDirs.Count = 0) then
 // begin
 //   MessageDlg(QP_MAMEM_BAD_DATA, mtError, [mbOK], 0);
 //   exit;
 // end;

 // Emu := MainFrm.EmuList[MainFrm.EmuList.IndexOfName(CmbMAME.Text)];

  //now we need to reload the ROMs list.
 //   MainFrm.ClearROMIcons();
 //   MainFrm.ROMlist.LoadFromFile(MainFrm.GetSelectedTxt);

  //now save the users input data.
 // Ini := TMemIniFile.Create(MainFrm.Settings.Paths.SettingsFile);
//  Try

 //   For i := 0 to ListDirs.Count-1 do
  //    If DirectoryExists(ListDirs.Items.Strings[i]) then
  //      DirOutput := DirOutput + ListDirs.Items.Strings[i] + ';';

 //   Ini.WriteString('MAMEScan', 'Dirs', DirOutput);
 //   Ini.WriteString('MAMEScan', 'MAME', CmbMAME.Text);

//    if MainFrm.Settings.AllowWrite then
 //     Ini.UpdateFile;

 // Finally
 // FreeAndNil(Ini);
 // end;

  //close the form with the modal result OK
  ModalResult := MrOK;
end;

{-----------------------------------------------------------------------------}

procedure TFrmMameOptions.BtnAddClick(Sender: TObject);
begin
  if (jvBrowse.execute) and (jvBrowse.Directory <> '') then
    ListDirs.Items.Add(jvBrowse.Directory);
end;

{-----------------------------------------------------------------------------}

procedure TFrmMameOptions.BtnDelClick(Sender: TObject);
begin
  ListDirs.DeleteSelected;
end;


end.
