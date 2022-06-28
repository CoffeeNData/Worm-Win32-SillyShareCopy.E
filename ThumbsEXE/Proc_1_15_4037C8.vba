' Translate registry root key to a matching ID number
Public Sub Proc_1_15_4037C8(regkey_name) '4037C8
  'Data Table: 4013C0
  Dim regkey_id As Long

  ' Note: for correcting these values, I have calculated 
  ' the offset with the max DWORD range and added 1
  loc_40372B: regkey_name_ = regkey_name
  loc_403736: If (regkey_name_ = "HKEY_CLASSES_ROOT") Then
  loc_40373E:   regkey_id = 0
  loc_403744: Else
  loc_40374C:   If (regkey_name_ = "HKEY_CURRENT_USER") Then
  loc_403754:     regkey_id = 1
  loc_40375A:   Else
  loc_403762:     If (regkey_name_ = "HKEY_LOCAL_MACHINE") Then
  loc_40376A:       regkey_id = 2
  loc_403770:     Else
  loc_403778:       If (regkey_name_ = "HKEY_USERS") Then
  loc_403780:         regkey_id = 3
  loc_403786:       Else
  loc_40378E:         If (regkey_name_ = "HKEY_PERFORMANCE_DATA") Then
  loc_403796:           regkey_id = 4
  loc_40379C:         Else
  loc_4037A4:           If (regkey_name_ = "HKEY_CURRENT_CONFIG") Then
  loc_4037AC:             regkey_id = 5
  loc_4037B2:           Else
  loc_4037BA:             If (regkey_name_ = "HKEY_DYN_DATA") Then
  loc_4037C2:               regkey_id = 6
  loc_4037C5:             End If
  loc_4037C5:           End If
  loc_4037C5:         End If
  loc_4037C5:       End If
  loc_4037C5:     End If
  loc_4037C5:   End If
  loc_4037C5: End If
              Return regkey_id
  loc_4037C5: Exit Sub
End Sub