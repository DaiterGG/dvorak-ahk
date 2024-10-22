#Requires AutoHotkey v2.0
#UseHook

A_MenuMaskKey := "vkE8" ; see MenuMaskKey ahk v2

GRAVE := Chr(96) ; `

qwerty := Map(
    "q", "q", 
    "w", "w", 
    "e", "e", 
    "r", "r", 
    "t", "t", 
    "y", "y", 
    "u", "u", 
    "i", "i", 
    "o", "o", 
    "p", "p",
    "a", "a", 
    "s", "s", 
    "d", "d", 
    "f", "f", 
    "g", "g", 
    "h", "h", 
    "j", "j", 
    "k", "k", 
    "l", "l",
    "z", "z", 
    "x", "x", 
    "c", "c", 
    "v", "v", 
    "b", "b", 
    "n", "n", 
    "m", "m", 
    GRAVE, GRAVE, 
    "1", "1", 
    "2", "2", 
    "3", "3",
    "4", "4", 
    "5", "5", 
    "6", "6", 
    "7", "7", 
    "8", "8", 
    "9", "9", 
    "0", "0", 
    "-", "-", 
    "=", "=", 
    "[", "[", 
    "]", "]", 
    "\", "\",
    ";", ";", 
    "'", "'", 
    ",", ",", 
    ".", ".", 
    "/", "/"
)

qwerty_shift := Map(
    "q", "+q", 
    "w", "+w", 
    "e", "+e", 
    "r", "+r", 
    "t", "+t", 
    "y", "+y", 
    "u", "+u", 
    "i", "+i", 
    "o", "+o", 
    "p", "+p",
    "a", "+a", 
    "s", "+s", 
    "d", "+d", 
    "f", "+f", 
    "g", "+g", 
    "h", "+h", 
    "j", "+j", 
    "k", "+k", 
    "l", "+l",
    "z", "+z", 
    "x", "+x", 
    "c", "+c", 
    "v", "+v", 
    "b", "+b", 
    "n", "+n", 
    "m", "+m", 
    GRAVE, "+" GRAVE, 
    "1", "+1", 
    "2", "+2", 
    "3", "+3", 
    "4", "+4", 
    "5", "+5", 
    "6", "+6", 
    "7", "+7", 
    "8", "+8", 
    "9", "+9", 
    "0", "+0", 
    "-", "+-", 
    "=", "+=", 
    "[", "+[", 
    "]", "+]", 
    "\", "+\",
    ";", "+;", 
    "'", "+'", 
    ",", "+,", 
    ".", "+.", 
    "/", "+/"
)

dvorak := Map(
    "q", ";", 
    "w", ",", 
    "e", ".", 
    "r", "p", 
    "t", "y", 
    "y", "f", 
    "u", "g", 
    "i", "c", 
    "o", "r", 
    "p", "l",
    "a", "a", 
    "s", "o", 
    "d", "e", 
    "f", "u", 
    "g", "i", 
    "h", "d", 
    "j", "h", 
    "k", "t", 
    "l", "n",
    "z", "'", 
    "x", "q", 
    "c", "j", 
    "v", "k", 
    "b", "x", 
    "n", "b", 
    "m", "m", 
    GRAVE, "+4", 
    "1", "+=", 
    "2", "[", 
    "3", "+[",
    "4", "+9", 
    "5", "+7", 
    "6", "=", 
    "7", "+0", 
    "8", "+]", 
    "9", "]", 
    "0", "+8", 
    "-", "+1", 
    "=", "+\", 
    "[", "/", 
    "]", "+2", 
    "\", "\",
    ";", "s", 
    "'", "-", 
    ",", "w", 
    ".", "v", 
    "/", "z"
)

dvorak_shift := Map(
    "q", "+;", 
    "w", "+,", 
    "e", "+.", 
    "r", "+p", 
    "t", "+y", 
    "y", "+f", 
    "u", "+g", 
    "i", "+c", 
    "o", "+r", 
    "p", "+l",
    "a", "+a", 
    "s", "+o", 
    "d", "+e", 
    "f", "+u", 
    "g", "+i", 
    "h", "+d", 
    "j", "+h", 
    "k", "+t", 
    "l", "+n",
    "z", "+'", 
    "x", "+q", 
    "c", "+j", 
    "v", "+k", 
    "b", "+x", 
    "n", "+b", 
    "m", "+m", 
    GRAVE, "+" GRAVE, 
    "1", "1", 
    "2", "2", 
    "3", "3",
    "4", "4", 
    "5", "5", 
    "6", "6", 
    "7", "7", 
    "8", "8", 
    "9", "9", 
    "0", "0", 
    "-", "+5", 
    "=", GRAVE, 
    "[", "+/", 
    "]", "+6", 
    "\", "+3",
    ";", "+s", 
    "'", "+-", 
    ",", "+w", 
    ".", "+v", 
    "/", "+z"
)

russian := Map(
    "q", "й", 
    "w", "ц", 
    "e", "у", 
    "r", "к", 
    "t", "е", 
    "y", "н", 
    "u", "г", 
    "i", "ш", 
    "o", "щ", 
    "p", "з",
    "a", "ф", 
    "s", "ы", 
    "d", "в", 
    "f", "а", 
    "g", "п", 
    "h", "р", 
    "j", "о", 
    "k", "л", 
    "l", "д",
    "z", "я", 
    "x", "ч", 
    "c", "с", 
    "v", "м", 
    "b", "и", 
    "n", "т", 
    "m", "ь", 
    GRAVE, "ё", 
    "1", "1", 
    "2", "2", 
    "3", "3",
    "4", "4", 
    "5", "5", 
    "6", "6", 
    "7", "7", 
    "8", "8", 
    "9", "9", 
    "0", "0", 
    "-", "-", 
    "=", "=", 
    "[", "х", 
    "]", "ъ", 
    "\", "\",
    ";", "ж", 
    "'", "э", 
    ",", "б", 
    ".", "ю", 
    "/", "."
)

russian_shift := Map(
    "q", "Й", 
    "w", "Ц", 
    "e", "У", 
    "r", "К", 
    "t", "Е", 
    "y", "Н", 
    "u", "Г", 
    "i", "Ш", 
    "o", "Щ", 
    "p", "З",
    "a", "Ф", 
    "s", "Ы", 
    "d", "В", 
    "f", "А", 
    "g", "П", 
    "h", "Р", 
    "j", "О", 
    "k", "Л", 
    "l", "Д",
    "z", "Я", 
    "x", "Ч", 
    "c", "С", 
    "v", "М", 
    "b", "И", 
    "n", "Т", 
    "m", "Ь", 
    GRAVE, "Ё", 
    "1", "+1", 
    "2", "+'", 
    "3", "+3",
    "4", ";", 
    "5", "+5", 
    "6", "+;", 
    "7", "?", 
    "8", "+8", 
    "9", "+9", 
    "0", "+0", 
    "-", "+-", 
    "=", "+=", 
    "[", "+х", 
    "]", "+ъ", 
    "\", "+\",
    ";", "+ж", 
    "'", "Э", 
    ",", "+б", 
    ".", "Ю", 
    "/", ","
)
#SuspendExempt

; Variable to track the current layout
CurrentLayout := ""
; Map to store layout for each process
WindowLayouts := Map()



; Load the WindowLayouts from file at startup
LoadWindowLayouts() {
    global WindowLayouts
    FilePath := A_ScriptDir "\WindowLayouts.txt" ; File path for the layout data
    if FileExist(FilePath) {
        fileContent := FileRead(FilePath)
        Loop Parse, fileContent, "`n"  ; Loop through each line in the file
        {
            line := A_LoopField
            parts := StrSplit(line, ",") ; Split the line into process name and layout
            if (parts.Length = 2) { ; Check if there are exactly two parts
                processName := parts[1]
                layout := parts[2]
                WindowLayouts[processName] := layout ; Store the layout for the process
            }
        }
    }
}

; Save the WindowLayouts to file
SaveWindowLayouts() {
    global WindowLayouts
    FilePath := A_ScriptDir "\WindowLayouts.txt" ; File path for the layout data
    if FileExist(FilePath) {
        FileDelete FilePath  ; Delete the file if it exists
    }
    FileAppend "", FilePath ; Create a new file
    for process, layout in WindowLayouts {
        FileAppend process "," layout "`n", FilePath ; Append each key-value pair to the file
    }
}



; Functions to switch to specific layouts
SwitchToRussian() {
    SetCapsLockState "AlwaysOff"
    SetLayout(russian, russian_shift)
    global CurrentLayout := "Russian"
    Suspend False
}

SwitchToQWERTY() {
    SetCapsLockState "AlwaysOff"
    SetLayout(qwerty, qwerty_shift)
    global CurrentLayout := "QWERTY"
    Suspend False
}

SwitchToDvorak() {
    SetCapsLockState "AlwaysOff"
    SetLayout(dvorak, dvorak_shift)
    global CurrentLayout := "Dvorak"
    Suspend False
}

DisableLayouts() {
    SetCapsLockState False
    global CurrentLayout := "None"
    Suspend True
}

; Function to set the layout based on the current layout variable
ApplyLayout() {
    global CurrentLayout
    if (CurrentLayout = "Russian") {
        SwitchToRussian()
    } else if (CurrentLayout = "QWERTY") {
        SwitchToQWERTY()
    } else if (CurrentLayout = "Dvorak") {
        SwitchToDvorak()
    } else if (CurrentLayout = "None") {
        DisableLayouts()
    }
}


; Update the map with the current process and layout
UpdateCurrentProcessLayout() {
    global WindowLayouts, CurrentLayout
    currentProcess := WinGetProcessName("A") ; Use WinGetProcessName for AutoHotkey v2
    WindowLayouts[currentProcess] := CurrentLayout
}
; Switch to Russian layout
Capslock & 3:: {
    SwitchToRussian()
    UpdateCurrentProcessLayout() ; Update layout for current process
}

; Switch to QWERTY layout
Capslock & 2:: {
    SwitchToQWERTY()
    UpdateCurrentProcessLayout() ; Update layout for current process
}

; Switch to Dvorak layout
Capslock & 1:: {
    SwitchToDvorak()
    UpdateCurrentProcessLayout() ; Update layout for current process
}

; All layouts off
Capslock & 4:: {
    DisableLayouts()
    UpdateCurrentProcessLayout() ; Update layout for current process
}

   ; Function to display the WindowLayouts map in a message box
  ShowWindowLayouts() {
      global WindowLayouts
      layoutsStr := "Current Window Layouts:`n"

      for key, value in WindowLayouts {
          layoutsStr .= key . ": " . value . "`n" ; Append each key-value pair to the string
      }

      MsgBox layoutsStr ; Display the constructed string in a message box
  }

  ; Example usage (you can call this method whenever you want to show the layouts)
  Capslock & 5:: { ; Bind this to a key combination (e.g., Capslock + 5)
      ShowWindowLayouts()
  }


; One hand shortcuts
CapsLock & z::Send("{Blind}^z")
CapsLock & x::Send("{Blind}^x")
CapsLock & c::Send("{Blind}^c")
CapsLock & v::Send("{Blind}^v")
CapsLock & b::Send("{Blind}^b")
CapsLock & a::Send("{Blind}^a")
CapsLock & s::Send("{Blind}^s")
CapsLock & d::Send("{Blind}^d")
CapsLock & f::Send("{Blind}^f")
CapsLock & g::Send("{Blind}^g")
CapsLock & h::Send("{Blind}^h")
CapsLock & q::Send("{Blind}^q")
CapsLock & w::Send("{Blind}^w")
CapsLock & e::Send("{Blind}^e")
CapsLock & r::Send("{Blind}^r")
CapsLock & t::Send("{Blind}^t")
CapsLock & y::Send("{Blind}^y")

; Maximize window
LWin & Space::{
    WinMaximize("A")
}

#SuspendExempt False

SetLayout(layout, shift_layout) {
    ; Remap keys based on the layout
    for key, value in layout {
        Hotkey key, SendInputKey.Bind(, value)
    }
    
    ; Add Shift modifier mappings
    for key, value in shift_layout {
        Hotkey "+" key, SendInputKey.Bind(, value)
    }
    ; Ctrl variants
    for key, value in layout {
        Hotkey "^" key, SendInputKey.Bind(, "^" value)
    }
    ; Alt variants
    for key, value in layout {
        Hotkey "!" key, SendInputKey.Bind(, "!" value)
    }
    ;Ctrl Alt variants
    for key, value in layout {
        Hotkey "^!" key, SendInputKey.Bind(, "^!" value)
    }
    ;Shift Alt variants
    for key, value in layout {
        Hotkey "+!" key, SendInputKey.Bind(, "+!" value)
    }
    ;Shift Ctrl Alt variants
    for key, value in layout {
        Hotkey "+!^" key, SendInputKey.Bind(, "+!^" value)
    }
    ; Shift Ctrl variants
    for key, value in layout {
    ;   if ( key = "z" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^z")
    ;   } else if ( key = "x" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^x")
    ;   } else if ( key = "c" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^c")
    ;   } else if ( key = "v" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^v")
    ;   } else if ( key = "s" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^s")
    ;   } else if ( key = "f" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^f")
    ;   } else if ( key = "a" ) {
    ;       Hotkey "^+" key, SendInputKey.Bind(, "^a")
    ;   } else {
            Hotkey "^+" key, SendInputKey.Bind(, "^+" value)
    ;   }
    }
}

SendTwo(this,value1, value2) {
    SendInputKey(" ", value1)
    SendInputKey(" ", value2)
}

; Send the mapped value using SendInput
SendInputKey(this, value) {
    SendInput(value)
    return ; Prevent default action
}


LoadWindowLayouts()
SwitchToDvorak()
UpdateCurrentProcessLayout() ; Update layout for current process

lastSaveTime := 0

Loop { ; Get the active window's process name
    global CurrentLayout
    global WindowLayouts
    if (WinExist("A")) { ; Check if there is an active window

        try{
        currentProcess := WinGetProcessName("A") ; Use WinGetProcessName for AutoHotkey v2
        } catch Error as err {
            currentProcess := "Error"
        }

        if !(WindowLayouts.Has(currentProcess)) {
            ; If this window's process has no saved layout, store the current one
            WindowLayouts[currentProcess] := CurrentLayout
        } else {
            ; Apply the saved layout when focusing the window again
            CurrentLayout := WindowLayouts[currentProcess]
            ApplyLayout()
        }
    }



    ; Save the WindowLayouts to file every 300 seconds
    global lastSaveTime
    if ((A_TickCount - lastSaveTime) >= 300000) { ; 30 seconds in milliseconds
        SaveWindowLayouts() ; Call the save function
        lastSaveTime := A_TickCount ; Update the last save time
    }


    Sleep 500
}

