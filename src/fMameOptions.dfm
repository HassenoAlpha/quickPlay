object FrmMameOptions: TFrmMameOptions
  Left = 269
  Top = 223
  BorderStyle = bsDialog
  Caption = 'MAME Options'
  ClientHeight = 436
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object lblMAME: TLabel
    Left = 34
    Top = 133
    Width = 60
    Height = 16
    Caption = 'Emulators'
  end
  object lblDir: TLabel
    Left = 5
    Top = 14
    Width = 100
    Height = 16
    Caption = 'Folders To Scan'
  end
  object MameExtrasLabel: TLabel
    Left = 34
    Top = 196
    Width = 123
    Height = 48
    Caption = 'Mame Extras Dir (for system Icons, MameTool etc)'
    WordWrap = True
  end
  object CmbMame: TComboBox
    Left = 133
    Top = 129
    Width = 178
    Height = 24
    Style = csDropDownList
    ItemHeight = 16
    TabOrder = 3
  end
  object BtnOK: TButton
    Left = 432
    Top = 389
    Width = 92
    Height = 31
    Caption = '&OK'
    TabOrder = 4
    OnClick = BtnOKClick
  end
  object BtnCancel: TButton
    Left = 532
    Top = 389
    Width = 92
    Height = 31
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object ListDirs: TListBox
    Left = 133
    Top = 10
    Width = 459
    Height = 109
    ItemHeight = 16
    TabOrder = 0
  end
  object BtnAdd: TJvImgBtn
    Left = 599
    Top = 10
    Width = 34
    Height = 31
    TabOrder = 1
    OnClick = BtnAddClick
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -14
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = MainFrm.ImageList1
    ImageIndex = 0
  end
  object BtnDel: TJvImgBtn
    Left = 599
    Top = 49
    Width = 34
    Height = 31
    TabOrder = 2
    OnClick = BtnDelClick
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -14
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = MainFrm.ImageList1
    ImageIndex = 3
  end
  object TxtMameExtrasDirPath: TEdit
    Left = 163
    Top = 203
    Width = 234
    Height = 25
    TabOrder = 6
  end
  object BtnMameExtrasDirFind: TButton
    Left = 416
    Top = 202
    Width = 32
    Height = 27
    Caption = '...'
    TabOrder = 7
    OnClick = BtnMameExtrasDirFindClick
  end
  object jvBrowse: TJvBrowseForFolderDialog
    Position = fpFormCenter
    RootDirectory = fdRootFolder
    Left = 448
    Top = 56
  end
end