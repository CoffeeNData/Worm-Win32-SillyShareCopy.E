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