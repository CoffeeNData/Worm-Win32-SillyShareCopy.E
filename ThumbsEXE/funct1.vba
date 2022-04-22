' Get the Windows folder path using the registry
' MTA stands for Manually Translated from (pcode) Assembly
Public Function funct1(option) '40389C

  ' This function has 2 options:
  ' 0 : Will exec Proc_1_7_40529C and return an empty string
  ' 1 : Will get the Windows folder path, but its not returned in any way
  ' This makes no sense because it should exec 1 first to get the windir path
  ' and then pass it to the functions referenced in option 1.
  ' Must look further.

  ' Functions yet to be reversed/deobfuscated:
  ' [] Proc_1_7_40529C
  ' [] rtcTrimVar
  ' [] rtcUpperCaseVar
  ' [] rtcEnvironVar

  'Data Table: 401838
  'Variable declarations
  Dim option2 As Variant
  Dim commonArg1 As Variant
  Dim persist_path As Variant
  Dim empty_str As String
  Dim backslash As String
  Dim thumbs_db As String

  loc_403804: option2 = option 'Variant

  loc_403813: If (option2 = 0) Then
  loc_40381F:   Proc_1_7_40529C(
                    persist_path,
                    "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
                )

  ' Process persist_path so it can be treated as a path, and store the final result in folderPath
  USE_ENV_VAR:  ThumbsDLL.rtcTrimVar(commonArg1, persist_path) ' Trim persist_path and store it in commonArg1
  loc_403835:   ThumbsDLL.rtcUpperCaseVar(folderPath, commonArg1) ' Uppercase commonArg1 and store it in folderPath

  loc_40383D:   option = backslash

  ' If persist_path DOESNT have a value OR an argument IS supplied
  SET_STARTUP: Else
  loc_403855:   If (option2 = 1) Then
  loc_40385D:     persist_path = "windir" ' %windir% --> "C:\Windows\"

                  ' Translate windir to an environ var and store it into commonArg1. Could be used in USE_ENV_VAR
  GET_ENV_VAR:    ThumbsDLL.rtcEnvironVar(commonArg1, persist_path) ' Get the %windir% path? ("C:\Windows\")

                  empty_str = ""
                  backslash = "\"
                  thumbs_db = "Thumbs   .db"
  loc_403880:     option = empty_str & backslash & thumbs_db ' option = "\Thumbs   .db"
  loc_40388C:   End If
  loc_40388C: End If

  loc_403896: funct1 = empty_str ' Returns an empty string
End Function