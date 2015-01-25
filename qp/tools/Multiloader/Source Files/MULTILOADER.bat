@echo off & SETLOCAL
:: CD/DVD MULTILOADER SCRIPT v1.2.0.4 - butter100fly 2014
:: Pass an image to me, I work out if its compressed or not, if it is I work out which prog to extract it with and mount in Daemon Tools
:: if its not I just mount it, Launches emu with params, clears up after
:: For V1.2 I added command line parameters you can call when calling the script. 
:: It will prioritise anything after "%ROM%" in the command line over what's in the ini, or you don't have to have the ini
:: You must call them in this order: 
:: First "PATH TO ROM"  
:: Secondly "EMULATOR EXECUTABLE" 
:: Thirdly "OPTIONS TO PASS TO EMULATOR (eg.:-CD)"
:: Fourthly "Direct Mount" - PASS IMAGE TO EMULATOR INSTEAD OF TO DEAMON TOOLS - 1 is yes, anything else is no
:: Please encase all 4 in "quotation marks" and include empty emulator options ie: "" if you need to set direct mount after
::
:: So in QuickPLay you would call, for example: 
::		"%ROM%" "P:\Mednafen\Mednafen.exe"
:: (we don't need direct mount and there are no options)
:: Or 
::		"%ROM%" "P:\Magic Engine\pce.exe" "" "1"
:: (we need the "" because we need direct mounting after)
:: Actually we can improve that one to pass -cd to Magic Engine:
:: 		"%ROM%" "P:\Magic Engine\pce.exe" "-cd" "1"
::-------------------------------------------------------------------------------

 :: Get script dir as we may need to run forciblyunmount.exe from it later
for /f "delims=" %%G in ('CD') do (set _SCRIPTDIR=%%G\)

::-------------------------------------------------------------------------------------
:: You can set Emu and Options from MULTILOADER.INI if you want to hard-code the loader
:: (Most users will just want to launch from QuickPlay so won't need this)
::-------------------------------------------------------------------------------------
IF NOT EXIST multiloader.ini goto CMD_LINE_EMU
for /f "tokens=2* delims==" %%H in ('find "EMU=" ^< multiloader.ini') do (set EMU=%%H)
::IF there's no EMU set in the ini, also ignore options and nomount setting
IF (%EMU%)==() goto CMD_LINE_EMU
for /f "tokens=2* delims==" %%I in ('find "OPTIONS=" ^< multiloader.ini') do (set OPTIONS=%%I)
for /f "tokens=2* delims==" %%J in ('find "NOMOUNT=" ^< multiloader.ini') do (set NOMOUNT=%%J)

:CMD_LINE_EMU
if exist %2 set EMU=%2 & set OPTIONS=%~3 & set NOMOUNT=%~4

:CHECK_EMU
::If there isn't an emu, we have an error that will hang the script, bomb out instead
IF EXIST %EMU% GOTO CARRYON
IF EXIST ".\README.txt" (notepad.exe ".\README.txt" & EXIT)
EXIT

:CARRYON
::set a temp directory for rom in rom dir, Using shortname (in case we need it for unzip) then CD to EMU directory
for /D %%X IN (%1) DO SET _TEMPDIR="%%~dpnsX\"
cd /d %EMU%\..

set _ROMNAME=%1
::We uncompress most types of zip with 7Zip, but for .mou files if you have winmount we can run the compressed image
if /I (%~x1)==(.zip) goto UNZIP
if /I (%~x1)==(.rar) goto UNZIP
if /I (%~x1)==(.ace) goto UNZIP
if /I (%~x1)==(.7z) goto UNZIP
if /I (%~x1)==(.mou) goto WINMOUNT

:LOAD
:: if we want to pass direct to emu we look for 1 in the ini, just pass romname to emu, and goto exit after
if (%NOMOUNT%)==(1) %EMU% %OPTIONS% %_ROMNAME% & goto WINUNMOUNT

:: Mount daemon tools, load emu and passes full rom path to it
:: After emu exits, unmounts daemon and deletes temp files, temp folder, and temp variables
if exist "C:\Program Files\DAEMON Tools Lite\DTLite.exe" set _DT="C:\Program Files\DAEMON Tools Lite\DTLite.exe"
if exist "C:\Program Files (x86)\DAEMON Tools Lite\DTLite.exe" set _DT="C:\Program Files (x86)\DAEMON Tools Lite\DTLite.exe"
if (%_DT%)==() set ERROR_MESSAGE="Please ensure the Daemon Tools executable ""DTLite.exe"" is installed to its default location in Windows' Program Files Folder" && goto ERROR_POPUP
%_DT% -mount SCSI, 0, %_ROMNAME%
%EMU% %OPTIONS%
%_DT% -unmount SCSI, 0

:WINUNMOUNT
if (%_WINMOUNTING%)==() goto FINISH
%_WM% -unmountall
if exist "%_SCRIPTDIR%ForciblyWinmount.exe" start "" "%_SCRIPTDIR%ForciblyWinmount.exe"
goto FINISH

:WINMOUNT
::Pass arguments to winmount. If winmount wasn't already running, it was hanging the script. 
::So start it and don't wait as the loop does the waiting for it
::set flags first to tell script later that we are doing winmount
::note the user must have drive X free. I'd prefer this than trying to mount B:
if exist x:\nul set ERROR_MESSAGE="Winmount needs to use drive X, but a drive X is already mounted. Try to unmount it. Sorry!" && goto ERROR_POPUP
set _WINMOUNTING=YES
set _TEMPDIR="x:\"

if exist "C:\Program Files\WinMount\winmount.exe" set _WM="C:\Program Files\WinMount\winmount.exe"
if exist "C:\Program Files (x86)\WinMount\winmount.exe" set _WM="C:\Program Files (x86)\Winmount\Winmount.exe"
if (%_WM%)==() set ERROR_MESSAGE="Please ensure the Winmount executable ""winmount.exe"" is installed to its default location in Windows' Program Files Folder" && goto ERROR_POPUP
start "" %_WM% -m %1 -drv:x:\

:watch
IF EXIST x:\*.* goto mount
goto watch

:UNZIP
if exist "C:\Program Files\7-Zip\7z.exe" set _7Z="C:\Program Files\7-Zip\7z.exe"
if exist "C:\Program Files (x86)\7-Zip\7z.exe" set _7Z="C:\Program Files (x86)\7-Zip\7z.exe"
if (%_7Z%)==() set ERROR_MESSAGE="Please ensure the 7Zip executable ""7z.exe"" is installed to its default location in Windows' Program Files Folder" && goto ERROR_POPUP
:: 7zip uncompresses image files and names its folder in rom dir after archive file 
:: We will always overwrite if files exists, the tempdir is 8:3 named so enourmously unlikely to be yours
%_7Z% e %1 -o%_TEMPDIR% -y
goto MOUNT

:MOUNT
:: then we probe for which type of file we have and go to the appropriate section
:: The reverse order of the list makes sure eg: cue is mounted in preference to bin or iso
:: search is recursive, so image can be in subfolder
FOR /R %_TEMPDIR% %%Y IN (*.pdi *.isz *.bwt *.b6t *.b5t *.nrg *.iso *.img *.cdi *.mdx *.mds *.ccd *.bin *.cue *.gcm *.gdi) DO set _ROMNAME="%%Y"
goto LOAD

:ERROR_POPUP
::http://stackoverflow.com/questions/774175/how-can-i-open-a-message-box-in-a-windows-batch-file
echo X=MSGBOX (%ERROR_MESSAGE%,0+48,"QuickPlay Multiloader Error") > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
::echo X=MsgBox("Message Description",0+16,"Title") >msg.vbs
::–you can write any numbers from 0,1,2,3,4 instead of 0 (before the ‘+’ symbol) & here is the meaning of each number:
::0 = Ok Button, 1 = Ok/Cancel Button, 2 = Abort/Retry/Ignore button, 3 = Yes/No/Cancel, 4 = Yes/No  
::–you can write any numbers from 16,32,48,64 instead of 16 (after the ‘+’ symbol) & here is the meaning of each number:
::16 – Critical Icon, 32 – Warning Icon, 48 – Warning Message Icon, 64 – Information Icon  

:FINISH
if exist %_TEMPDIR% rd /s /q %_TEMPDIR%
FOR %%Z IN (EMU OPTIONS _TEMPDIR _ROMNAME _DT _7Z _WM _WINMOUNTING ERRORMESSAGE NOMOUNT) DO SET %%Z=
exit
