Public Function sub_4141F0()
On Error Goto handler_0
var_8 = (arg_1)
Call sub_414970()
var_2 = (String$(2048, 0))
var_16 = (arg_1)
Call WNetGetConnectionA ()  '(API Sub call...)
var_24 = (arg_1)
var_10 = (String$(2048, 0))

If (CInt(-4992) = 0) Then
    Call sub_4158B0()
    
    If (    L[0] <> 0) Then
    
    If (    -248 - 20 = 1) Then
    
    If (    -(0) >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_num3 = 0 + -320

If (((Right(vbNullString, 1)) <> ("\"))) Then
    
    If (    0 <> 0) Then
    
    If (    -248 - 20 = 1) Then
    
    If (    -(0) >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_25 = (vbNullString) & ("\")
Call sub_415CA0()

'ERROR: Two many next close:
End If

If (0 <> 0) Then
    
    If (    -248 - 20 = 1) Then
    
    If (    -(0) >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
Call sub_415CA0()

'ERROR: Two many next close:
End If
var_16 = (String(256, 0))
Call GetComputerNameA ()  '(API Sub call...)
var_27 = (String(256, 0))
var_28 = Mid(String(256, 0), 1, var_29)
var_30 = ("\\") & (var_28)
var_31 = (var_30) & ("\")
var_32 = (var_31) & (#NOT SUPPORTED#)
var_num1 = CInt(InStr(1, var_32, ":", 0)) - 1
var_num7 = CInt(InStr(1, var_32, ":", 0)) + 1
var_33 = Mid(var_32, var_num7)
Set var_13 = Err
var_35 = var_13.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_14 = Err
var_7 = var_14.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_22 = ("ConvertPathToUNC")
var_36 = ("Error: ") & (CStr(var_35))
var_37 = (var_36) & (". ")
var_38 = (var_37) & (var_7)
var_39 = MsgBox(var_38, 0, var_22)
var_40 = (#NOT SUPPORTED#)
Resume handler_41492D
End Function

Public Function sub_414970()
On Error Goto handler_0
var_18 = (vbNullChar)
var_18 = (vbNullChar)
Set var_40 = Err
var_41 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_27 = Err
var_24 = var_27.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_14 = ("DriveFromPath")
var_42 = ("Error: ") & (CStr(var_41))
var_43 = (var_42) & (". ")
var_44 = (var_43) & (var_24)
var_45 = MsgBox(var_44, 0, var_14)
var_10 = (vbNullChar)
Resume handler_414C80
End Function

Public Function sub_414CA0()
var_num1 = Empty
On Error Goto handler_0
var_18 = (vbNullChar)
var_46 = (arg_1)
Call GetFileVersionInfoSizeA ()  '(API Sub call...)
var_47 = (arg_1)

If (-4980 >= 1) Then
    Dim var_23() As Byte
ReDim var_23(0 To -4980)
    
    If (    -(LBound(var_23)) >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    Err.Raise 9
    
End If
var_num3 = @[(var_23[((-(LBound(var_23))~))]]
var_46 = (arg_1)
Call GetFileVersionInfoA ()  '(API Sub call...)
var_47 = (arg_1)

If (-(LBound(var_23)) >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_46 = ("\")
var_num1 = @[(var_23[((L[var_23]~))]]
Call VerQueryValueA ()  '(API Sub call...)
Call RtlMoveMemory ()  '(API Sub call...)
var_42 = (Format$(0, , 1, 1)) & (".")
var_44 = (var_42) & (Format$(0, , 1, 1))
var_48 = (var_44) & (".")
var_49 = (var_48) & (Format$(0, , 1, 1))
var_50 = (var_49) & (".")
var_51 = (var_50) & (Format$(0, , 1, 1))
Set var_56 = Err
var_57 = var_56.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_34 = Err
var_22 = var_34.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_53 = ("GetFileVersion")
var_30 = ("Error: ") & (CStr(var_57))
var_31 = (var_30) & (". ")
var_32 = (var_31) & (var_22)
var_58 = MsgBox(var_32, 0, var_53)

'ERROR: Two many next close:
End If
var_13 = (var_51)
Resume handler_415302
End Function

Public Function sub_415330()
var_num1 = Empty
var_24 = (arg_1)
On Error Goto handler_0
var_8 = (arg_1)

Do While (0 <> -1)
    var_59 = (arg_1)
    Call FindFirstFileA ()  '(API Sub call...)
    var_8 = (arg_1)
    
    If (    -4980 <> -1) Then
    var_num1 = InStr(1, var_8, vbNullChar, 0) - 1
    var_num1 = Empty
    
    If (    Len(arg_1) >= Len(arg_1)) Then
    
    Do While (    ((Mid$(arg_1, Len(arg_1), var_61)) = ("\")))
    var_num1 = ((Mid$(arg_1, Len(arg_1), var_61)) [##] ("\")) Or -1
    var_num1 = var_num1 + Len(arg_1)
    ((Mid$(arg_1, Len(arg_1), var_61)) = ("\")) = Empty
    
Loop
((Mid$(arg_1, Len(arg_1), var_61)) = ("\")) = Empty
'ERROR: Two many next close:
End If

If (Len(arg_1) <> 0) Then
    var_num7 = Len(arg_1) - 1
    
End If

If (((vbNullString) = (vbNullChar))) Then
    var_10 = (Left$(var_8, var_num1))
    
End If
var_25 = (Left$(var_8, var_num1)) & ("\")
var_62 = (var_25) & (Left$(var_8, var_num1))

'ERROR: Two many next close:
End If

'ERROR: Two many next close:
Loop

If (((arg_1) <> (Left$(arg_1, var_num7)))) Then
    var_63 = (Left$(arg_1, var_num7)) & ("\")
    var_43 = (var_63) & (var_62)
    
End If
var_12 = (var_43)
Set var_64 = Err
var_65 = var_64.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_66 = Err
var_67 = var_66.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_68 = ("GetLongFileName")
var_69 = ("Error: ") & (CStr(var_65))
var_51 = (var_69) & (". ")
var_49 = (var_51) & (var_67)
var_70 = MsgBox(var_49, 0, var_68)
Resume handler_415875
End Function

Public Function sub_4158B0()
On Error Goto handler_0
var_10 = (arg_1)
Do

If (CInt(InStr(1, arg_1, vbNullChar, 0)) > 1) Then
    var_num4 = -1 + 1 + 1
    Dim var_73() As String
ReDim Preserve var_73(0 To 1)
    var_num4 = CInt(InStr(1, arg_1, vbNullChar, 0)) - 1
    var_num3 = -1 + 1 - LBound(var_73)
    
    If (    var_num3 >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num3 = @[(var_73[((0~))]]
var_25 = (Left(arg_1, var_num4))
var_num1 = CInt(InStr(1, arg_1, vbNullChar, 0)) + 1
var_75 = Mid(arg_1, var_num1)

'ERROR: Two many next close:
Loop While (CInt(InStr(1, arg_1, vbNullChar, 0)) > 1)
Set var_77 = Err
var_78 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_79 = Err
var_40 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_76 = ("NullTerminatedStringToArray")
var_50 = ("Error: ") & (CStr(var_78))
var_69 = (var_50) & (". ")
var_51 = (var_69) & (var_40)
var_80 = MsgBox(var_51, 0, var_76)
Resume handler_415C78
End Function

Public Function sub_415CA0()
On Error Goto handler_0
var_18 = (vbNullChar)
var_num1 = CInt(InStr(1, arg_2, ":\", 0)) + 2
var_82 = Mid(arg_2, var_num1)
var_num1 = CInt(InStr(1, arg_2, ":", 0)) + 1
var_18 = (arg_2)
Set var_79 = Err
var_53 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_16 = Err
var_27 = var_16.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_83 = ("PathFromFullPath")
var_75 = ("Error: ") & (CStr(var_53))
var_42 = (var_75) & (". ")
var_62 = (var_42) & (var_27)
var_48 = MsgBox(var_62, 0, var_83)
var_24 = (arg_2)
Resume handler_415FDE
End Function

Public Function sub_416020()
var_num1 = Empty
var_18 = (Space(255))
Call GetWindowsDirectoryA ()  '(API Sub call...)
var_86 = (Space(255))
End Function

Public Function sub_416110()
var_num1 = Empty
var_18 = (Space(255))
Call GetSystemDirectoryA ()  '(API Sub call...)
var_20 = (Space(255))
End Function

Public Function sub_416200()
var_num1 = Empty
var_20 = (String(100, Chr$(0)))
Call GetTempPathA ()  '(API Sub call...)
var_86 = (String(100, Chr$(0)))
var_num1 = InStr(1, String(100, Chr$(0)), Chr$(0), 0) - 1
var_num1 = Len(Left$(String(100, Chr$(0)), var_num1)) - 1
End Function

Public Function sub_416360()
var_num1 = Empty
var_10 = (String$(165, 0))
var_8 = (arg_1)
Call GetShortPathNameA ()  '(API Sub call...)
var_47 = (arg_1)
var_20 = (String$(165, 0))
End Function

Public Function sub_416490()
var_20 = (String(100, Chr$(0)))
Call GetUserNameA ()  '(API Sub call...)
var_86 = (String(100, Chr$(0)))
var_num1 = InStr(1, String(100, Chr$(0)), Chr$(0), 0) - 1
End Function

Public Function sub_4165E0()

If (((Dir(arg_2, 0)) = (vbNullChar))) Then
    Dim var_9 As New Global
    [VAR_Unknown] = var_9.[METHOD NOT VISIBLE IN FREE EDITION](arg_1, "CUSTOM")
    var_num1 = FreeFile()
    Open arg_2 For Binary Access Write As CInt(var_num1) Len = -1
    Close CInt(var_num1)
End If
End Function

Public Function sub_416950()
var_num1 = Empty
var_16 = (vbNullString)
var_79 = (vbNullString)
var_23 = (arg_1)
Call CreateProcessA ()  '(API Sub call...)
var_47 = (arg_1)

If (-4984 <> 0) Then
    Call sub_416AC0()
    
End If
End Function

Public Function sub_416B30()
var_num1 = Empty
On Error Goto handler_0
Call CreateToolhelp32Snapshot ()  '(API Sub call...)
Call Process32First ()  '(API Sub call...)

Do While (-1316 <> 0)
    var_61 = InStr(1, , Chr(0), 0)
    var_num8 = CInt(InStr(1, , Chr(0), 0)) - 1
    LSet  = 
    
    If (    ((Right$(LCase$(Left$(260)), Len(arg_1))) = (LCase$(arg_1)))) Then
    Call sub_4167C0()
    var_89 = (LCase$(Left$(260)))
    Call sub_4171B0()
    Call sub_417690()
    
    If (    Len(-5028) = CInt(Len(arg_1))) Then
    var_num4 = 0 + 1
    Call OpenProcess ()  '(API Sub call...)
    Call sub_417000()
End If
Call Process32Next ()  '(API Sub call...)
((Right$(LCase$(Left$(260)), Len(arg_1))) = (LCase$(arg_1))) = Empty

'ERROR: Two many next close:
Loop
Call CloseHandle ()  '(API Sub call...)
var_87 = ("Error!")
var_45 = MsgBox(var_87, 0)
End Function

Public Function sub_417000()
var_num1 = Empty
Call GetVersion ()  '(API Sub call...)

If (0 >= 0) Then
    Call GetCurrentProcess ()  '(API Sub call...)
    Call OpenProcessToken ()  '(API Sub call...)
    
    If (    0 = 0) Then
    var_24 = ("SeDebugPrivilege")
    var_11 = (vbNullChar)
    Call LookupPrivilegeValueA ()  '(API Sub call...)
    
    If (    -4984 = 0) Then
    Call AdjustTokenPrivileges ()  '(API Sub call...)
    
    If (    -284 <> 0) Then
    Call OpenProcess ()  '(API Sub call...)
    Call TerminateProcess ()  '(API Sub call...)
    Call CloseHandle ()  '(API Sub call...)
    Call GetVersion ()  '(API Sub call...)
    Call AdjustTokenPrivileges ()  '(API Sub call...)
    var_num2 = Empty
End If

If (0 <> 0) Then
    Call CloseHandle ()  '(API Sub call...)
    
End If
End Function

Public Function sub_4171B0()
var_92 = (arg_1)
var_93 = (vbNullChar)
var_94 = (vbNullChar)
var_95 = (vbNullChar)
var_96 = (vbNullChar)

If (CInt(InStr(1, arg_1, ":", 0)) > 0) Then
    
End If
var_num8 = ((Right$(arg_1, 1)) = ("\")) Or ((Right$(arg_1, 1)) = ("/"))
var_num8 = var_num8 Or -(CBool((InStr(1, arg_1, ".", 0))))

If (var_num8) Then
    var_95 = (vbNullChar)
    var_96 = (vbNullChar)
    var_94 = (arg_1)
    var_num8 = ((Right$(arg_1, 1)) <> ("\")) And ((Right$(arg_1, 1)) <> ("/"))
    
    If (    var_num8) Then
    var_20 = (arg_1) & ("\")
    
End If

Do While (CInt(Len(arg_1)) >= 1)
    var_num8 = ((Mid$(arg_1, CInt(Len(arg_1)), 1)) = ("\")) Or ((Mid$(arg_1, CInt(Len(arg_1)), 1)) = ("/"))
    
    Do While (    var_num8)
    var_69 = (Mid$(arg_1, CInt(Len(arg_1)), var_10)) & (vbNullChar)
    var_num1 = -5060 Or -1
    var_num1 = var_num1 + CInt(Len(arg_1))
    
Loop
var_num1 = Len(arg_1) - Len(var_69)
var_num1 = Len(var_69) - CInt(InStr(1, var_69, ".", 0))

'ERROR: Two many next close:
End If
End Function

Public Function sub_4175B0()
var_97 = (vbNullString)
End Function

Public Function sub_417620()
var_97 = (vbNullString)
End Function

