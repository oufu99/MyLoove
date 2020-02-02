#SingleInstance Force
#NoEnv
#InstallKeybdHook
#InstallMouseHook
#Persistent
SetDefaultMouseSpeed,0
; ----------------------------------------------------------------------------------
; 下面给出变量定义
; ----------------------------------------------------------------------------------

Hotstring("EndChars","`t ")  ; 设置终止符 可以设置多个(){}!`n值之类不用分隔符


  ; 变量定义
NotePadPath="C:\Program Files (x86)\Notepad++\notepad++.exe"
TCPath="D:\MyLoove\TotalCommand\Totalcmd64.exe"
WizPath:="C:\Program Files (x86)\WizNote\Wiz.exe"

global targetTextPath:="D:\MyConfig\AdBlock拦截规则.txt"
global chromePath:="C:\Users\admin\AppData\Local\Google\Chrome\Application\chrome.exe"
global adblockPath:="chrome-extension://gighmmpiobklfepjocnamgkkbiglidom/options.html"
global screePoint:="1665,551"

#Include D:\Common\CommonAHK\Capsez\capsez.ahk
#Include D:\Common\CommonAHK\Capsez\AaronAHK\DiffPathCommonAHK.ahk

; 重启我的代码
$~#Esc::Run,D:\MyLoove\AHK\MyLoove.ahk
