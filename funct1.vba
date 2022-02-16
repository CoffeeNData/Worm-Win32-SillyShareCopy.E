' Gets the startup folder path using the registry
Public Function funct1(a) '40389C
  'Data Table: 401838
  ' Variable declarations
  Dim var_E4 As Variant
  loc_403804: option = a 'Variant

  loc_403813: If (option = 0) Then
  loc_40381F:   Proc_1_7_40529C(startup, "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders") ' startup is not set
  'Calls the DLL 2 times
  loc_40382A:   Thumbs   .db.address_80000208
  loc_403835:   Thumbs   .db.address_80000210 
  loc_40383D:   a = var_E4 ' var_E4 is not set

  loc_40384A: Else
  loc_403855:   If (option = 1) Then
  loc_40385D:     startup = "windir"
                  'Calls the DLL, maybe with parameter startup
  loc_403866:     Thumbs   .db.address_8000029A

    ' WARNING: Varible definition overlooked
      'loc_403816: LitStr "Startup"
      'loc_403819: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
      'loc_40381C: FLdRfVar var_C4 ; var_C4 is startup_path or not?
  loc_403880:     a = startup_path & "\" & "Thumbs   .db" ' startup_path is not set
  loc_40388C:   End If
  loc_40388C: End If

  loc_403892: unsused_var = a 'Variant
  loc_403896: funct1 = startup_path ' Return the startup path
End Function