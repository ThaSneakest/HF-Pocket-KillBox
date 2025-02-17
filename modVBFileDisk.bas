Public Function sub_419DB0()

If (((arg_1) <> (vbNullString))) Then
    On Error Resume Next
    On Error Goto handler_0
    Set var_40 = Err
    var_41 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]
    
    If (    0 < 0) Then
    
End If
var_num4 = Not (var_41) And CInt(Len(Dir(arg_1, 0))) > 0

'ERROR: Two many next close:
End If
Set var_40 = Err
var_41 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If
Set var_27 = Err
var_24 = var_27.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If
var_14 = ("FileExists")
var_62 = ("Error: ") & (CStr(var_41))
var_99 = (var_62) & (". ")
var_75 = (var_99) & (var_24)
var_43 = MsgBox(var_75, 0, var_14)
Resume handler_419F32
End Function

Public Function sub_41A1A0()
On Error Goto handler_0

If (arg_4 <> 0) Then
    
End If

If (arg_2 <> 0) Then
    
End If

If (arg_3 <> 0) Then
    
End If

If (((Right$(arg_1, 1)) <> ("\"))) Then
    var_257 = (arg_1) & ("\")
    
End If

Do While (((Dir(var_257, 0)) <> (vbNullChar)))
    
    If (    ((Dir(var_257, 0)) <> (vbNullChar))) Then
    Dim var_258() As String
ReDim Preserve var_258(0 To 0)
    var_num8 = 0 - LBound(var_258)
    
    If (    var_num8 >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
End If
Err.Raise 9
var_num3 = @[(var_258[((~))]]
var_42 = (Dir(var_257, 0))
var_num2 = 0 + 1

'ERROR: Two many next close:
End If

'ERROR: Two many next close:
Loop
Set var_27 = Err
var_259 = var_27.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_77 = Err
var_12 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_3 = ("FilesToArray")
var_50 = ("Error: ") & (CStr(var_259))
var_69 = (var_50) & (". ")
var_51 = (var_69) & (var_12)
var_80 = MsgBox(var_51, 0, var_3)
Resume handler_41A541
End Function

Public Function sub_41A570()
On Error Resume Next
var_num1 = arg_1 And arg_2

If (var_num1 = DWORD PTR [ECX]) Then
    
End If
Set var_12 = Err
var_52 = var_12.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If
Set var_40 = Err
var_11 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If
var_13 = ("IsAttrSet")
var_260 = ("Error: ") & (CStr(var_52))
var_101 = (var_260) & (". ")
var_261 = (var_101) & (var_11)
var_25 = MsgBox(var_261, 0, var_13)
Resume handler_41A5FF
End Function

Public Function sub_41A860()
On Error Goto handler_0
var_18 = (arg_1)

If (((Mid$(arg_1, 2, var_7)) = (":"))) Then
    
End If

If (CInt(Len(Mid$(arg_1, 3))) >= 1) Then
    
    If (    ((Mid$(Mid$(arg_1, 3), CInt(Len(Mid$(arg_1, 3))), 1)) = ("."))) Then
    var_num3 = Len(Mid$(arg_1, 3)) - CInt(Len(Mid$(arg_1, 3)))
    
    If (    CInt(var_num3) >= 1) Then
    var_num1 = CInt(var_num3) + 1
    
End If
var_num3 = CInt(Len(Mid$(arg_1, 3))) - 1

'ERROR: Two many next close:
End If

If (((Mid$(Mid$(arg_1, 3), CInt(Len(Mid$(arg_1, 3))), 1)) = ("\"))) Then
    var_num3 = Len(Left$(Mid$(arg_1, 3), var_num3)) - CInt(Len(Mid$(arg_1, 3)))
    
    Do While (    CInt(var_num3) < 1)
    var_num1 = ((Mid$(Mid$(arg_1, 3), CInt(Len(Mid$(arg_1, 3))), 1)) [##] ("\")) Or -1
    var_num1 = var_num1 + CInt(Len(Mid$(arg_1, 3)))
    
Loop
var_num7 = CInt(Len(Mid$(arg_1, 3))) + 1
var_num1 = -5044 Or -1

'ERROR: Two many next close:
End If
var_262 = (Left$(Left$(Mid$(arg_1, 3), var_num3), CInt(Len(Mid$(arg_1, 3)))))
Set var_79 = Err
var_53 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_num7 = Empty
Set var_16 = Err
var_27 = var_16.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_83 = ("ParsePaths")
var_263 = ("Error: ") & (CStr(var_53))
var_80 = (var_263) & (". ")
var_69 = (var_80) & (var_27)
var_264 = MsgBox(var_69, CInt(Len(Mid$(arg_1, 3))), var_83)
Resume unk_-5000
End Function

Public Function sub_41AD10()
On Error Goto handler_0

If (arg_3 <> 0) Then
    
End If

If (arg_4 <> 0) Then
    var_num4 = var_8 + 2
    
End If

If (arg_5 <> 0) Then
    var_num3 = var_num4 + 4
    
End If

If (((Right$(arg_1, 1)) <> ("\"))) Then
    var_257 = (arg_1) & ("\")
    
End If

Do While (((Dir(var_257, var_num3)) <> (vbNullChar)))
    var_82 = (var_257) & (Dir(var_257, var_num3))
    Call sub_41A570()
    Call sub_41A570()
    var_82 = (var_257) & (Dir(var_257, var_num3))
    Call sub_41A570()
    var_82 = (var_257) & (Dir(var_257, var_num3))
    Call sub_41A570()
    var_num7 = Empty
    
    If (    ((Dir(var_257, var_num3)) [#$#] (".")) [#?#] ((Dir(var_257, var_num3)) [#$#] ("."))) Then
    var_num7 = Empty
End If
Dim var_73() As String
ReDim Preserve var_73(0 To 0)
var_num8 = 0 - LBound(var_73)

If (var_num8 >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
End If
Err.Raise 9
var_num3 = @[(var_73[((~))]]
var_45 = (Dir(var_257, var_num3))
var_num4 = 0 + 1

'ERROR: Two many next close:
Loop
Set var_77 = Err
var_78 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_79 = Err
var_40 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_76 = ("SubDirsToArray")
var_80 = ("Error: ") & (CStr(var_78))
var_70 = (var_80) & (". ")
var_51 = (var_70) & (var_40)
var_30 = MsgBox(var_51, 0, var_76)
Resume handler_41B1F1
End Function

Public Function sub_41B220()
var_10 = (arg_2)
var_27 = (arg_3)
On Error Resume Next
var_74 = (arg_2)
Call RegOpenKeyA ()  '(API Sub call...)
var_10 = (arg_2)
var_13 = (Space$(2048))
var_74 = (arg_3)
Call RegQueryValueExA ()  '(API Sub call...)
var_27 = (arg_3)
var_40 = (Space$(2048))
Set var_76 = Err
var_160 = var_76.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If
var_num4 = Empty
var_num4 = var_160 = 0 And -5000 = 0
var_num4 = Asc(Mid$(Space$(2048), 2, var_22)) * 256
var_num8 = Asc(Mid$(Space$(2048), 1, var_23)) + var_num4
var_num4 = Asc(Mid$(Space$(2048), 3, var_26)) * 65536
var_num8 = var_num8 + var_num4
var_46 = ("000")
var_12 = (vbNullChar)
var_num3 = var_8 + var_170

Do While (var_num3 <= WORD PTR [EBP+FFFFFEFC])
    var_263 = Mid(Format$((((16777216) * (Asc(Mid$(Space$(2048), 4, var_34)))) + (var_num8)), var_46, 1, 1), var_num3, var_23)
    
    If (    Len(Hex(Asc(var_263))) = 1) Then
    var_30 = ("0") & (Hex(Asc(var_263)))
    
End If
var_31 = (vbNullChar) & (var_30)

'ERROR: Two many next close:
Loop
var_40 = (var_31)
var_num1 = Len(Format$((((16777216) * (Asc(Mid$(Space$(2048), 4, var_34)))) + (var_num8)), var_46, 1, 1)) - 1
var_40 = ("Not Found")
Call RegCloseKey ()  '(API Sub call...)
var_num4 = var_267 And 4
End Function

Public Function sub_41B980()
var_8 = (arg_2)
var_40 = (arg_3)
var_24 = (arg_7)
On Error Resume Next
var_2 = (arg_2)
Call RegCreateKeyA ()  '(API Sub call...)
var_8 = (arg_2)

If (arg_4 = 4) Then
    var_2 = (arg_3)
    Call RegSetValueExA ()  '(API Sub call...)
    var_40 = (arg_3)
    
End If

If (arg_4 = 1) Then
    var_24 = (#NOT SUPPORTED#)
    
End If
var_7 = (var_24)
var_2 = (arg_3)
Call RegSetValueExA ()  '(API Sub call...)
var_40 = (arg_3)
var_77 = (var_24)
Call RegFlushKey ()  '(API Sub call...)
Call RegCloseKey ()  '(API Sub call...)
End Function

