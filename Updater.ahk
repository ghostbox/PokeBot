Global Version := "0.1" ; Whatever
CheckForUpdate(VersionURL, ScriptURL) {
    Updater := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    Updater.Open("GET", VersionURL, false)
    Updater.Send()
    if (Updater.ResponseText > Version) {
        Script := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        Script.Open("GET", ScriptURL, false)
        Script.Send()
        if (Script.ResponseText) {
            f := FileOpen(A_ScriptFullPath, "rw")
            f.Length := StrLen(Script.ResponseText)
            f.Write(Script.ResponseText)
            f.Close()
            Reload
        }
    }
}