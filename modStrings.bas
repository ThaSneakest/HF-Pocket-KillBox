Public Function sub_417690()
var_97 = (vbNullString)
End Function

Public Function sub_417700()
var_97 = (vbNullString)
End Function

Public Function sub_417770()
var_num1 = Empty
var_24 = (String$(260, Chr$(0)))
var_11 = (arg_3)
Call sub_417AC0()
var_98 = (arg_1)
Call SHBrowseForFolderA ()  '(API Sub call...)

If (-404 <> 0) Then
    var_77 = (String(260, 0))
    Call SHGetPathFromIDListA ()  '(API Sub call...)
    var_20 = (String(260, 0))
    
    If (    -5000 <> 0) Then
    var_num1 = InStr(1, String(260, 0), Chr$(0), 0) - 1
    
End If
Call CoTaskMemFree ()  '(API Sub call...)

'ERROR: Two many next close:
End If
End Function

Public Function sub_417A10()
var_num1 = Empty
var_86 = (vbNullString)
Call SendMessageA ()  '(API Sub call...)
var_98 = (vbNullString)
End Function

Public Function sub_417AD0()
var_num1 = Empty
On Error Goto handler_0
Call SHGetSpecialFolderLocation ()  '(API Sub call...)

If (arg_1 = 0) Then
    var_24 = (Space$(260))
    Call SHGetPathFromIDListA ()  '(API Sub call...)
    var_29 = (Space$(260))
    Call CoTaskMemFree ()  '(API Sub call...)
    var_num1 = InStr(1, Space$(260), vbNullChar, 0) - 1
    var_11 = (Left$(Space$(260), var_num1))
    Set var_77 = Err
    var_78 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
    Set var_79 = Err
    var_40 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_76 = ("GetShellDesktopLocation")
    var_62 = ("Error: ") & (CStr(var_78))
    var_99 = (var_62) & (". ")
    var_75 = (var_99) & (var_40)
    var_43 = MsgBox(var_75, 0, var_76)
    
End If
Resume handler_417DD0
End Function

Public Function sub_417E00()
Set var_100 = New Collection
Set var_20 = var_100

If (((Right(arg_1, 1)) = ("\"))) Then
    var_num1 = Len(arg_1) - 1
    
End If
var_82 = (Left(arg_1, var_num1)) & ("\*.*")
var_num3 = ((Dir(var_82, 55)) [#@#] (".")) Or ((Dir(var_82, 55)) [#@#] (".."))
var_101 = (Left(arg_1, var_num1)) & ("\")
var_75 = (var_101) & (Dir(var_82, 55))
Call var_20.[METHOD NOT VISIBLE IN FREE EDITION](var_75)
DoEvents
var_102 = var_20.[METHOD NOT VISIBLE IN FREE EDITION]()

Do While (1 <= WORD PTR [EBP+FFFFFF5C])
    [VAR_Unknown] = var_20.[METHOD NOT VISIBLE IN FREE EDITION](1)
    Call sub_417E00()
    SetAttr 0
    Kill 
    DoEvents
    var_num1 = 1 + 1
    
Loop

If (Len(Left(arg_1, var_num1)) > 2) Then
    RmDir Left(arg_1, var_num1)
End If
End Function

Public Function sub_418280()
var_num1 = Empty
Call GetCurrentProcess ()  '(API Sub call...)
Call OpenProcessToken ()  '(API Sub call...)
var_14 = ("SeShutdownPrivilege")
var_13 = (vbNullChar)
Call LookupPrivilegeValueA ()  '(API Sub call...)
Call AdjustTokenPrivileges ()  '(API Sub call...)
End Function

Public Function sub_418400()

If (arg_2 = -1) Then
    Call RtlAdjustPrivilege ()  '(API Sub call...)
    Call NtShutdownSystem ()  '(API Sub call...)
    
End If
End Function

Public Function sub_4184A0()
var_num1 = Empty

If (arg_2 = -1) Then
    Call RtlAdjustPrivilege ()  '(API Sub call...)
    Call NtShutdownSystem ()  '(API Sub call...)
    
End If
End Function

