Public Function sub_41BC60()
var_12 = InStr(1, arg_1, Chr(0), 0)

If (((InStr(1, arg_1, Chr(0), 0)) > (0))) Then
    var_12 = InStr(1, arg_1, Chr(0), 0)
    
End If
var_86 = (Left(arg_1, CLng(#NOT SUPPORTED#)))
End Function

Public Function sub_41BE00()
var_num1 = Empty

If (((Right(arg_2, 1)) <> ("\"))) Then
    var_257 = (arg_2) & ("\")
    
End If
Dim var_8() As String
ReDim var_8(0 To 0)
var_59 = (var_257) & ("*")
var_88 = (var_59)
Call FindFirstFileA ()  '(API Sub call...)

If (-5024 <> -1) Then
    Call sub_41BC60()
    LSet  = -908
    var_num2 = (() [#@#] ("..")) Or (() [#@#] ("."))
    var_82 = (var_257) & ()
    var_88 = (var_82)
    Call GetFileAttributesA ()  '(API Sub call...)
    var_num8 = (-5040) * 16 And 1
    var_num8 = 0 - LBound(var_8)
    
    If (    var_num8 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num3 = @[(var_8[((~))]]
var_62 = (-5036)
var_num4 = arg_5 + 1
var_num1 = 0 + 1
ReDim Preserve var_8(0 To 0)
Call FindNextFileA ()  '(API Sub call...)
Call FindClose ()  '(API Sub call...)

'ERROR: Two many next close:
End If
var_262 = (var_257) & (arg_3)
var_88 = (var_262)
Call FindFirstFileA ()  '(API Sub call...)

If (-5076 <> -1) Then
    Call sub_41BC60()
    LSet  = 
    var_num8 = (() [#@#] ("..")) Or (() [#@#] ("."))
    var_24 = (#NOT SUPPORTED#)
    var_num4 = arg_4 + 1
    
    If (    ((vbNullString) = ("TmpOptFiles"))) Then
    Dim var_269() As String
ReDim Preserve var_269(-5124 To 0)
    var_num8 = 0 - LBound(var_269)
    
    If (    var_num8 >= (UBound(var_269) - LBound(var_269))) Then
    Err.Raise 9
End If
Err.Raise 9
var_82 = (var_257) & ()
var_num3 = @[(var_269[((var_269~))]]
var_270 = (var_82)
var_num3 = 0 + 1

'ERROR: Two many next close:
End If

If (((vbNullString) = ("KillBox"))) Then
    Dim var_119 As New FrmKillBox
    Set var_64 = var_119
    var_114 = (var_257) & ()
    
    If (    -5168) Then
    
End If
Set var_119 = New FrmKillBox
Set var_271 = var_119
var_114 = (var_257) & ()

If (-5176) Then
    
End If
Set var_271 = Nothing
'ERROR: Two many next close:
End If
DoEvents
Call FindNextFileA ()  '(API Sub call...)
Call FindClose ()  '(API Sub call...)

'ERROR: Two many next close:
End If
var_num1 = var_num1 - 1
var_num8 = Empty

Do While (-5076 <= DWORD PTR [EBP+FFFFF80C])
    var_num2 = -5076 - LBound(var_8)
    
    If (    var_num2 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_15 = (var_257) & (vbNullString)
var_182 = (var_15) & ("\")
Call sub_41BE00()
var_24 = (#NOT SUPPORTED#)
var_num1 = 1 + -5076

'ERROR: Two many next close:
Loop
Call FindClose ()  '(API Sub call...)
End Function

Public Function sub_41C8F0()
On Error Goto handler_0
var_16 = arg_2.hwnd()
Call SendMessageA ()  '(API Sub call...)
var_num1 = Empty
Set var_12 = Err
var_52 = var_12.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_40 = Err
var_11 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_13 = ("IsComboBoxDropped")
var_99 = ("Error: ") & (CStr(var_52))
var_75 = (var_99) & (". ")
var_42 = (var_75) & (var_11)
var_44 = MsgBox(var_42, 0, var_13)
Resume handler_41CB5A
End Function

