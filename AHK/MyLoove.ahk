CapsLock & t::
IfWinExist, Notepad++
    WinActivate ; 使用前面找到的窗口
else
   Run, :\Program Files (x86)\Notepad++\notepad++.exe
   WinActivate ; 
Return