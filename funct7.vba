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
  
  loc_403EB6: var_94 = a 'Variant. var_94 = a = drive_type = drive.drivetype
  loc_403EBA: ' Referenced from: 403DEA
  loc_403EBA: funct7 = drive ' This will be overwritten in the next instruction
  loc_403EC0: funct7 = "scripting.filesystemobject" ' Return "scripting.filesystemobject"
End Function