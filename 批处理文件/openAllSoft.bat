@echo off
:: ��ȡ����ԱȨ��
cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit

:: ����::��ע��
start "" "D:\MyLoove\VimD\userPlugins\InitProgram.ahk"
start "" "D:\MyLoove\VimD\vimd.exe"
:: vid�е������ȹر��ٴ�
taskkill /f /im vimd.exe
start "" "D:\MyLoove\VimD\vimd.exe"
exit