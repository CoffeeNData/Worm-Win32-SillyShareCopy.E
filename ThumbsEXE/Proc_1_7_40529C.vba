' Always will return the first arg no matter what. (This may indicate a non-returning function?)
' (Pseudo-code)
' function Proc_1_7_40529C(argv1, arg_14)
' {
'     (...); // Any operation before it
'     return argv1; // Returns the first given argument, no matter what happens in the function
' }
Public Sub Proc_1_7_40529C ' (argv1, arg_14)
  'Data Table: 4013C0
  Dim var_CC As Variant
  Dim var_B4 As Variant

  ' Me() -> Memory buffer for dynamic data storage?
  ' Me() is a buffer with a size of 32, being able to contain up to 8 different 4-byte variables such as pointers to parameters.
  ' All buffer accesses have been changed to a separate var name
  loc_4050B7: argv1_copy = argv1
  loc_4050C5: zero = 0 ' set zero to 0
  loc_4050CD: buf_16 = vbNullString
  loc_4050DA: Proc_1_14_404324(argv1_copy)

  loc_4050E6: If CBool(buf_4) Then
  loc_40511B:   buf_8 = RegOpenKeyEx(buf_4, argv1_copy, 0, &H20019, buf_0)

  loc_40512E:   If (buf_8 = 0) Then
  loc_405139:     ThumbsDLL.rtcSpaceVar
  loc_405142:     buf_16 = CStr(var_B4)
  loc_405151:     zero = Len(buf_16)
  loc_4051A1:     buf_8 = RegQueryValueEx(buf_0, arg_14, 0, 1, buf_16, zero, var_B4)

  loc_4051B8:     If (buf_8 = 0) Then
  loc_4051CC:       buf_8 = RegCloseKey(buf_0)
  loc_4051D6:       var_CC = buf_16
  loc_4051DE:       ThumbsDLL.rtcTrimVar
  loc_4051E7:       buf_16 = CStr(var_B4)
  loc_405200:       var_CC = buf_16
  loc_405208:       ThumbsDLL.rtcLeftCharVar
  loc_405210:       var_94 = var_B4 'Variant
  loc_405217:     Else
  loc_405217:       var_CC = "Error"
  loc_40521C:       var_94 = var_CC 'Variant
  loc_405228:       If (buf_32 = &HFF) Then
  loc_405243:         var_B4 = CVar(Proc_1_16_403998(buf_8, 0, var_DC, var_FC, var_11C, var_B4, var_CC, (zero - 1))) 'String
  loc_405246:         ThumbsDLL.rtcMsgBox
  loc_405256:       End If
  loc_405256:     End If
  loc_405259:   Else
  loc_40525E:     var_94 = "Error" 'Variant

  loc_40526A:     If (buf_32 = &HFF) Then
  loc_405285:       var_B4 = CVar(Proc_1_16_403998(buf_8, 0, var_DC, var_FC, var_11C, var_B4, var_B4)) 'String
  loc_405288:       ThumbsDLL.rtcMsgBox
  loc_405298:     End If

  loc_405298:   End If
  loc_405298: End If
  loc_405298: Result = argv1: Exit Sub ' Return argv1?
End Sub