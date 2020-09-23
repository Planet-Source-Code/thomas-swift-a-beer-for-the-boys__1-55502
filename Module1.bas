Attribute VB_Name = "Module1"
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Function TaskBarHide()
    Dim tReturn
    
    tReturn = FindWindow("Shell_traywnd", "")
    SetWindowPos tReturn, 0, 0, 0, 0, 0, &H80
End Function
Function TaskBarShow()
    Dim tReturn As Long

    tReturn = FindWindow("Shell_traywnd", "")
    SetWindowPos tReturn, 0, 0, 0, 0, 0, &H40
End Function


