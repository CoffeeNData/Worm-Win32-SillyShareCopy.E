' Translate registry root key to a matching ID number
Public Sub Proc_1_15_4037C8(reg_key) '4037C8
  'Data Table: 4013C0
  Dim regkey_id As Long

  ' Note: for correcting these values, I have calculated 
  ' the offset with the max DWORD range and added 1
  loc_40372B: reg_key2 = reg_key
  loc_403736: If (reg_key2 = "HKEY_CLASSES_ROOT") Then
  loc_40373E:   regkey_id = 0
  loc_403744: Else
  loc_40374C:   If (reg_key2 = "HKEY_CURRENT_USER") Then
  loc_403754:     regkey_id = 1
  loc_40375A:   Else
  loc_403762:     If (reg_key2 = "HKEY_LOCAL_MACHINE") Then
  loc_40376A:       regkey_id = 2
  loc_403770:     Else
  loc_403778:       If (reg_key2 = "HKEY_USERS") Then
  loc_403780:         regkey_id = 3
  loc_403786:       Else
  loc_40378E:         If (reg_key2 = "HKEY_PERFORMANCE_DATA") Then
  loc_403796:           regkey_id = 4
  loc_40379C:         Else
  loc_4037A4:           If (reg_key2 = "HKEY_CURRENT_CONFIG") Then
  loc_4037AC:             regkey_id = 5
  loc_4037B2:           Else
  loc_4037BA:             If (reg_key2 = "HKEY_DYN_DATA") Then
  loc_4037C2:               regkey_id = 6
  loc_4037C5:             End If
  loc_4037C5:           End If
  loc_4037C5:         End If
  loc_4037C5:       End If
  loc_4037C5:     End If
  loc_4037C5:   End If
  loc_4037C5: End If
  loc_4037C5: Exit Sub
End Sub