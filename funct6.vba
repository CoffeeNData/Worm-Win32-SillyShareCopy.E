Public Function funct6() '403B6C
  'Data Table: 401838
  Dim var_114 As Variant
  loc_403ACB: For id = 67 To 90: var_A4 = id 'Variant. Repeats (90-67+1= 24 ) times
                'Calls the DLL 2 times
  loc_403AD1:   Thumbs   .db.address_80000256
  loc_403AE1:   Thumbs   .db.address_80000260

  loc_403B00:   If (var_114 > 0) Then ' var_114 is not set
  loc_403B0B:     Thumbs   .db.address_80000260
  loc_403B25:     var_134 = funct7(var_104) & ":" & "\" 'Variant
  loc_403B36:     var_104 = funct3(var_134)
  loc_403B44:     var_104 = funct8(var_134)
  loc_403B52:     var_104 = funct11(var_134)
  loc_403B5A:   End If

  loc_403B5D: Next id 'Variant
  loc_403B63: funct6 = ' Dont return (corrupt)
End Function