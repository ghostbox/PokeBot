/*
Written BY:
         Scaramental
DateStarted:14/02/19
DateOfLastEdit:14/02/19
                Description:A simple pokemon planet bot Which will play and grind for you

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
#SingleInstance, force
#Persistent

OnMessage(0x44, "OnMsgBox")
MsgBox 0x84, PokeBot, So you want to active the bot
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
IfMsgBox, Yes
MouseMove,50, 50, 5

Else IfMsgBox, No
ExitApp

