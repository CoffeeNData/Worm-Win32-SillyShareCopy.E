 .text:660E9F99  ; int __stdcall AllocStrToUpper(int *destPtr, OLECHAR *strIn)
 .text:660E9F99  AllocStrToUpper proc near               ; CODE XREF: rtcUpperCaseBstr+A↑p
 .text:660E9F99
 .text:660E9F99  destPtr         = dword ptr  4
 .text:660E9F99  strIn           = dword ptr  8
 .text:660E9F99
 .text:660E9F99                  mov     eax, [esp+strIn]
 .text:660E9F9D                  push    esi
 .text:660E9F9E                  test    eax, eax
 .text:660E9FA0                  jnz     short loc_660E9FBD
 .text:660E9FA2                  xor     esi, esi
 .text:660E9FA4
 .text:660E9FA4  loc_660E9FA4:                           ; CODE XREF: AllocStrToUpper+29↓j
 .text:660E9FA4                  push    esi             ; ui
 .text:660E9FA5                  push    eax             ; strIn
 .text:660E9FA6                  call    ds:__imp_SysAllocStringLen
 .text:660E9FAC                  test    eax, eax
 .text:660E9FAE                  mov     ecx, [esp+4+destPtr]
 .text:660E9FB2                  mov     [ecx], eax
 .text:660E9FB4                  jnz     short loc_660E9FC4
 .text:660E9FB6                  push    0Eh
 .text:660E9FB8                  pop     eax
 .text:660E9FB9
 .text:660E9FB9  loc_660E9FB9:                           ; CODE XREF: AllocStrToUpper+35↓j
 .text:660E9FB9                  pop     esi
 .text:660E9FBA                  retn    8
 .text:660E9FBD  ; ---------------------------------------------------------------------------
 .text:660E9FBD
 .text:660E9FBD  loc_660E9FBD:                           ; CODE XREF: AllocStrToUpper+7↑j
 .text:660E9FBD                  mov     esi, [eax-4]
 .text:660E9FC0                  shr     esi, 1
 .text:660E9FC2                  jmp     short loc_660E9FA4
 .text:660E9FC4  ; ---------------------------------------------------------------------------
 .text:660E9FC4
 .text:660E9FC4  loc_660E9FC4:                           ; CODE XREF: AllocStrToUpper+1B↑j
 .text:660E9FC4                  inc     esi
 .text:660E9FC5                  push    esi             ; cchWideChar
 .text:660E9FC6                  push    eax             ; lpWideCharStr
 .text:660E9FC7                  call    StrLowToUpper
 .text:660E9FCC                  xor     eax, eax
 .text:660E9FCE                  jmp     short loc_660E9FB9
 .text:660E9FCE  AllocStrToUpper endp