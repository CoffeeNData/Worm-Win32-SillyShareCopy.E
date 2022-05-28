Public Sub Proc_1_14_404324(res_store, optional_arg) '404324
  'Data Table: 4013C0
  Dim res_store_ As Variant
  Dim registry_prefix As Variant
  Dim res_store__ As Variant
  Dim var_114 As Variant
  Dim var_C4 As Variant
  Dim optional_arg As Long

  loc_4041EE: Me(8) = InStr(1, res_store, "\", 0)
  loc_4041FB: res_store_ = res_store
  loc_404203: ThumbsDLL.rtcLeftCharVar()
  loc_40420B: registry_prefix = "HKEY_"
  loc_40421D: res_store__ = res_store
  loc_404225: ThumbsDLL.rtcRightCharVar()

  loc_404244: If CBool(var_E4 Or (var_E4 = "\")) Then
  loc_404255:   res_store_ = "Incorrect Format:"
  loc_404262:   ThumbsDLL.rtcVarBstrFromAnsi(variant_bstr, &ORIGINAL_ANSI_STR) ' Encode to a basic string from ANSI encoding
  loc_40426A:   var_C4 = (variant_bstr + variant_bstr) ' Ducplicate the string?

  loc_404276:   ThumbsDLL.rtcVarBstrFromAnsi()
  loc_404288:   var_114 = ((var_E4 + var_E4) + CVar(res_store))
  loc_40428C:   ThumbsDLL.rtcMsgBox()
  loc_4042A4:   Exit Sub

  loc_4042A8: Else
  loc_4042B3:   If (Me(8) = 0) Then
  loc_4042BE:     optional_arg = Proc_1_15_4037C8(res_store, var_114, &ORIGINAL_ANSI_STR, var_C4, &ORIGINAL_ANSI_STR, res_store_, 0, var_124)
  loc_4042C4:     res_store = vbNullString

  loc_4042CB:   Else
  loc_4042E1:     ThumbsDLL.rtcLeftCharVar
  loc_4042F3:     optional_arg = Proc_1_15_4037C8(CStr(variant_bstr), variant_bstr, res_store, (Me(8) - 1), optional_arg, var_134)
  loc_404309:     res_store_ = res_store
  loc_404311:     ThumbsDLL.rtcRightCharVar
  loc_40431A:     res_store = CStr(variant_bstr)
  loc_404321:   End If
  loc_404321: End If
  loc_404321: Exit Sub
End Sub
