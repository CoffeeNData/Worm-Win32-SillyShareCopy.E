Public Sub Proc_1_14_404324(res_store, optional_arg) '404324
  'Data Table: 4013C0
  Dim res_store_cpy As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim var_C4 As Variant
  Dim optional_arg As Long

  loc_4041EE: Me(8) = InStr(1, res_store, "\", 0)
  loc_4041FB: res_store_cpy = res_store
  loc_404203: ThumbsDLL.rtcLeftCharVar

  loc_40420B: var_B4 = "HKEY_"
  loc_40421D: var_D4 = res_store
  loc_404225: ThumbsDLL.rtcRightCharVar

  loc_404244: If CBool(var_E4 Or (var_E4 = "\")) Then
  loc_404255:   res_store_cpy = "Incorrect Format:"
  loc_404262:   ThumbsDLL.rtcVarBstrFromAnsi
  loc_40426A:   var_C4 = (var_A4 + var_A4)
  loc_404276:   ThumbsDLL.rtcVarBstrFromAnsi
  loc_404288:   var_114 = ((var_E4 + var_E4) + CVar(res_store))
  loc_40428C:   ThumbsDLL.rtcMsgBox
  loc_4042A4:   Exit Sub
  loc_4042A8: Else
  loc_4042B3:   If (Me(8) = 0) Then
  loc_4042BE:     optional_arg = Proc_1_15_4037C8(res_store, var_114, &HA, var_C4, &HA, res_store_cpy, 0, var_124)
  loc_4042C4:     res_store = vbNullString
  loc_4042CB:   Else
  loc_4042E1:     ThumbsDLL.rtcLeftCharVar
  loc_4042F3:     optional_arg = Proc_1_15_4037C8(CStr(var_A4), var_A4, res_store, (Me(8) - 1), optional_arg, var_134)
  loc_404309:     res_store_cpy = res_store
  loc_404311:     ThumbsDLL.rtcRightCharVar
  loc_40431A:     res_store = CStr(var_A4)
  loc_404321:   End If
  loc_404321: End If
  loc_404321: Exit Sub
End Sub
