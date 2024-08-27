#SingleInstance Force

!s::  ; Alt + S
    WinGet, T, Transparent, A  ; 取得目標窗口的標示A及透明度T
    ; 透明度為空或者透明度減少到100時重新設置透明度
    if (T = "") or (T = 100)
        T := 260  ; 因為每次都會減少10所以最大值設定為250 + 10 方便計算没有取255
    T_N := T - 10  ; 每次透明度減少10
    WinSet, Transparent, %T_N%, A  ; 設置窗口透明度
Return

!r::  ; Alt + R
    WinSet, Transparent, OFF, A  ; 恢復窗口透明度到默認值（完全不透明）
Return
