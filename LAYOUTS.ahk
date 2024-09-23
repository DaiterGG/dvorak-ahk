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
	"[", "+х", 
	"]", "+ъ", 
	"\", "+\",
    ";", "+ж", 
	"'", "Э", 
	",", "+б", 
	".", "Ю", 
	"/", "+/"
)
#SuspendExempt
; Switch to Russian layout
Alt & 3:: {
    SetLayout(russian, russian_shift)
	Suspend False
}

; Switch to QWERTY layout
Alt & 2:: {
    SetLayout(qwerty, qwerty_shift)
	Suspend False
}

; Switch to Dvorak layout
Alt & 1:: {
    SetLayout(dvorak, dvorak_shift)
	Suspend False
}

;all layouts off/on
Alt & 4::Suspend True  ; Ctrl+Alt+S

; Disable CapsLock
CapsLock::Return

CapsLock & z::Send("^z")
CapsLock & x::Send("^x")
CapsLock & c::Send("^c")
CapsLock & v::Send("^v")
CapsLock & a::Send("^a")
CapsLock & s::Send("^s")
CapsLock & d::Send("^f")
CapsLock & f::Send("^d")
CapsLock & g::Send("^z")
CapsLock & q::Send("^x")
CapsLock & w::Send("^c")
CapsLock & e::Send("^v")
CapsLock & r::Send("^a")
CapsLock & t::Send("^s")
CapsLock & y::Send("^f")


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
	;	if ( key = "z" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^z")
	;	} else if ( key = "x" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^x")
	;	} else if ( key = "c" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^c")
	;	} else if ( key = "v" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^v")
	;	} else if ( key = "s" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^s")
	;	} else if ( key = "f" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^f")
	;	} else if ( key = "a" ) {
	;		Hotkey "^+" key, SendInputKey.Bind(, "^a")
	;	} else {
			Hotkey "^+" key, SendInputKey.Bind(, "^+" value)
	;	}
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

SetLayout(dvorak, dvorak_shift)
