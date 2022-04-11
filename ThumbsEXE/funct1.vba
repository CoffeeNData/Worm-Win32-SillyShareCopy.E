' Gets the commonArg2 folder path using the registry.
' MTA stands for Manually Translated from (pcode) Assembly
Public Function funct1(option) '40389C
  'Data Table: 401838
  ' Variable declarations
  Dim var_E4 As Variant ' Must check what value this should have
  Dim commonArg1 As Variant ' MTA
  Dim commonArg1 As Variant ' MTA

  ' If commonArg2 hasnt been given a value, jump to SET_STARTUP and set it to "windir"
  ' ------- Original P-Code assembly -------
  ' loc_40380B: LitVarI2 commonArg2, 0
  ' loc_403810: HardType
  ' loc_403811: EqVarBool
  ' loc_403813: BranchF loc_40384A
  ' ------------ MTA (pseudo code) ---------
  CHECK_EXISTS: If Not commonArg2 Then
                  GoTo SET_STARTUP
                End If
  ' ----------------------------------------

  loc_403804: option2 = option 'Variant

  loc_403813: If (option2 = 0) Then
  loc_40381F:   Proc_1_7_40529C(
                    commonArg2,
                    "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
                )

  'Calls the DLL 2 times
  loc_40382A:   ThumbsDLL.rtcTrimVar(commonArg1, commonArg2)
  loc_403835:   ThumbsDLL.rtcUpperCaseVar(folderPath, commonArg1)
  loc_40383D:   option = var_E4 ' var_E4 is not set

  SET_STARTUP: Else
  loc_403855:   If (option2 = 1) Then
  loc_40385D:     commonArg2 = "windir"
  loc_403866:     ThumbsDLL.rtcEnvironVar(commonArg1, commonArg2)

    ' WARNING: Varible definition overlooked - MANUAL ASSEMBLY REVIEW PENDING
      'loc_403816: LitStr "Startup"
      'loc_403819: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
      'loc_40381C: FLdRfVar var_C4 ; is var_C4 startup_path or not?
  loc_403880:     option = startup_path & "\" & "Thumbs   .db" ' startup_path is not set
  loc_40388C:   End If
  loc_40388C: End If

  loc_403892: unsused_var = option 'Variant
  loc_403896: funct1 = startup_path ' Return the commonArg2 path
End Function