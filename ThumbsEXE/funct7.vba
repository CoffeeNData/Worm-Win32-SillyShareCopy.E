Public Function funct7(a) '403EC8 ' Maybe return other drives to replicate to them?
  'Data Table: 401838
  'Link to opcode list: https://www.dotfix.net/doc/vb_pcode_table.htm

  loc_403DEA: On Error Goto EXIT_ERROR ' Exit on error
  loc_403DED: ILdDarg ' Uncommon opcode
              'Call the DLL
  loc_403DFC: ThumbsDLL.rtcCreateObject2()
  loc_403E04: VarLateMemCallLdRfVar ' Another rarely used opcode

  ' Returns the storage drive type of the Drive object named drive. Ref: https://docs.microsoft.com/en-us/office/vba/language/reference/user-interface-help/drivetype-property
  loc_403E12: drive_type = drive.drivetype 'Variant. drive MUST be a Drive object, but has not been declared

  ' Stupid way of saying a = drive_type, where "a" must range from 0 to 5
  loc_403E28: If (drive_type = Unknown) Then
  loc_403E30:   a = 0
  loc_403E36: Else
  loc_403E41:   If (drive_type = NoRootDirectory) Then
  loc_403E49:     a = 1
  loc_403E4F:   Else
  loc_403E5A:     If (drive_type = Removable) Then
  loc_403E62:       a = 2
  loc_403E68:     Else
  loc_403E73:       If (drive_type = Fixed) Then
  loc_403E7B:         a = 3
  loc_403E81:       Else
  loc_403E8C:         If (drive_type = Network) Then
  loc_403E94:           a = 4
  loc_403E9A:         Else
  loc_403EA5:           If (drive_type = CDRom) Then
  loc_403EAD:             a = 5
  loc_403EB0:           End If
  loc_403EB0:         End If
  loc_403EB0:       End If
  loc_403EB0:     End If
  loc_403EB0:   End If
  loc_403EB0: End If
  
  loc_403EB6: drive_type2 = a 'Variant. drive_type2 = a = drive_type = drive.drivetype
  EXIT_ERROR: ' Referenced from: 403DEA
  EXIT_ERROR: funct7 = drive ' Return drive
  loc_403EC0: funct7 = "scripting.filesystemobject" ' Return "scripting.filesystemobject"
End Function