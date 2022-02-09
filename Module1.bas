
Public Sub Proc_1_0_403388
  'Data Table: 4013C0
  loc_403382: Me(32) = 0
  loc_403387: Exit Sub
End Sub

Public Sub Proc_1_1_403448(arg_C) '403448
  'Data Table: 4013C0
  loc_403440: Me(32) = CBool(arg_C)
  loc_403445: Exit Sub
End Sub

Public Sub Proc_1_2_4044D4
  'Data Table: 4013C0
  Dim var_B4 As Long
  Dim var_C4 As Variant
  loc_40437B: var_98 = arg_10
  loc_404381: var_9C = arg_14
  loc_404384: On Error Goto loc_4044C9
  loc_40438B: var_94 = False 'Variant
  loc_404397: Proc_1_14_404324(var_98)
  loc_4043A3: If CBool(Me(4)) Then
  loc_4043D8:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20006, Me(0))
  loc_4043EB:   If (Me(8) = 0) Then
  loc_404423:     Me(8) = RegSetValueEx(Me(0), var_9C, 0, 4, arg_18, 4, StrConv(var_98, vbUnicode))
  loc_404437:     If Not((Me(8) = 0)) Then
  loc_404442:       If (Me(32) = &HFF) Then
  loc_40445D:         var_C4 = CVar(Proc_1_16_403998(Me(8), 0, var_D4, var_F4, var_114, StrConv(var_9C, vbUnicode))) 'String
  loc_404460:         Thumbs   .db.address_80000253
  loc_404470:       End If
  loc_404473:     Else
  loc_404476:       var_94 = True 'Variant
  loc_40447A:     End If
  loc_404484:     var_B4 = RegCloseKey(Me(0))
  loc_40448B:     Me(8) = var_B4
  loc_404493:   Else
  loc_40449B:     If (Me(32) = &HFF) Then
  loc_4044B6:       var_C4 = CVar(Proc_1_16_403998(Me(8), 0, var_D4, var_F4, var_114, var_B4)) 'String
  loc_4044B9:       Thumbs   .db.address_80000253
  loc_4044C9:     End If
  loc_4044C9:     ' Referenced from: 404384
  loc_4044C9:   End If
  loc_4044C9: End If
  loc_4044C9: Result = arg_10: Exit Sub
  loc_4044CD: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_3_404690
  'Data Table: 4013C0
  Dim var_FE As Variant
  Dim var_A4 As Long
  Dim var_CC As Variant
  loc_404527: var_98 = arg_10
  loc_40452D: var_9C = arg_14
  loc_404538: Proc_1_14_404324(var_98)
  loc_404544: Loop Until CBool(Me(4)) 'do at: 404489
  loc_40454D: var_FE = StrComp(, , StrComp(, , Me(4)))
  loc_404557: Next var_1 'Single
  loc_40455C: var_FE = 
  loc_40456B: BranchFVar 15615
  loc_404579: Me(8) = var_A4
  loc_404583: CExtInstUnk
  loc_40458C: If (var_A0 = StrConv(var_98, vbUnicode)) Then
  loc_4045CC:   Me(8) = RegQueryValueEx(Me(0), var_9C, 0, 4, Me(12), 4, var_9C)
  loc_4045DF:   If (Me(8) = 0) Then
  loc_4045F3:     Me(8) = RegCloseKey(Me(0))
  loc_404601:     var_94 = CVar(Me(12)) 'Variant
  loc_404608:   Else
  loc_40460D:     var_94 = "Error" 'Variant
  loc_404619:     If (Me(32) = &HFF) Then
  loc_404634:       var_CC = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C)) 'String
  loc_404637:       Thumbs   .db.address_80000253
  loc_404647:     End If
  loc_404647:   End If
  loc_40464A: Else
  loc_40464F:   var_94 = "Error" 'Variant
  loc_40465B:   If (Me(32) = &HFF) Then
  loc_404676:     var_CC = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C)) 'String
  loc_404679:     Thumbs   .db.address_80000253
  loc_404689:   End If
  loc_404689: End If
  loc_404689: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_4_405054
  'Data Table: 4013C0
  Dim var_B4 As Long
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_404E87: var_98 = arg_10
  loc_404E8D: var_9C = arg_14
  loc_404E94: var_94 = False 'Variant
  loc_404EA0: Proc_1_14_404324(var_98)
  loc_404EAC: If CBool(Me(4)) Then
  loc_404EE1:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20006, Me(0))
  loc_404EF4:   If (Me(8) = 0) Then
  loc_404EFB:     Me(24) = Len(arg_18)
  loc_404F0F:     ReDim arg_1
  loc_404F2A:     For var_104 = 1 To CVar(Me(24)): var_C4 = var_104 'Variant
  loc_404F30:       var_114 = 1
  loc_404F42:       var_B0 = Thumbs   .db.address_80000277
  loc_404F56:       Me(28)(CLng(var_C4)) = CByte(Thumbs   .db.address_80000204)
  loc_404F61:     Next var_104 'Variant
  loc_404FAA:     Me(8) = RegSetValueEx(Me(0), var_9C, 0, 3, Me(28)(1), Me(24), )
  loc_404FBE:     If Not((Me(8) = 0)) Then
  loc_404FC9:       If (Me(32) = &HFF) Then
  loc_404FE4:         var_114 = CVar(Proc_1_16_403998(Me(8), 0, var_128, var_138)) 'String
  loc_404FE7:         Thumbs   .db.address_80000253
  loc_404FF7:       End If
  loc_404FFA:     Else
  loc_404FFD:       var_94 = True 'Variant
  loc_405001:     End If
  loc_40500B:     var_B4 = RegCloseKey(Me(0))
  loc_405012:     Me(8) = var_B4
  loc_40501A:   Else
  loc_405022:     If (Me(32) = &HFF) Then
  loc_40503D:       var_114 = CVar(Proc_1_16_403998(Me(8), 0, var_128, var_138, var_148, var_B4)) 'String
  loc_405040:       Thumbs   .db.address_80000253
  loc_405050:     End If
  loc_405050:   End If
  loc_405050: End If
  loc_405050: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_5_405724
  'Data Table: 4013C0
  Dim var_A4 As Long
  Dim var_A8 As String
  Dim var_C0 As Variant
  loc_405537: var_98 = arg_10
  loc_40553D: var_9C = arg_14
  loc_405548: Proc_1_14_404324(var_98)
  loc_405554: If CBool(Me(4)) Then
  loc_405589:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20019, Me(0))
  loc_40559C:   If (Me(8) = 0) Then
  loc_4055A4:     Me(20) = 1
  loc_4055EC:     Me(8) = RegQueryValueEx(Me(0), var_9C, 0, 3, CStr(0), Me(20), StrConv(var_98, vbUnicode))
  loc_405602:     Thumbs   .db.address_8000020E
  loc_40560B:     Me(16) = CStr(var_C0)
  loc_405621:     var_A8 = Me(16)
  loc_40565F:     Me(8) = RegQueryValueEx(Me(0), var_9C, 0, 3, var_A8, Me(20), var_C0)
  loc_405676:     If (Me(8) = 0) Then
  loc_405683:       var_A4 = RegCloseKey(Me(0))
  loc_40568A:       Me(8) = var_A4
  loc_405697:       var_94 = CVar(Me(16)) 'Variant
  loc_40569E:     Else
  loc_4056A3:       var_94 = "Error" 'Variant
  loc_4056AF:       If (Me(32) = &HFF) Then
  loc_4056CA:         var_C0 = CVar(Proc_1_16_403998(Me(8), 0, var_E0, var_100, var_120, var_A4, StrConv(Me(16), vbUnicode), var_A8)) 'String
  loc_4056CD:         Thumbs   .db.address_80000253
  loc_4056DD:       End If
  loc_4056DD:     End If
  loc_4056E0:   Else
  loc_4056E5:     var_94 = "Error" 'Variant
  loc_4056F1:     If (Me(32) = &HFF) Then
  loc_40570C:       var_C0 = CVar(Proc_1_16_403998(Me(8), 0, var_E0, var_100, var_120, var_C0, StrConv(var_9C, vbUnicode))) 'String
  loc_40570F:       Thumbs   .db.address_80000253
  loc_40571F:     End If
  loc_40571F:   End If
  loc_40571F: End If
  loc_40571F: Result = arg_10: Exit Sub
End Sub

' DEOBFUSCATION PENDING
Public Sub AddRegKey ' Modifies the key given.
  'Data Table: 4013C0
  Dim var_B8 As Long
  Dim var_CC As Variant
  loc_4046E3: var_98 = arg_10
  loc_4046EF: var_A0 = arg_18
  loc_4046F2: On Error Goto loc_404849
  loc_4046F9: var_94 = False 'Variant
  loc_404705: Proc_1_14_404324(var_98)
  loc_404711: If CBool(Me(4)) Then
  loc_404746:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20006, Me(0))
  loc_404759:   If (Me(8) = 0) Then
  loc_404766:     var_BC = var_A0
  loc_40479F:     Me(8) = RegSetValueEx(Me(0), arg_14, 0, 1, var_BC, Len(var_A0), StrConv(var_98, vbUnicode))
  loc_4047B7:     If Not((Me(8) = 0)) Then
  loc_4047C2:       If (Me(32) = &HFF) Then
  loc_4047DD:         var_CC = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C, StrConv(var_A0, vbUnicode), var_BC)) 'String
  loc_4047E0:         Thumbs   .db.address_80000253
  loc_4047F0:       End If
  loc_4047F3:     Else
  loc_4047F6:       var_94 = True 'Variant
  loc_4047FA:     End If
  loc_404804:     var_B8 = RegCloseKey(Me(0))
  loc_40480B:     Me(8) = var_B8
  loc_404813:   Else
  loc_40481B:     If (Me(32) = &HFF) Then
  loc_404836:       var_CC = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C, var_B8, var_CC)) 'String
  loc_404839:       Thumbs   .db.address_80000253
  loc_404849:     End If
  loc_404849:     ' Referenced from: 4046F2
  loc_404849:   End If
  loc_404849: End If
  loc_404849: Result = arg_10: Exit Sub
  loc_40484D: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_7_40529C
  'Data Table: 4013C0
  Dim var_CC As Variant
  Dim var_B4 As Variant
  loc_4050B7: var_98 = arg_10
  loc_4050C5: Me(20) = 0
  loc_4050CD: Me(16) = vbNullString
  loc_4050DA: Proc_1_14_404324(var_98)
  loc_4050E6: If CBool(Me(4)) Then
  loc_40511B:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20019, Me(0))
  loc_40512E:   If (Me(8) = 0) Then
  loc_405139:     Thumbs   .db.address_8000020E
  loc_405142:     Me(16) = CStr(var_B4)
  loc_405151:     Me(20) = Len(Me(16))
  loc_4051A1:     Me(8) = RegQueryValueEx(Me(0), arg_14, 0, 1, Me(16), Me(20), var_B4)
  loc_4051B8:     If (Me(8) = 0) Then
  loc_4051CC:       Me(8) = RegCloseKey(Me(0))
  loc_4051D6:       var_CC = Me(16)
  loc_4051DE:       Thumbs   .db.address_80000208
  loc_4051E7:       Me(16) = CStr(var_B4)
  loc_405200:       var_CC = Me(16)
  loc_405208:       Thumbs   .db.address_80000269
  loc_405210:       var_94 = var_B4 'Variant
  loc_405217:     Else
  loc_405217:       var_CC = "Error"
  loc_40521C:       var_94 = var_CC 'Variant
  loc_405228:       If (Me(32) = &HFF) Then
  loc_405243:         var_B4 = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C, var_B4, var_CC, (Me(20) - 1))) 'String
  loc_405246:         Thumbs   .db.address_80000253
  loc_405256:       End If
  loc_405256:     End If
  loc_405259:   Else
  loc_40525E:     var_94 = "Error" 'Variant
  loc_40526A:     If (Me(32) = &HFF) Then
  loc_405285:       var_B4 = CVar(Proc_1_16_403998(Me(8), 0, var_DC, var_FC, var_11C, var_B4, var_B4)) 'String
  loc_405288:       Thumbs   .db.address_80000253
  loc_405298:     End If
  loc_405298:   End If
  loc_405298: End If
  loc_405298: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_8_4036EC
  'Data Table: 4013C0
  loc_40366B: var_98 = arg_10
  loc_403672: var_94 = False 'Variant
  loc_40367E: Proc_1_14_404324(var_98)
  loc_40368A: If CBool(Me(4)) Then
  loc_4036B5:   Me(8) = RegCreateKey(Me(4), var_98, Me(0))
  loc_4036C8:   If (Me(8) = 0) Then
  loc_4036DC:     Me(8) = RegCloseKey(Me(0))
  loc_4036E4:     var_94 = True 'Variant
  loc_4036E8:   End If
  loc_4036E8: End If
  loc_4036E8: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_9_403A70
  'Data Table: 4013C0
  Dim var_C0 As Variant
  loc_4039CF: var_98 = arg_10
  loc_4039D6: var_94 = False 'Variant
  loc_4039E2: Proc_1_14_404324(var_98)
  loc_4039EE: If CBool(Me(4)) Then
  loc_403A14:   Me(8) = RegDeleteKey(Me(4), var_98)
  loc_403A27:   If (Me(8) <> 0) Then
  loc_403A32:     If (Me(32) = &HFF) Then
  loc_403A4D:       var_C0 = CVar(Proc_1_16_403998(Me(8), 0, var_D0, var_F0, var_110)) 'String
  loc_403A50:       Thumbs   .db.address_80000253
  loc_403A60:     End If
  loc_403A63:   Else
  loc_403A66:     var_94 = True 'Variant
  loc_403A6A:   End If
  loc_403A6A: End If
  loc_403A6A: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_10_404014 ' Edits the registry?
  'Data Table: 4013C0
  Dim var_C8 As Variant
  loc_403F0F: var_98 = arg_10
  loc_403F15: var_9C = arg_14
  loc_403F18: On Error Goto loc_40400B ' On error -> exit sub
  loc_403F1F: var_94 = False 'Variant
  loc_403F2B: Proc_1_14_404324(var_98)
  loc_403F37: If CBool(Me(4)) Then
  loc_403F6A:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20006, var_B0) ' Accesses the registry
  loc_403F7D:   If (Me(8) = 0) Then
  loc_403FA1:     Me(8) = RegDeleteValue(var_B0, var_9C) ' Deletes the given
  loc_403FB4:     If (Me(8) <> 0) Then
  loc_403FBF:       If (Me(32) = &HFF) Then
  loc_403FDA:         var_C8 = CVar(Proc_1_16_403998(Me(8), 0, var_D8, var_F8, var_118, StrConv(var_9C, vbUnicode))) 'String
  loc_403FDD:         Thumbs   .db.address_80000253
  loc_403FED:       End If
  loc_403FF0:     Else
  loc_403FF3:       var_94 = True 'Variant
  loc_403FF7:     End If
  loc_404006:     Me(8) = RegCloseKey(var_B0)
  loc_40400B:     ' Referenced from: 403F18
  loc_40400B:   End If
  loc_40400B: End If
  loc_40400B: Result = arg_10: Exit Sub
  loc_40400F: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_11_4033C4
  'Data Table: 4013C0
  loc_4033BC: var_94 = False 'Variant
  loc_4033C0: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_12_403628
  'Data Table: 4013C0
  loc_4035AF: var_98 = arg_10
  loc_4035BA: Proc_1_14_404324(var_98)
  loc_4035C6: If CBool(Me(4)) Then
  loc_4035F9:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20019, var_9C)
  loc_40360C:   If (Me(8) = 0) Then
  loc_403612:     var_94 = True 'Variant
  loc_403619:   Else
  loc_40361D:     var_C4 = False 'Variant
  loc_403621:   End If
  loc_403621: End If
  loc_403621: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_13_403DA0
  'Data Table: 4013C0
  loc_403CCB: var_98 = arg_10
  loc_403CDC: Proc_1_14_404324(var_98)
  loc_403CE8: If CBool(Me(4)) Then
  loc_403D1B:   Me(8) = RegOpenKeyEx(Me(4), var_98, 0, &H20019, var_A0)
  loc_403D2E:   If (Me(8) = 0) Then
  loc_403D6F:     Me(8) = RegQueryValueEx(var_A0, arg_14, 0, var_A4, var_AC, var_A8, StrConv(var_98, vbUnicode))
  loc_403D86:     If (Me(8) = 0) Then
  loc_403D8C:       var_94 = True 'Variant
  loc_403D93:     Else
  loc_403D97:       var_94 = False 'Variant
  loc_403D9B:     End If
  loc_403D9B:   End If
  loc_403D9B: End If
  loc_403D9B: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_1_14_404324(arg_C, arg_10) '404324
  'Data Table: 4013C0
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim var_C4 As Variant
  Dim arg_10 As Long
  loc_4041EE: Me(8) = InStr(1, arg_C, "\", 0)
  loc_4041FB: var_94 = arg_C
  loc_404203: Thumbs   .db.address_80000269
  loc_40420B: var_B4 = "HKEY_"
  loc_40421D: var_D4 = arg_C
  loc_404225: Thumbs   .db.address_8000026B
  loc_404244: If CBool(var_E4 Or (var_E4 = "\")) Then
  loc_404255:   var_94 = "Incorrect Format:"
  loc_404262:   Thumbs   .db.address_80000260
  loc_40426A:   var_C4 = (var_A4 + var_A4)
  loc_404276:   Thumbs   .db.address_80000260
  loc_404288:   var_114 = ((var_E4 + var_E4) + CVar(arg_C))
  loc_40428C:   Thumbs   .db.address_80000253
  loc_4042A4:   Exit Sub
  loc_4042A8: Else
  loc_4042B3:   If (Me(8) = 0) Then
  loc_4042BE:     arg_10 = Proc_1_15_4037C8(arg_C, var_114, &HA, var_C4, &HA, var_94, 0, var_124)
  loc_4042C4:     arg_C = vbNullString
  loc_4042CB:   Else
  loc_4042E1:     Thumbs   .db.address_80000269
  loc_4042F3:     arg_10 = Proc_1_15_4037C8(CStr(var_A4), var_A4, arg_C, (Me(8) - 1), arg_10, var_134)
  loc_404309:     var_94 = arg_C
  loc_404311:     Thumbs   .db.address_8000026B
  loc_40431A:     arg_C = CStr(var_A4)
  loc_404321:   End If
  loc_404321: End If
  loc_404321: Exit Sub
End Sub

Public Sub Proc_1_15_4037C8(reg_key) '4037C8
  'Data Table: 4013C0
  Dim var_88 As Long
  loc_40372B: reg_key2 = reg_key
  loc_403736: If (reg_key2 = "HKEY_CLASSES_ROOT") Then
  loc_40373E:   var_88 = -2147483648
  loc_403744: Else
  loc_40374C:   If (reg_key2 = "HKEY_CURRENT_USER") Then
  loc_403754:     var_88 = -2147483647
  loc_40375A:   Else
  loc_403762:     If (reg_key2 = "HKEY_LOCAL_MACHINE") Then
  loc_40376A:       var_88 = -2147483646
  loc_403770:     Else
  loc_403778:       If (reg_key2 = "HKEY_USERS") Then
  loc_403780:         var_88 = -2147483645
  loc_403786:       Else
  loc_40378E:         If (reg_key2 = "HKEY_PERFORMANCE_DATA") Then
  loc_403796:           var_88 = -2147483644
  loc_40379C:         Else
  loc_4037A4:           If (reg_key2 = "HKEY_CURRENT_CONFIG") Then
  loc_4037AC:             var_88 = -2147483643
  loc_4037B2:           Else
  loc_4037BA:             If (reg_key2 = "HKEY_DYN_DATA") Then
  loc_4037C2:               var_88 = -2147483642
  loc_4037C5:             End If
  loc_4037C5:           End If
  loc_4037C5:         End If
  loc_4037C5:       End If
  loc_4037C5:     End If
  loc_4037C5:   End If
  loc_4037C5: End If
  loc_4037C5: Exit Sub
End Sub

Public Sub Proc_1_16_403998(arg_C) '403998
  'Data Table: 4013C0
  Dim var_8C As Long
  loc_4038E7: var_8C = arg_C
  loc_4038F3: If Not (var_8C = &H3F1) Then
  loc_4038FF:   If Not (var_8C = &H3F7) Then
  loc_40390B:     If Not (var_8C = 2) Then
  loc_403917:       If Not (var_8C = &H3F2) Then
  loc_403923:         If Not (var_8C = &H3F3) Then
  loc_40392F:           If Not (var_8C = 4) Then
  loc_40393B:             If Not (var_8C = &H3F4) Then
  loc_403947:               If Not (var_8C = 5) Then
  loc_403953:                 If Not (var_8C = &H3F5) Then
  loc_40395F:                   If Not (var_8C = 8) Then
  loc_40396B:                     If Not (var_8C = &HE) Then
  loc_403977:                       If Not (var_8C = &H57) Then
  loc_403983:                         If (var_8C = &HEA) Then
  loc_403986:                         End If
  loc_403986:                       End If
  loc_403986:                     End If
  loc_403986:                   End If
  loc_403986:                 End If
  loc_403986:               End If
  loc_403986:             End If
  loc_403986:           End If
  loc_403986:         End If
  loc_403986:       End If
  loc_403986:     End If
  loc_403986:   End If
  loc_403989:   var_88 = vbNullString
  loc_40398F: Else
  loc_403992:   var_88 = vbNullString
  loc_403995: End If
  loc_403995: Exit Sub
End Sub
