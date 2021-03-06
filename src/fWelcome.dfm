object FrmWelcome: TFrmWelcome
  Left = 371
  Top = 187
  BorderStyle = bsDialog
  Caption = 'Welcome to QuickPlay'
  ClientHeight = 472
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object BtnExit: TButton
    Left = 517
    Top = 433
    Width = 98
    Height = 33
    Caption = 'E&xit'
    ModalResult = 1
    TabOrder = 0
  end
  object PCWelcome: TPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 425
    ActivePage = TabDone
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 1
    object TabWelcome: TTabSheet
      Caption = 'TabWelcome'
      object lblbigWelcome: TLabel
        Left = 21
        Top = 42
        Width = 140
        Height = 36
        Caption = 'Welcome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -30
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblIntro: TLabel
        Left = 21
        Top = 105
        Width = 566
        Height = 221
        AutoSize = False
        Caption = 
          'Thanks for downloading QuickPlay, the multi-emulator frontend.'#13#10 +
          #13#10'This wizard will help you get started, simply follow the steps' +
          ' to set up each area of QuickPlay'#13#10#13#10'For more information see th' +
          'e '#39'Getting Started'#39' chapter in help'
        WordWrap = True
      end
    end
    object TabEmus: TTabSheet
      Caption = 'TabEmus'
      ImageIndex = 1
      object lblEmus: TLabel
        Left = 21
        Top = 42
        Width = 394
        Height = 36
        Caption = 'Step 1 - Adding Emulators'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -30
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblemutext: TLabel
        Left = 21
        Top = 105
        Width = 566
        Height = 180
        AutoSize = False
        Caption = 
          'The easiest way to add emulators is to use the '#39'Emu-Finder wizar' +
          'd'#39', which can automatically detect many emulators for many syste' +
          'ms.'#13#10#13#10'You can also add Emulators using the Emulator Management ' +
          'dialog screen.'#13#10#13#10'Both of these methods can be accessed by using' +
          ' the relevant button below'
        WordWrap = True
      end
      object BtnEFind: TBitBtn
        Left = 126
        Top = 306
        Width = 147
        Height = 75
        Caption = '&Launch Emu-Finder'
        TabOrder = 0
        OnClick = BtnEFindClick
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000080
          0000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000080000080
          0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000080000080000080
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000800000800000800000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000800000800000800000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000800000800000800000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000800000800000800000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          00800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000008000
          00800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF0000FF00
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF00FF000000FFFFFFFFFFFFFFFFFFFF0000000000008000008000
          00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFF00FFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF0000000000008000008000008000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF0000FFFFFFFFFFFFFF00
          00FFFFFFFFFFFFFF0000FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          00FF000000FFFFFFFF00FFFFFFFFFFFFFFFF000000800000800000800000FFFF
          FFFFFFFFFFFFFFFFFFFF00FFFF0000FFFFFFFFFFFFFF00FFFFFFFFFF00FF00FF
          FFFFFFFFFFFFFFFF00FFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF00FF00FFFFFF0000FFFFFFFF00FFFF800000800000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF00FFFFFFFFFF0000FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFF0000FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000FFFFFFFF0000FF00FF00FFFFFFFFFFFFFFFFFF00FFFF00FF
          000000FFFFFFFFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF0000FFFFFFFFFFFFFFFFFF
          FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FF00FFFFFFFFFFFF0000
          FFFFFFFFFFFFFF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00FFFFFFFFFF00FF0000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
      end
      object BtnEmuMan: TBitBtn
        Left = 324
        Top = 306
        Width = 159
        Height = 75
        Hint = 'View All Emulators'
        Caption = '&Emulator Management'
        TabOrder = 1
        OnClick = BtnEmuManClick
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1B25292B2929FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF1A222A1D262E1F20282E3231343434282828FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF181E
          2319212F1A222A19232B1E21293332313030303232322F2F2F202020FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818201D2C351A23
          2B1E252F1E27321D1F2816212B33323131313131313130303031313134343415
          1515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F121F1F282D222B3219202F1922
          2A1E26301F27291C242E1F1F2932323131313131313131313131313131313132
          32322929290E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0C11161E2837222A321922311A23312129301D25
          311B242E1B23311B242B1C262E3739352F2F3330303031313131313131313131
          3131313131313131292929151515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0809121C242B2129301821301C24312129311922312029311F29
          31192231182131222A302028303730303738323737332F2F3031313031313131
          31313131312F2F2F2D2D2D2E2E2E232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF161E2C262E361D24321E27302129301E29301A28312027311F27301B23
          312028311927312225302F3331393836333334302E3330303435353030303031
          31313131313131312E2E2E2C2C2C2E2E2E2A2A2AFFFFFFFFFFFFFFFFFFFFFFFF
          1B262F22293119293118292F2229362028382029342129301A29302128381922
          30262D3138383031353629293136362F39393839393037373330303130313730
          30303131313030303131313030302A2A2A2B2B2BFFFFFFFFFFFFFFFFFFFFFFFF
          212A361B29302029332029361D292E1C292F1F293420282F1822372A2D2E383A
          362F32312E3336393931443931413F323639313839343338313B37303332302F
          2F303131313131313131312D2D2D2C2C2C2D2D2DFFFFFFFFFFFFFFFFFFFFFFFF
          222C361E29382129322129302128381E28371E2934292F383E402F3435342C31
          2A45413548463842473E3E4B4D3F40413F413E403E35393931322F2E37362C38
          38313130313131313131312F2F2F2E2E2F2E2E2DFFFFFFFFFFFFFFFFFFFFFFFF
          232C362029332229372128361828352F33373B3D342B3236403A1C474B542E60
          9F265EB1254E8D2A538A3B5B8B3F5A85315789274B8224559524519B32485A3A
          2C1D31302E31313031312D3131322F2F3131312FFFFFFFFFFFFFFFFFFFFFFFFF
          232A3C2027381E2C322D33363D3C33333B363B3733564D362959AC2251984243
          3F50451E4B44354445384041393E3D374541383B3B27372E1E332B1A1E3D751B
          539A2F383C30312F31312F31312B28282D333332FFFFFFFFFFFFFFFFFFFFFFFF
          22333C34373236383B3537324B44295849275A472130619946585F5F4E274040
          382D3E5A2B3D4B28313A2828312827301F26272A2A2E2B2D2D313232372C212F
          2A25184E9732281C2B2D292B2B2931312F32322CFFFFFFFFFFFFFFFFFFFFFFFF
          2C2A1F3F3F3C41442F30336E2F34A03A3983433A28436188776231685A2C1728
          3221232A242D39323D4E2D323A5357576E6D762C302F27262624232326292532
          27101A3E6C353428322F2B21211E141414FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF151515281F19533EBF674AB06C52BB56479D6A5A2074735B93712B6F5A
          273135303347655178A32931393A3F424846462C2929292929202123372C172A
          383F2C2F330E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0B0710261B4A32285052423E75612F755D2F706131866E
          336155311829372B323E2931332428302524282429252F29272E2A20131A1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B1F0B6454256D54
          256C5B28695327262C38293139403F422D2E2E212323151515FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF28200C5A43173A3E402931374344442B3131FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF181D1F29304349494D353232FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF1B1F27293740514F4F323232FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF1C21262C394B5357583C3C3BFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF1C242B3138495C6062393939FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF1E222A3043526360633D3D42FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF20282E39425B666A6C3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF212930394962686C6E454444FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF262D3139526D6F6C6E474648FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF2A30343750726E6D6E454748FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF2A3438435B806D6C7151504FFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF2A333B44577759544A484943FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
      end
    end
    object TabROMS: TTabSheet
      Caption = 'TabROMS'
      ImageIndex = 2
      object lblROMs: TLabel
        Left = 21
        Top = 42
        Width = 282
        Height = 36
        Caption = 'Step 2 - Add ROMs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -30
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblROMText: TLabel
        Left = 21
        Top = 105
        Width = 566
        Height = 180
        AutoSize = False
        Caption = 
          'There are many ways to add ROMs to QuickPlay.  For an indepth lo' +
          'ok at these, see the '#39'Adding ROMs'#39' chapter in the helpfile.'#13#10#13#10'T' +
          'he most convenient way to add a lot of directories at once is to' +
          ' use the '#39'Multi-Directory Scanner'#39', which is capable of scanning' +
          ' entire directory trees into QuickPlay.'
        WordWrap = True
      end
      object BtnMultiDir: TBitBtn
        Left = 241
        Top = 293
        Width = 179
        Height = 74
        Caption = 'Multi-Directory Scan'
        TabOrder = 0
        OnClick = BtnMultiDirClick
        Glyph.Data = {
          76050000424D7605000000000000360000002800000015000000150000000100
          18000000000040050000C30E0000C30E00000000000000000000CDB09EFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE00CDB09E7C4325
          EAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2
          BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE7C43257C43257C4325FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C43257C43257C43257C4325FEFEFE7C4325FEFEFE7C4325FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFE7C43257C43257C4325FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE01CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFE7C43257C43257C4325FEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE7C43257C43257C43
          257C4325FEFEFE7C4325FEFEFE7C4325FEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE7C4325FEFEFEFEFE
          FEFEFEFEFEFEFE7C43257C43257C4325FEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFE7C43257C43257C4325FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C43257C43257C43257C4325FEFEFE7C4325FEFEFE7C4325FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFE7C43257C43257C4325FEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFE7C43257C43257C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFE7C4325FEFEFE7C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFE7C43257C43257C4325FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAD2BFFEFEFE00CDB09E7C4325
          7C43257C43257C43257C43257C43257C43257C43257C43257C43257C43257C43
          257C43257C43257C43257C43257C43257C43257C4325FEFEFE00CDB09ECDB09E
          CDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB0
          9ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09ECDB09E00}
        Layout = blGlyphTop
      end
    end
    object TabDone: TTabSheet
      Caption = 'TabDone'
      ImageIndex = 3
      object lblDone: TLabel
        Left = 21
        Top = 42
        Width = 240
        Height = 36
        Caption = 'Setup Complete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -30
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblComplete: TLabel
        Left = 21
        Top = 115
        Width = 566
        Height = 232
        AutoSize = False
        Caption = 
          'QuickPlay initial setup is now complete.  Feel free to experimen' +
          't with the wide range of features in QuickPlay.  '#13#10#13#10'If you do m' +
          'ess up QuickPlays configuration, you can reset all your data and' +
          ' reload this wizard using the '#39'Utilities/Reset Configuration'#39' me' +
          'nu'
        WordWrap = True
        OnClick = lblCompleteClick
      end
    end
  end
  object BtnNext: TButton
    Left = 412
    Top = 433
    Width = 98
    Height = 33
    Caption = '&Next'
    TabOrder = 2
    OnClick = BtnNextClick
  end
  object BtnPrevious: TButton
    Left = 307
    Top = 433
    Width = 98
    Height = 33
    Caption = '&Previous'
    Enabled = False
    TabOrder = 3
    OnClick = BtnPreviousClick
  end
end
