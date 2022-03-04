 .text:660E9F38  ; _DWORD *__stdcall rtcUpperCaseVar(_DWORD *resBuffer, VARIANT *targetStr)
 .text:660E9F38                  public rtcUpperCaseVar
 .text:660E9F38  rtcUpperCaseVar proc near               ; DATA XREF: .text:off_66049848↑o
 .text:660E9F38
 .text:660E9F38  var_10          = dword ptr -10h
 .text:660E9F38  upperRes        = dword ptr -8
 .text:660E9F38  resBuffer       = dword ptr  8
 .text:660E9F38  targetStr       = dword ptr  0Ch
 .text:660E9F38
 .text:660E9F38                  push    ebp
 .text:660E9F39                  mov     ebp, esp
 .text:660E9F3B                  sub     esp, 10h
 .text:660E9F3E                  push    esi
 .text:660E9F3F                  push    edi
 .text:660E9F40                  push    baseTLSAddr     ; dwTlsIndex
 .text:660E9F46                  call    ds:TlsGetValue
 .text:660E9F4C                  lea     esi, [eax+50h]
 .text:660E9F4F                  push    esi
 .text:660E9F50                  push    [ebp+targetStr]
 .text:660E9F53                  call    sub_660243BA
 .text:660E9F58                  cmp     eax, 0FFFFFFFFh
 .text:660E9F5B                  jz      short loc_660E9F91
 .text:660E9F5D                  push    eax             ; strIn
 .text:660E9F5E                  call    rtcUpperCaseBstr
 .text:660E9F63                  cmp     word ptr [esi], 8
 .text:660E9F67                  mov     [ebp+upperRes], eax
 .text:660E9F6A                  mov     word ptr [ebp+var_10], 8
 .text:660E9F70                  jnz     short loc_660E9F7F
 .text:660E9F72                  push    dword ptr [esi+8] ; bstrString
 .text:660E9F75                  call    ds:__imp_SysFreeString
 .text:660E9F7B                  and     word ptr [esi], 0
 .text:660E9F7F
 .text:660E9F7F  loc_660E9F7F:                           ; CODE XREF: rtcUpperCaseVar+38↑j
 .text:660E9F7F                                          ; rtcUpperCaseVar+5F↓j
 .text:660E9F7F                  mov     eax, [ebp+resBuffer]
 .text:660E9F82                  lea     esi, [ebp+var_10]
 .text:660E9F85                  mov     edi, eax
 .text:660E9F87                  movsd
 .text:660E9F88                  movsd
 .text:660E9F89                  movsd
 .text:660E9F8A                  movsd
 .text:660E9F8B                  pop     edi
 .text:660E9F8C                  pop     esi
 .text:660E9F8D                  leave
 .text:660E9F8E                  retn    8
 .text:660E9F91  ; ---------------------------------------------------------------------------
 .text:660E9F91
 .text:660E9F91  loc_660E9F91:                           ; CODE XREF: rtcUpperCaseVar+23↑j
 .text:660E9F91                  mov     word ptr [ebp+var_10], 1
 .text:660E9F97                  jmp     short loc_660E9F7F
 .text:660E9F97  rtcUpperCaseVar endp