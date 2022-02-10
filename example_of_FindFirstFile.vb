' List all files below the directory that
' match the pattern.
Private Sub ListFiles(ByVal start_dir As String, ByVal _
    pattern As String, ByVal lst As ListBox)
Const MAXDWORD = 2 ^ 32

Dim dir_names() As String
Dim num_dirs As Integer
Dim i As Integer
Dim fname As String
Dim attr As Integer
Dim search_handle As Long
Dim file_data As WIN32_FIND_DATA
Dim file_size As Double

    ' Get the matching files in this directory.

    ' Get the first file.
    search_handle = FindFirstFile( _
        start_dir & pattern, file_data)
    If search_handle <> INVALID_HANDLE_VALUE Then
        ' Get the rest of the files.
        Do
            fname = file_data.cFileName
            fname = Left$(fname, InStr(fname, Chr$(0)) - 1)
            file_size = (file_data.nFileSizeHigh * _
                MAXDWORD) + file_data.nFileSizeLow
            If file_size > 0 Then
                lst.AddItem start_dir & fname & " (" & _
                    Format$(file_size) & ")"
                total_size = total_size + file_size
            Else
                lst.AddItem start_dir & fname
            End If

            ' Get the next file.
            If FindNextFile(search_handle, file_data) = 0 _
                Then Exit Do
        Loop
        
        ' Close the file search hanlde.
        FindClose search_handle
    End If

    ' Get the list of subdirectories.
    search_handle = FindFirstFile( _
        start_dir & "*.*", file_data)
    If search_handle <> INVALID_HANDLE_VALUE Then
        ' Get the rest of the files.
        Do
            If file_data.dwFileAttributes And DDL_DIRECTORY _
                Then
                fname = file_data.cFileName
                fname = Left$(fname, InStr(fname, Chr$(0)) _
                    - 1)
                If fname <> "." And fname <> ".." Then
                    num_dirs = num_dirs + 1
                    ReDim Preserve dir_names(1 To num_dirs)
                    dir_names(num_dirs) = fname
                End If
            End If
            
            ' Get the next file.
            If FindNextFile(search_handle, file_data) = 0 _
                Then Exit Do
        Loop

        ' Close the file search handle.
        FindClose search_handle
    End If
    
    ' Search the subdirectories.
    For i = 1 To num_dirs
        ListFiles start_dir & dir_names(i) & "\", pattern, _
            lst
    Next i
End Sub