Global Version :=0.2
CheckForUpdate("https://raw.githubusercontent.com/HypedNinja/PokeBot/master/Bot.ahk")

/*

Written BY:
         Scaramental

DateStarted:14/02/19

DateOfLastEdit:3:46 PM 16/02/201914/02/19

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
 #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
CheckForUpdate("https://raw.githubusercontent.com/HypedNinja/PokeBot/master/Bot.ahk")

F1::
    pause_state = 0
    MsgBox, 3, Bot, PokeBot`, So you want to active the bot
    IfMsgBox, yes
        gosub, your_action
        return
    IfMsgBox, No
        return
    IfMsgBox, Cancel
        return

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









