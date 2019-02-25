Global Version :=0.3 ;In beta


 
;This script is updated version
CheckForUpdate(ScriptURL) {
    Script := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    Script.Open("GET", ScriptURL, false)
    Script.Send()
    Script.ResponseText := SubStr(Script.ResponseText, 2)
    RegexMatch(StrSplit(Script.ResponseText, "`n")[1], "m):=\s*\K.*?$", NewVersion)
    if (NewVersion > Version) {
        f := FileOpen(A_ScriptFullPath, "rw")
        f.Length := StrLen(Script.ResponseText)
        f.Write(Script.ResponseText)
        f.Close()
        Reload
    }
}
/*

Written BY:
         Scaramental

DateStarted:14/02/19

DateOfLastEdit:3:46 PM 16/02/2019/02/19

                Description:A simple pokemon planet bot Which will play and grind for you
*/


/*
Todo:
Add gui
Make bot work
Add features to make bot better
*/

;                Code start here
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
#SingleInstance force
 #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
CheckForUpdate("https://raw.githubusercontent.com/HypedNinja/PokeBot/master/Bot.ahk")

F1::
    pause_state = 0
    OnMessage(0x44, "OnMsgBox")
MsgBox 0x84, PokeBot, Would you like to active the bot
OnMessage(0x44, "")

IfMsgBox Yes, {

} Else IfMsgBox No, {

}

OnMsgBox() {
    DetectHiddenWindows, On
    Process, Exist
    If (WinExist("ahk_class #32770 ahk_pid " . ErrorLevel)) {
        hIcon := LoadPicture("C:\Users\Dk\Downloads\favicon (1).ico", "w32 Icon1", _)
        SendMessage 0x172, 1, %hIcon%, Static1 ; STM_SETIMAGE
    }
}
   IfMsgBox Yes 
   {
   ^p::
    pause_state = 1
    return

your_action:
Loop
{
    
Send, {left down}
Sleep 750
Send, {left up}
send, {1}
sleep 750
Send, {right down}
Sleep 1075
send, {1}
Send, {right up}
Sleep 1075
send, {1}
Send, {left down}
send, {1}
Sleep 750
Send, {left up}
send, {1}
sleep 750
Send, {right down}
Sleep 1075
Send, {right up}
send, {1}
send, {1}
If (pause_state = 1) {
    break
} }

   }
   
   IfMsgBox no
    ExitApp
    




/*
Bot will need update soon
*/

