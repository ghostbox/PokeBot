Global Version := 0.1
CheckForUpdate(ScriptURL) {
    Script := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    Script.Open("GET", ScriptURL, false)
    Script.Send()
    RegexMatch(StrSplit(Script.ResponseText, "`n")[1], "m):=\s*\K.*?$", NewVersion)
    if (NewVersion > Version) {
        f := FileOpen(A_ScriptFullPath, "rw")
        f.Length := StrLen(Script.ResponseText)
        f.Write(Script.ResponseText)
        f.Close()
        Reload
    }
}
CheckForUpdate("https://raw.githubusercontent.com/HypedNinja/PokeBot/master/Bot.ahk")

;https://raw.githubusercontent.com/HypedNinja/PokeBot/master/Bot.ahk