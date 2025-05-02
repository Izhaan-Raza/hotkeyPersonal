#Requires AutoHotkey v2.0

!Backspace:: {  
    Send("{Home}")  
    Send("+{End}")  
    Send("{Del}")   
}  

!w::Send("!{F4}")

!+`:: {
    command := 'Start-Process "wt.exe" -Verb RunAs'
    Run("powershell.exe -Command " command)
}
!`:: {
  Run("wt.exe")
}

!+w:: {
    if (ProcessExist("Carnac.exe")) {
        Run("taskkill /IM Carnac.exe /F")
    } else {
        Run("C:\Users\izzup\AppData\Local\carnac\Carnac.exe")
    }
}

!x::  {
    ClipSaved := A_Clipboard  
    A_Clipboard := "🚀"       
    Sleep 50                  
    Send "^v"                 
    Sleep 50                   
    A_Clipboard := ClipSaved  
}

::peml::email
::ueml::uniemail
::ureg::unireg

