@ECHO OFF&PUSHD %~DP0 &TITLE �̻���ѡ��
mode con cols=36 lines=20
color 2F
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.���������� �� �� ѡ ��
@ echo.
@ echo.     �̻�[����] �� ������1
@ echo.
@ echo.     ��ΪĬ�������� �� ������2
@ echo.
@ echo.     ��������ͼ�� �� ������3
@ echo.
@ echo.     �Զ�����±߲� �� ������4
@ echo.
@ echo.     ж�� �� ������5
@ echo.
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto Install
if /i "%xj%"=="2" Goto Give
if /i "%xj%"=="3" Goto Establish
if /i "%xj%"=="4" Goto custom
if /i "%xj%"=="5" Goto Uninstall
@ echo.
echo      ѡ����Ч������������
ping -n 2 127.1>nul
goto menu
:Install
@ echo.
ECHO ���������ڰ�װ��..���Ե�..
taskkill /f /im Thunder*>nul 2>nul
Program\Thunder.exe -unassociate:td -unassociate:torrent -unassociate:downlist -unassociate:thunderskin -unassociate:thunderaddin -unassociate:all -unregprotocol:ed2k -unregprotocol:magnet -unregprotocol:thunder -unregprotocol:xlapplink
rd/s/q "%tmp%\Xunlei" >nul 2>nul
rd/s/q "%tmp%\Thunder" >nul 2>nul
rd/s/q "%tmp%\ThunderLiveUD" >nul 2>nul
rd/s/q "%tmp%\Thunder Network" >nul 2>nul
rd/s/q "%AllUsersProfile%\Application Data\Thunder Network" >nul 2>nul
rd/s/q "%AllUsersProfile%\Application Data\Xunlei" >nul 2>nul
rd/s/q "%AllUsersProfile%\Xunlei" >nul 2>nul
rd/s/q "%AllUsersProfile%\Thunder Network" >nul 2>nul
rd/s/q "%AppData%\Thunder Network" >nul 2>nul
rd/s/q "%CommonProgramFiles%\Thunder Network" >nul 2>nul
rd/s/q "%CommonProgramFiles(x86)%\Thunder Network" >nul 2>nul
rd/s/q "%UserProfile%\Local Settings\Application Data\Thunder Network" 2>nul
rd/s/q "%UserProfile%\Local Settings\Application Data\Pusher" 2>nul
rd/s/q "%UserProfile%\AppData\LocalLow\Thunder Network" >nul 2>nul
rd/s/q "%UserProfile%\AppData\LocalLow\XueLei" >nul 2>nul
rd/s/q "%UserProfile%\My Documents\Thunder"2>nul
rd/s/q "%AllUsersProfile%\Application Data\Thunder Network"2>nul
If Exist "%PUBLIC%" Rd /s/q "%PUBLIC%\Thunder Network" >nul 2>nul
If Exist "%PUBLIC%" Rd /s/q "%PUBLIC%\Documents\Thunder Network" >nul 2>nul
del/f/q "%AppData%\Microsoft\Windows\Libraries\Ѹ������.library-ms" 2>nul
Md "%AllUsersProfile%\Application Data\Thunder Network\tp_common_info.dat"
if %errorlevel%==0 Md  "%PUBLIC%\Thunder Network\tp_common_info.dat"
regsvr32 /s "Program\BHO\ThunderAgent.dll" >nul 2>nul
if exist "%WinDir%\SysWOW64" regsvr32 /s "Program\BHO\ThunderAgent64.dll" >nul 2>nul
Md "%AllUsersProfile%\Application Data\Thunder Network\cid_store.dat"
Md "%AllUsersProfile%\Application Data\Thunder Network\emule_upload_list.dat"
if %errorlevel%==0 (Md "%PUBLIC%\Thunder Network\cid_store.dat"&Md "%PUBLIC%\Thunder Network\emule_upload_list.dat")
reg add "HKLM\Software\Thunder Network\ThunderOem\thunder_backwnd" /v "dir" /d "%~dp0\" /f >nul 2>nul
reg add "HKLM\Software\Thunder Network\ThunderOem\thunder_backwnd" /v "Path" /d "%~dp0Program\Thunder.exe" /f >nul 2>nul
reg add "HKLM\Software\Thunder Network\ThunderOem\thunder_backwnd" /v "instdir" /d "%~dp0\" /f >nul 2>nul
reg add "HKLM\Software\Thunder Network\ThunderOem\thunder_backwnd" /v "Version" /d "7.9.44.5056" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������" /ve /d "%~dp0Program\BHO\geturl.htm" /f >nul
reg add "HKCU\Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������" /v "Contexts" /t REG_DWORD /d "0x00000022" /f >nul
reg add "HKCU\Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������ȫ������" /ve /d "%~dp0Program\BHO\getAllurl.htm" /f >nul
reg add "HKCU\Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������ȫ������" /v "Contexts" /t REG_DWORD /d "0x000000f3" /f >nul
if exist "%WinDir%\SysWOW64" reg add "HKLM\Software\Wow6432Node\Thunder Network\ThunderOem\thunder_backwnd" /v "dir" /d "%~dp0\" /f >nul 2>nul
if exist "%WinDir%\SysWOW64" reg add "HKLM\Software\Wow6432Node\Thunder Network\ThunderOem\thunder_backwnd" /v "Path" /d "%~dp0Program\Thunder.exe" /f >nul 2>nul
if exist "%WinDir%\SysWOW64" reg add "HKLM\Software\Wow6432Node\Thunder Network\ThunderOem\thunder_backwnd" /v "instdir" /d "%~dp0\" /f >nul 2>nul
if exist "%WinDir%\SysWOW64" reg add "HKLM\Software\Wow6432Node\Thunder Network\ThunderOem\thunder_backwnd" /v "Version" /d "7.9.44.5056" /f >nul 2>nul
reg add "HKCR\Xunlei.Bittorrent.6\DefaultIcon" /ve /d "%~dp0Program\TorrentFile.ico" /F>nul
reg add "HKCR\Xunlei.Bittorrent.6\Shell\Open" /ve /d "ʹ��Ѹ�����ظ�BT�ļ�" /F>nul
reg add "HKCR\Xunlei.Bittorrent.6\Shell\Open\command" /ve /d "%~dp0Program\Thunder.exe %%1" /F>nul
reg add "HKCR\Xunlei.LSTFile.6\DefaultIcon" /ve /d "%~dp0Program\XLDownloadList.ico" /F>nul
reg add "HKCR\Xunlei.LSTFile.6\Shell\Open" /ve /d "ʹ��Ѹ�����ظ������б��ļ�" /F>nul
reg add "HKCR\Xunlei.LSTFile.6\Shell\Open\command" /ve /d "%~dp0Program\Thunder.exe %%1" /F>nul
reg add "HKCR\Xunlei.TDFile.6\DefaultIcon" /ve /d "%~dp0Program\XLTempFile.ico" /F>nul
reg add "HKCR\Xunlei.TDFile.6\Shell\Open" /ve /d "ʹ��Ѹ������δ����ļ�" /F>nul
reg add "HKCR\Xunlei.TDFile.6\Shell\Open\command" /ve /d "%~dp0Program\Thunder.exe %%1" /F>nul
goto Install2
:Establish
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\Ѹ��.lnk""):b.TargetPath=""%~dp0Program\Thunder.exe"":b.WorkingDirectory=""%~dp0Program"":b.Save:close")
goto fanhui
:Give
Program\BHO\XLNonIESvr.exe -r ie -silent -setfirst
Program\BHO\XLNonIESvr.exe -r 360 -silent -setfirst
Program\BHO\XLNonIESvr.exe -r opera -silent -setfirst
Program\BHO\XLNonIESvr.exe -r maxthon -silent -setfirst
Program\BHO\XLNonIESvr.exe -r theworld -silent -setfirst
Program\BHO\XLNonIESvr.exe -r firefox -silent -setfirst
Program\BHO\XLNonIESvr.exe -r chrome -silent -setfirst
Program\BHO\XLNonIESvr.exe -r SogouExplorer -silent -setfirst
regsvr32 /s "Program\np_tdieplat.dll" >nul 2>nul
reg add "HKLM\Software\Google\Chrome\NativeMessagingHosts\com.xunlei.thunder" /f /ve /d "%~dp0Program\com.xunlei.thunder.json" >nul
if exist "%WinDir%\SysWOW64" reg add "HKLM\Software\Google\Chrome\NativeMessagingHosts\com.xunlei.thunder" /f /ve /d "%~dp0Program\com.xunlei.thunder.json" >nul
goto fanhui
:Uninstall
@ echo.
echo ����������ж����..���Ե�..
taskkill /f /im Thunder*>nul 2>nul
rd/s/q "%tmp%\Xunlei" >nul 2>nul
rd/s/q "%tmp%\Thunder" >nul 2>nul
rd/s/q "%tmp%\ThunderLiveUD" >nul 2>nul
rd/s/q "%tmp%\Thunder Network" >nul 2>nul
rd/s/q "%AllUsersProfile%\Application Data\Thunder Network" >nul 2>nul
rd/s/q "%AllUsersProfile%\Application Data\Xunlei" >nul 2>nul
rd/s/q "%AllUsersProfile%\Xunlei" >nul 2>nul
rd/s/q "%AllUsersProfile%\Thunder Network" >nul 2>nul
rd/s/q "%AppData%\Thunder Network" >nul 2>nul
rd/s/q "%CommonProgramFiles%\Thunder Network" >nul 2>nul
rd/s/q "%CommonProgramFiles(x86)%\Thunder Network" >nul 2>nul
rd/s/q "%UserProfile%\Local Settings\Application Data\Thunder Network" 2>nul
rd/s/q "%UserProfile%\Local Settings\Application Data\Pusher" 2>nul
rd/s/q "%UserProfile%\AppData\LocalLow\Thunder Network" >nul 2>nul
rd/s/q "%UserProfile%\AppData\LocalLow\XueLei" >nul 2>nul
rd/s/q "%UserProfile%\My Documents\Thunder"2>nul
rd/s/q "%AllUsersProfile%\Application Data\Thunder Network"2>nul
del/f/q "Program\BHO\ThunderAgent7.9.43.5054.dll"2>nul
del/f/q "%AppData%\Microsoft\Windows\Libraries\Ѹ������.library-ms" 2>nul
If Exist "%PUBLIC%" Rd /s/q "%PUBLIC%\Thunder Network" >nul 2>nul
If Exist "%PUBLIC%" Rd /s/q "%PUBLIC%\Documents\Thunder Network" >nul 2>nul
Program\Thunder.exe -unassociate:td -unassociate:torrent -unassociate:downlist -unassociate:thunderskin -unassociate:thunderaddin -unassociate:all -unregprotocol:ed2k -unregprotocol:magnet -unregprotocol:thunder -unregprotocol:xlapplink
Program\BHO\XLNonIESvr.exe -u ie -silent 
Program\BHO\XLNonIESvr.exe -u 360 -silent
Program\BHO\XLNonIESvr.exe -u opera -silent 
Program\BHO\XLNonIESvr.exe -u chrome -silent
Program\BHO\XLNonIESvr.exe -u firefox -silent
Program\BHO\XLNonIESvr.exe -u theworld -silent
Program\BHO\XLNonIESvr.exe -u SogouExplorer -silent
regsvr32 /s /u "Program\BHO\ThunderAgent.dll" >nul 2>nul
if exist "%WinDir%\SysWOW64" regsvr32 /s /u "Program\BHO\ThunderAgent64.dll" >nul 2>nul
regsvr32 /s /u "Program\np_tdieplat.dll" >nul 2>nul
reg delete "HKLM\Software\Thunder Network" /f >nul 2>nul
reg delete "HKLM\Software\Wow6432Node\Thunder Network" /f >nul 2>nul
reg delete "HKLM\Software\Google\Chrome\NativeMessagingHosts" /f >nul 2>nul
reg delete "HKLM\Software\Wow6432Node\Google\Chrome\NativeMessagingHosts" /f >nul 2>nul
reg delete "HKCR\Xunlei.Bittorrent.6" /f >nul 2>nul
reg delete "HKCR\Xunlei.LSTFile.6" /f >nul 2>nul
reg delete "HKCR\Xunlei.TDFile.6" /f >nul 2>nul
reg delete "HKCR\Xunlei.ThunderSkin.6" /f >nul 2>nul
reg delete "HKCU\Software\Thunder Network" /f >nul 2>nul
reg delete "HKLM\Software\Google\Chrome\NativeMessagingHosts" /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������" /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������ȫ������" /f >nul 2>nul
del /f /q "%userprofile%"\Desktop\Ѹ��.lnk
del /f /q "%userprofile%"\����\Ѹ��.lnk
goto Uninstall2
:custom
start Program\Xmp.ini
:fanhui
@ ECHO.
ECHO �������������..
goto menu
:Install2
@ ECHO.
ECHO ��������װ���..
goto menu
:Uninstall2
@ ECHO.
ECHO ������ж�����..
goto menu