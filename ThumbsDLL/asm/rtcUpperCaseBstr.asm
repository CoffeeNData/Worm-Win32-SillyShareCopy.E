 .text:660E9F18  ; OLECHAR *__stdcall rtcUpperCaseBstr(OLECHAR *targetStr)
 .text:660E9F18                  public rtcUpperCaseBstr
 .text:660E9F18  rtcUpperCaseBstr proc near              ; CODE XREF: rtcUpperCaseVar+26↓p
 .text:660E9F18                                          ; DATA XREF: .text:off_66049848↑o
 .text:660E9F18
 .text:660E9F18  targetStr       = dword ptr  8
 .text:660E9F18
 .text:660E9F18                  push    ebp
 .text:660E9F19                  mov     ebp, esp
 .text:660E9F1B                  push    [ebp+targetStr] ; strIn
 .text:660E9F1E                  lea     eax, [ebp+targetStr]
 .text:660E9F21                  push    eax             ; int
 .text:660E9F22                  call    AllocStrToUpper ; Uppercase strIn and store the new string in destPtr
 .text:660E9F27                  test    eax, eax
 .text:660E9F29                  jz      short loc_660E9F31
 .text:660E9F2B                  push    eax
 .text:660E9F2C                  call    sub_66024FDC
 .text:660E9F31  ; ---------------------------------------------------------------------------
 .text:660E9F31
 .text:660E9F31  loc_660E9F31:                           ; CODE XREF: rtcUpperCaseBstr+11↑j
 .text:660E9F31                  mov     eax, [ebp+targetStr]
 .text:660E9F34                  pop     ebp
 .text:660E9F35                  retn    4
 .text:660E9F35  rtcUpperCaseBstr endp