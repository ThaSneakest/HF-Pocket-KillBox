Public Function sub_442890()
On Error Goto handler_0
var_10 = (arg_2)
Call RegCreateKeyExA ()  '(API Sub call...)
var_73 = (arg_2)

If (-4980 = 0) Then
    Call RegCloseKey ()  '(API Sub call...)
    Set var_12 = Err
    var_52 = var_12.[PROPERTY NOT VISIBLE IN FREE EDITION]
    Set var_40 = Err
    var_11 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_13 = ("RegistryCreateNewKey")
    var_261 = ("Error: ") & (CStr(var_52))
    var_63 = (var_261) & (". ")
    var_260 = (var_63) & (var_11)
    var_99 = MsgBox(var_260, 0, var_13)
    
End If
Resume handler_442B0E
End Function

Public Function sub_442B30()
On Error Goto handler_0
var_10 = (arg_2)
Call RegOpenKeyExA ()  '(API Sub call...)
var_73 = (arg_2)
var_10 = (arg_3)
Call RegDeleteValueA ()  '(API Sub call...)
var_262 = (arg_3)
Set var_12 = Err
var_52 = var_12.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_40 = Err
var_11 = var_40.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_13 = ("RegistryDeleteValue")
var_25 = ("Error: ") & (CStr(var_52))
var_62 = (var_25) & (". ")
var_99 = (var_62) & (var_11)
var_42 = MsgBox(var_99, 0, var_13)
Resume handler_442DCF
End Function

Public Function sub_442DF0()
On Error Goto handler_0
var_79 = (var_204)
var_14 = (arg_3)
Call RegOpenKeyExA ()  '(API Sub call...)
var_262 = (arg_3)
var_14 = (arg_4)
Call RegQueryValueExA ()  '(API Sub call...)
var_284 = (arg_4)
var_num1 = 0 - 2
var_14 = (arg_4)
Call RegQueryValueExA ()  '(API Sub call...)
var_284 = (arg_4)
var_num1 = 0 - 1
Dim var_24() As Byte
ReDim var_24(0 To -1)

If (-(LBound(var_24)) >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    Err.Raise 9
    
End If
var_num3 = @[(var_24[((-(LBound(var_24))~))]]
var_14 = (0)
Call RegQueryValueExA ()  '(API Sub call...)
var_15 = (0)
var_79 = (var_24)
Call RegQueryValueExA ()  '(API Sub call...)
var_15 = (vbNullString)
var_12 = (vbNullString)
var_num1 = InStr(1, vbNullString, vbNullChar, 0) - 1
var_79 = (var_204)
Call RegCloseKey ()  '(API Sub call...)
var_29 = (var_79)
Set var_23 = Err
var_124 = var_23.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_4 = Err
var_76 = var_4.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_127 = ("RegistryGetKeyValue")
var_285 = ("Error: ") & (CStr(var_124))
var_33 = (var_285) & (". ")
var_286 = (var_33) & (var_76)
var_287 = MsgBox(var_286, 0, var_127)
Resume handler_443438
End Function

Public Function sub_443490()
On Error Goto handler_0
var_12 = (arg_2)
Call RegCreateKeyExA ()  '(API Sub call...)
var_73 = (arg_2)
var_num1 = arg_5 - 2
var_34 = (arg_4)
var_12 = (arg_3)
Call RegSetValueExA ()  '(API Sub call...)
var_262 = (arg_3)
Call RegCloseKey ()  '(API Sub call...)
var_34 = (arg_4)

If (-248 - 20 = 1) Then
    
    If (    -(0) >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
var_num3 = 0 + -(0)
var_num1 = UBound(-248 - 20, 1) + 1
var_12 = (arg_3)
Call RegSetValueExA ()  '(API Sub call...)
var_262 = (arg_3)
Call RegCloseKey ()  '(API Sub call...)
var_52 = (arg_4)
var_40 = (#NOT SUPPORTED#)
var_12 = (arg_3)
Call RegSetValueExA ()  '(API Sub call...)
var_262 = (arg_3)
var_18 = (#NOT SUPPORTED#)
Call RegCloseKey ()  '(API Sub call...)
Set var_79 = Err
var_204 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_16 = Err
var_27 = var_16.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_83 = ("RegistrySetKeyValue")
var_30 = ("Error: ") & (CStr(var_204))
var_31 = (var_30) & (". ")
var_32 = (var_31) & (var_27)
var_58 = MsgBox(var_32, 0, var_83)
Resume handler_443981
End Function

