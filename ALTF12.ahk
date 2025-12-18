; Emergency minimize POS Chrome dengan ALT + F12
!F12::   ; ! = ALT
If WinActive("ahk_exe chrome.exe")
{
    WinMinimize, A
}
return
