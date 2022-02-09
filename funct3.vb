Public Function funct3(path) '404DDC
  'Data Table: 401838
  Dim var_314 As Variant
  Dim wildard_path As String
  Dim var_480 As Long

  loc_404C86: On Error Resume Next ' Ignore errors

  loc_404C90: backslash = "\" 'Variant
  loc_404C96: ' Referenced from: 404DD1
  loc_404C98: Thumbs   .db.address_80000256
  loc_404CAA: Thumbs   .db.address_8000026B

  ' This portion of code needs further investigation
  loc_404CBA: If CBool(var_314 <> backslash) Then ' If var_314 NOT backslash
  loc_404CCC:   path = path & backslash
  loc_404CCF: End If

  loc_404CEC: wildard_path = CStr(path & "*") ' Set path var with path wildcard, presumably to select multiple items
  
            'HANDLE FindFirstFileA(                     // Note: Using C++ function prototype
            '  [in]  LPCSTR             lpFileName,     // Path to the folder to searh on. If wildcard, perform a full search on path.
            '  [out] LPWIN32_FIND_DATAA lpFindFileData  // Pointer to the struct/array with the wanted characteristics
            ');
            '
            'typedef struct _WIN32_FIND_DATAA {         // Description missing due to already clear names
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

  ' file_characteristics MUST be an array with the desired file characteristics
  loc_404D10: file_handle = CVar(FindFirstFile(wildard_path, Record Of file_characteristics)) 'Variant
  loc_404D3D: var_314 = funct4(var_2B8, path, file_characteristics) ' var_2B8 hasnt been initialized yet
  loc_404D48: var_2B8 = wildard_path
  loc_404D51: ' Referenced from: 404DB7
  loc_404D59: var_5E0 = Record Of file_characteristics 'Copy battery of vars to single variable
  loc_404D69: var_480 = FindNextFile(CLng(file_handle), var_5E0)
  loc_404D7F: If (var_480 <> 0) Then
  loc_404DA1:   var_314 = funct4(var_2B8, path, file_characteristics)
  loc_404DAC:   var_2B8 = wildard_path
  loc_404DB7:   GoTo loc_404D51
  loc_404DBA: End If
  loc_404DC1: FindClose(CLng(file_handle))
  loc_404DC9: funct3 = var_5E0
  loc_404DD1: GoTo loc_404C96
  loc_404DD6: funct3 = var_480
End Function