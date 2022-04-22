Public Sub Proc_1_7_40529C(res_arg, second_arg)
  'Data Table: 4013C0
  Dim var_CC As Variant
  Dim var_B4 As Variant

  ' Need to reverse/deobfuscate the following:
  ' [] Proc_1_14_404324
  ' [] Proc_1_16_403998
  ' [] ThumbsDLL.rtcSpaceVar
  ' [] ThumbsDLL.rtcTrimVar
  ' [] ThumbsDLL.rtcLeftCharVar
  ' [] ThumbsDLL.rtcMsgBox

  loc_4050B7: res_arg_cpy = res_arg
  loc_4050C5: Me(20) = 0
  loc_4050CD: Me(16) = vbNullString
  loc_4050DA: Proc_1_14_404324(res_arg_cpy)

  loc_4050E6: If CBool(Me(4)) Then
  loc_40511B:   Me(8) = RegOpenKeyEx(Me(4), res_arg_cpy, 0, &H20019, Me(0))
  loc_40512E:   If (Me(8) = 0) Then
  loc_405139:     ThumbsDLL.rtcSpaceVar
  loc_405142:     Me(16) = CStr(var_B4)
  loc_405151:     Me(20) = Len(Me(16))
  loc_4051A1:     Me(8) = RegQueryValueEx(Me(0), second_arg, 0, 1, Me(16), Me(20), var_B4)
  loc_4051B8:     If (Me(8) = 0) Then
  loc_4051CC:       Me(8) = RegCloseKey(Me(0))
  loc_4051D6:       var_CC = Me(16)
  loc_4051DE:       ThumbsDLL.rtcTrimVar
  loc_4051E7:       Me(16) = CStr(var_B4)
  loc_405200:       var_CC = Me(16)
  loc_405208:       ThumbsDLL.rtcLeftCharVar
  loc_405210:       var_94 = var_B4 'Variant
  loc_405217:     Else
  loc_405217:       var_CC = "Error"
  loc_40521C:       var_94 = var_CC 'Variant
  loc_405228:       If (Me(32) = &HFF) Then
  loc_405243:         var_B4 = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C, var_B4, var_CC, (Me(20) - 1))) 'String
  loc_405246:         ThumbsDLL.rtcMsgBox
  loc_405256:       End If
  loc_405256:     End If
  loc_405259:   Else
  loc_40525E:     var_94 = "Error" 'Variant
  loc_40526A:     If (Me(32) = &HFF) Then
  loc_405285:       var_B4 = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C, var_B4, var_B4)) 'String
  loc_405288:       ThumbsDLL.rtcMsgBox
  loc_405298:     End If
  loc_405298:   End If
  loc_405298: End If
  loc_405298: Result = res_arg: Exit Sub
End Sub
