VERSION 5.00

Begin VB.Form FrmTmpOpt
    Caption = "Temp File Cleanup"
    ScaleMode = 1
    AutoRedraw = 0              'False
    FontTransparent = -1              'True
    BorderStyle = 4
    LinkTopic = "Form1"
    MaxButton = 0              'False
    MinButton = 0              'False
    Visible = 0              'False
    ClientLeft   = 5205
    ClientTop    = 3240
    ClientWidth  = 4710
    ClientHeight = 6000
    ShowInTaskbar = 0              'False
    StartupPosition = 1
    Begin VB.CommandButton CmdBanner
        BackColor = -2147483624
        Left   = 4200
        Top    = 3000
        Width  = 375
        Height = 255
        Visible = 0              'False
        TabIndex = 16
        Appearance = 0
        Style = 1
    End
    Begin VB.Timer TmrFileChk
        Enabled = 0              'False
        Interval = 1000
        Left = 4080
        Top = 240
    End
    Begin VB.Frame Fra_WinNT
        Caption = "Temp Locations for WinNT"
        Left   = 120
        Top    = 120
        Width  = 4455
        Height = 3015
        TabIndex = 6
        Begin VB.CheckBox Chk_Java
            Caption = "Sun Java Cache"
            Left   = 240
            Top    = 2040
            Width  = 3975
            Height = 255
            TabIndex = 20
        End
        Begin VB.ComboBox CboUser
            Left   = 120
            Top    = 2520
            Width  = 4215
            Height = 315
            TabIndex = 15
        End
        Begin VB.CheckBox Chk_DrWatson
            Caption = "Dr.Watson Dumps"
            Left   = 240
            Top    = 1080
            Width  = 3015
            Height = 255
            TabIndex = 13
        End
        Begin VB.CheckBox Chk_Cookies
            Caption = "Cookies"
            Left   = 240
            Top    = 840
            Width  = 2175
            Height = 255
            TabIndex = 12
        End
        Begin VB.CheckBox Chk_Prefetch
            Caption = "XP Prefetch"
            Left   = 240
            Top    = 1320
            Width  = 1575
            Height = 255
            TabIndex = 11
        End
        Begin VB.CheckBox Chk_Recent
            Caption = "Recent"
            Left   = 240
            Top    = 1560
            Width  = 2895
            Height = 255
            TabIndex = 10
        End
        Begin VB.CheckBox Chk_TIF
            Caption = "Temporary Internet Files"
            Left   = 240
            Top    = 360
            Width  = 3135
            Height = 255
            TabIndex = 9
        End
        Begin VB.CheckBox Chk_History
            Caption = "History"
            Left   = 240
            Top    = 1800
            Width  = 1935
            Height = 255
            TabIndex = 8
        End
        Begin VB.CheckBox Chk_Temp
            Caption = "Temp Files"
            Left   = 240
            Top    = 600
            Width  = 2295
            Height = 255
            TabIndex = 7
        End
    End
    Begin VB.Frame Fra_Win9x
        Caption = "Temp Locations for Win9x"
        Left   = 120
        Top    = 3240
        Width  = 4455
        Height = 1815
        TabIndex = 2
        Begin VB.CheckBox Chk_9xRecent
            Caption = "C:\Windows\Recent"
            Left   = 120
            Top    = 1440
            Width  = 4215
            Height = 255
            TabIndex = 19
        End
        Begin VB.CheckBox Chk_9xHistory
            Caption = "C:\Windows\History"
            Left   = 120
            Top    = 1200
            Width  = 4215
            Height = 255
            TabIndex = 18
        End
        Begin VB.CheckBox Chk_RootTMP
            Caption = "C:\Temp"
            Left   = 120
            Top    = 960
            Width  = 2175
            Height = 255
            TabIndex = 14
        End
        Begin VB.CheckBox Chk_9xCookies
            Caption = "C:\Windows\Cookies"
            Left   = 120
            Top    = 720
            Width  = 4215
            Height = 255
            TabIndex = 5
        End
        Begin VB.CheckBox Chk_WindowsTIF
            Caption = "C:\Windows\Temporary Internet Files"
            Left   = 120
            Top    = 480
            Width  = 4215
            Height = 255
            TabIndex = 4
        End
        Begin VB.CheckBox Chk_WindowsTmp
            Caption = "C:\Windows\Temp"
            Left   = 120
            Top    = 240
            Width  = 4215
            Height = 255
            TabIndex = 3
        End
    End
    Begin VB.CommandButton CmdExit
        Caption = "Exit (Save Settings)"
        Left   = 2280
        Top    = 5520
        Width  = 2295
        Height = 375
        TabIndex = 1
    End
    Begin VB.CommandButton CmdDelTmp
        Caption = "Delete Selected Temp Files"
        Left   = 120
        Top    = 5520
        Width  = 2175
        Height = 375
        TabIndex = 0
    End
    Begin VB.Label LblStatus
        ForeColor = 16711680
        Left   = 120
        Top    = 5160
        Width  = 4455
        Height = 255
        TabIndex = 17
    End
    Begin VB.Menu mnuOptions
        Caption = "Options"
        Begin VB.Menu mnuIEonClose
            Caption = "Empty IE on Browser Close"
            Checked = -1              'True
        End
        Begin VB.Menu mnuChkALL
            Caption = "Check ALL Options"
        End
        Begin VB.Menu mnuUnChkALL
            Caption = "Un-Check ALL Options"
        End
        Begin VB.Menu mnuALLprofiles
            Caption = "Process all Profiles"
        End
    End
End
Public Function KillFolder(arg_0 As String, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
var_11 = (arg_0)
On Error Resume Next

If (((Right(arg_0, 1)) = ("\"))) Then
    var_num1 = Len(arg_0) - 1
    
End If
Dim var_29 As New FileSystemObject
var_84 = var_29.[METHOD NOT VISIBLE IN FREE EDITION](Left(arg_0, var_num1))

If (0 < 0) Then
    
End If
SetAttr Left(arg_0, var_num1), 0

If (var_29 = 0) Then
    Set var_29 = New FileSystemObject
    
End If
Call var_29.[METHOD NOT VISIBLE IN FREE EDITION](Left(arg_0, var_num1), True)

If (0 < 0) Then
    
End If
Set var_12 = Err
var_22 = var_12.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If

If (var_29 = 0) Then
    Set var_29 = New FileSystemObject
    
End If
var_84 = var_29.[METHOD NOT VISIBLE IN FREE EDITION](Left(arg_0, var_num1))

If (0 < 0) Then
    
End If
var_num3 = Empty
var_num4 = Empty
var_num3 = var_22 = 0 And var_84 = 0

End Function


Public Function KillTMP(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
var_12 = (vbNullString)
Call PathIsDirectoryA ()  '(API Sub call...)
var_num3 = Me + 52
var_21 = (vbNullString)
var_12 = (vbNullString)
Call PathIsDirectoryEmptyA ()  '(API Sub call...)
var_num1 = Me + 52
var_21 = (vbNullString)
On Error Resume Next

If (CBool(CStr(-4496 <> 0))) Then
    SetAttr vbNullString, 0
    var_num3 = Me + 52
    Kill vbNullString
    Set var_76 = Me
    
    If (    var_76 < 0) Then
    
End If

If (var_76 < 0) Then
    
End If

If (FrmTmpOpt < 0) Then
    
End If

If (var_76 < 0) Then
    
End If

If (var_76 < 0) Then
    
End If
var_15 = ("Deleting File ") & (vbNullString)

If (var_76 < 0) Then
    
End If

If (var_76 < 0) Then
    
End If
Set var_76 = Nothing
On Error Goto handler_0
'ERROR: Two many next close:
End If

If (CBool(CStr(-4512 <> 0))) Then
    SetAttr vbNullString, 0
    Call CloseHandle ()  '(API Sub call...)
    var_12 = (vbNullString)
    Call RemoveDirectoryA ()  '(API Sub call...)
    var_num4 = Me + 52
    var_21 = (vbNullString)
    Set var_83 = Me
    
    If (    var_83 < 0) Then
    
End If

If (var_83 < 0) Then
    
End If

If (FrmTmpOpt < 0) Then
    
End If

If (var_83 < 0) Then
    
End If

If (var_83 < 0) Then
    
End If
var_15 = ("Removing Directory ") & (vbNullString)

If (var_83 < 0) Then
    
End If

If (var_83 < 0) Then
    
End If
Set var_83 = Nothing
'ERROR: Two many next close:
End If

If (CBool(CStr(-4496 <> 0))) Then
    Call CloseHandle ()  '(API Sub call...)
    SetAttr vbNullString, 0
    
    If (    Me < 0) Then
    
End If
Set var_23 = Me

If (var_23 < 0) Then
    
End If

If (var_23 < 0) Then
    
End If

If (FrmTmpOpt < 0) Then
    
End If

If (var_23 < 0) Then
    
End If

If (var_23 < 0) Then
    
End If
var_15 = ("Removing Directory ") & (vbNullString)

If (var_23 < 0) Then
    
End If

If (var_23 < 0) Then
    
End If
Set var_23 = Nothing
On Error Goto handler_0
'ERROR: Two many next close:
End If
Set var_27 = Me

If (var_27 < 0) Then
    
End If
Call sub_4167C0()

If (var_27 = 2) Then
    Set var_27 = Me
    
    If (    FrmTmpOpt < 0) Then
    
End If
var_num3 = Empty

'ERROR: Two many next close:
End If
Resume Next

End Function


'Event for mnuChkALL
Private Sub mnuChkALL_Click()
Set var_18 = Me
Set var_18 = var_18
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing

End Sub


'Event for CmdExit
Private Sub CmdExit_Click()
Set var_10 = Me

If (var_10 < 0) Then
    
End If
var_num1 = Empty

If (0 = -1) Then
    var_12 = ("00000000")
    var_8 = ("Persistent")
    var_18 = ("Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache")
    Call sub_443490()
    
End If
Set var_10 = 0 = -1
var_num1 = Empty

If (0 = var_10) Then
    var_12 = ("00000001")
    var_8 = ("Persistent")
    var_18 = ("Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache")
    Call sub_443490()
    
End If
Dim var_9 As New Global
Set var_10 = Me
Call var_9.[METHOD NOT VISIBLE IN FREE EDITION](var_10)

End Sub


'Event for CmdDelTmp
Private Sub CmdDelTmp_Click()
var_197 = ("TmpOptFiles")
Call sub_416020()
Call sub_4171B0()
Set var_16 = Nothing
Set var_16 = Nothing
Set var_16 = -256 - 20
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Cookies")
    var_15 = (vbNullString) & ("\Cookies")
    var_24 = ("*.txt")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFF28])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Local Settings\Temp")
    var_273 = (vbNullString) & ("\Local Settings\Temp")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFF20])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = 

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Local Settings\Temporary Internet Files")
    var_15 = (vbNullString) & ("\Local Settings\Temporary Internet Files")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFF18])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Call sub_416840()

Do While (0 = 6)
    Erase var_269
    Set var_16 = Nothing
    
    Do While (    0 = 1)
    var_133 = ("\Application Data\Microsoft\Dr Watson")
    var_274 = (vbNullString) & ("\Application Data\Microsoft\Dr Watson")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFF10])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Call sub_416840()

Do While (0 = 5)
    Erase var_269
    Set var_16 = Nothing
    
    Do While (    0 = 1)
    var_133 = ("\Documents\DrWatson")
    var_15 = (vbNullString) & ("\Documents\DrWatson")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFF08])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Local Settings\History")
    var_275 = (vbNullString) & ("\Local Settings\History")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFF00])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = 

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Recent")
    var_15 = (vbNullString) & ("\Recent")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFEF8])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Application Data\Sun\Java\Deployment\cache\javapi\v1.0")
    var_276 = (vbNullString) & ("\Application Data\Sun\Java\Deployment\cache\javapi\v1.0")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFEF0])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = 

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Prefetch")
    Call sub_416020()
    var_277 = (vbNullString) & ("\Prefetch")
    var_24 = ("*.pf")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFEE8])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Cookies")
    Call sub_416020()
    var_278 = (0) & ("\Cookies")
    var_24 = ("*.txt")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFEE0])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = -256 - 20

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Temporary Internet Files")
    Call sub_416020()
    var_279 = (vbNullString) & ("\Temporary Internet Files")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFED8])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Temp")
    Call sub_416020()
    var_280 = (0) & ("\Temp")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFED0])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = -256 - 20

Do While (0 = 1)
    Erase var_269
    var_133 = ("\Temp")
    Call sub_417620()
    var_280 = (vbNullString) & ("\Temp")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFEC8])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = Nothing

Do While (0 = 1)
    Erase var_269
    var_133 = ("\History")
    Call sub_416020()
    var_281 = (0) & ("\History")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    Do While (    CLng(var_14) <= WORD PTR [EBP+FFFFFEC0])
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)

'ERROR: Two many next close:
Loop
Set var_16 = -256 - 20

If (0 = 1) Then
    Erase var_269
    var_133 = ("\Recent")
    Call sub_416020()
    var_282 = (vbNullString) & ("\Recent")
    var_24 = ("*.*")
    Call sub_41BE00()
    On Error Goto handler_0
    var_num7 = Empty
    
    If (    CLng(var_14) <= WORD PTR [EBP+FFFFFEB8]) Then
    
    If (    -256 - 20 = 1) Then
    var_num7 = CLng(var_14) - 0
    
    If (    var_num7 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_21 = (vbNullString)
var_num1 = 1 + CLng(var_14)
Set var_16 = Err
var_134 = var_16.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_283 = ("Error ") & (CStr(var_134))
var_150 = MsgBox(var_283, 0)
Set var_16 = 
Set var_16 = var_14
Set var_16 = Nothing
Set var_16 = -256 - 20

'ERROR: Two many next close:
End If
Set var_16 = Nothing

Do While (0 = -1)
    Set var_2 = Nothing
    Set var_16 = Nothing
    Set var_16 = 
    
    Do While (    0 > 0)
    Set var_16 = Nothing
    
Loop
Set var_16 = Nothing
Set var_16 = Nothing
Set var_16 = Nothing
Set var_16 = Nothing

End Sub


'Event for CboUser
Private Sub CboUser_Click()

End Sub


Private Sub CboUser_DropDown()
Set var_18 = Me

If (var_18 < 0) Then
    
End If

End Sub


'Event for mnuALLprofiles
Private Sub mnuALLprofiles_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = var_18) Then
    Set var_18 = Me = var_18
    
End If
Set var_18 = Me = var_18

End Sub


'Event for Form
Private Sub Form_Load()
var_num1 = Empty
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_19 = (FrmTmpOpt)
Set var_10 = Nothing
Call sub_417620()
var_15 = (vbNullString) & ("\Temp")
Set var_10 = 
Call sub_416020()
var_8 = (-4496) & ("\Temporary Internet Files")
Set var_10 = 
Call sub_416020()
var_18 = (var_10) & ("\Temp")
Set var_10 = Nothing
Call sub_416020()
var_15 = (vbNullString) & ("\Cookies")
Set var_10 = 
Call sub_416020()
var_8 = (-4508) & ("\History")
Set var_10 = 
Call sub_416020()
var_18 = (var_10) & ("\Recent")
Set var_10 = 
Set var_10 = Nothing

End Sub


Private Sub Form_Unload(Cancel as Integer)
var_197 = ("TEchCD")
Erase var_269
Set var_18 = Me

If (var_18 < 0) Then
    
End If

End Sub


'Event for TmrFileChk
Private Sub TmrFileChk_Timer()
var_num1 = Empty
Set var_40 = Me
var_106 = (FrmTmpOpt) & ("\Local Settings\Temporary Internet Files")
var_24 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4500)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Set var_40 = Nothing
var_106 = (FrmTmpOpt) & ("\Local Settings\Temp")
var_24 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4516)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Set var_40 = Nothing
var_106 = (FrmTmpOpt) & ("\Cookies")
var_24 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4532)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Set var_40 = Nothing
var_106 = (FrmTmpOpt) & ("\Local Settings\History")
var_24 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4548)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Set var_40 = Nothing
var_106 = (FrmTmpOpt) & ("\Recent")
var_24 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4564)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Set var_40 = Nothing
var_106 = (FrmTmpOpt) & ("\Application Data\Sun\Java\Deployment\cache\javapi\v1.0")
var_24 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4580)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Call sub_416020()
var_29 = (var_40) & ("\Cookies")
var_24 = (var_29)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4596)) = 0) Then
    Set var_40 = Nothing
    Set var_40 = Nothing
    
End If
Set var_40 = Nothing
Call sub_416020()
var_15 = (vbNullString) & ("\Temporary Internet Files")
var_24 = (var_15)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4612)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Call sub_416020()
var_11 = () & ("\Temp")
var_24 = (var_11)
Call PathFileExistsA ()  '(API Sub call...)
Set var_40 = Nothing
Set var_40 = Nothing
Set var_40 = Nothing
Call sub_416020()
var_15 = (vbNullString) & ("\Prefetch")
var_24 = (var_15)
Call PathFileExistsA ()  '(API Sub call...)
Set var_40 = 

If (var_40) Then
    
End If
Set var_40 = Nothing
Set var_40 = Nothing
Call sub_416840()

If (var_40 = 6) Then
    Set var_40 = Nothing
    var_15 = (vbNullString) & ("\Application Data\Microsoft\Dr Watson")
    var_24 = (var_15)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4660)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 

'ERROR: Two many next close:
End If
Call sub_416840()

If (var_40 = 5) Then
    Set var_40 = Nothing
    var_15 = (vbNullString) & ("\Documents\DrWatson")
    var_24 = (var_15)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4676)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (var_40 = 1) Then
    Set var_40 = Nothing
    Set var_40 = Nothing
    
End If
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_29 = (-292) & ("\Temp")
var_24 = (var_29)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4692)) = 0) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = Nothing

'ERROR: Two many next close:
End If
Set var_40 = 
Call sub_416020()
var_29 = (var_40) & ("\History")
var_24 = (var_29)
Call PathFileExistsA ()  '(API Sub call...)
Set var_40 = Nothing
Set var_40 = Nothing
Set var_40 = Nothing
Call sub_416020()
var_15 = (vbNullString) & ("\Recent")
var_24 = (var_15)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4724))) Then
    Set var_40 = 
    
    If (    var_40) Then
    
End If
Set var_40 = var_40

'ERROR: Two many next close:
End If
Set var_40 = 

End Sub


'Event for mnuUnChkALL
Private Sub mnuUnChkALL_Click()
Set var_18 = Me
Set var_18 = var_18
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing

End Sub


