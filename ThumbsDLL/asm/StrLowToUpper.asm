 .text:660E4AB2  StrLowToUpper   proc near               ; CODE XREF: AllocStrToUpper+2E↓p
 .text:660E4AB2
 .text:660E4AB2  var_88          = byte ptr -88h
 .text:660E4AB2  var_10          = byte ptr -10h
 .text:660E4AB2  lpMultiByteStr  = dword ptr -0Ch
 .text:660E4AB2  lpsz            = dword ptr -4
 .text:660E4AB2  targetStrPtrW   = dword ptr  8
 .text:660E4AB2  buffSize        = dword ptr  0Ch
 .text:660E4AB2
 .text:660E4AB2                  push    ebp
 .text:660E4AB3                  mov     ebp, esp
 .text:660E4AB5                  sub     esp, 88h
 .text:660E4ABB                  push    ebx
 .text:660E4ABC                  push    esi
 .text:660E4ABD                  xor     esi, esi
 .text:660E4ABF                  push    edi
 .text:660E4AC0                  cmp     dword_6610ED74, esi
 .text:660E4AC6                  jz      loc_660E4B5A
 .text:660E4ACC                  push    esi             ; lpUsedDefaultChar
 .text:660E4ACD                  push    esi             ; lpDefaultChar
 .text:660E4ACE                  push    esi             ; cbMultiByte
 .text:660E4ACF                  push    esi             ; lpMultiByteStr
 .text:660E4AD0                  push    [ebp+buffSize]  ; cchWideChar
 .text:660E4AD3                  mov     edi, ds:WideCharToMultiByte
 .text:660E4AD9                  push    [ebp+targetStrPtrW] ; lpWideCharStr
 .text:660E4ADC                  push    esi             ; dwFlags
 .text:660E4ADD                  push    esi             ; CodePage
 .text:660E4ADE                  call    edi ; WideCharToMultiByte
 .text:660E4AE0                  mov     ebx, eax
 .text:660E4AE2                  cmp     ebx, esi
 .text:660E4AE4                  jz      short loc_660E4B2E
 .text:660E4AE6                  push    1
 .text:660E4AE8                  lea     eax, [ebp+var_88]
 .text:660E4AEE                  push    esi
 .text:660E4AEF                  push    eax
 .text:660E4AF0                  push    ebx
 .text:660E4AF1                  push    esi
 .text:660E4AF2                  push    78h ; 'x'
 .text:660E4AF4                  lea     ecx, [ebp+var_10]
 .text:660E4AF7                  call    sub_660D9AD7
 .text:660E4AFC                  mov     eax, [ebp+lpMultiByteStr]
 .text:660E4AFF                  cmp     eax, esi
 .text:660E4B01                  mov     [ebp+lpsz], eax
 .text:660E4B04                  jz      short loc_660E4B26
 .text:660E4B06                  push    esi             ; lpUsedDefaultChar
 .text:660E4B07                  push    esi             ; lpDefaultChar
 .text:660E4B08                  push    ebx             ; cbMultiByte
 .text:660E4B09                  push    eax             ; lpMultiByteStr
 .text:660E4B0A                  push    [ebp+buffSize]  ; cchWideChar
 .text:660E4B0D                  push    [ebp+targetStrPtrW] ; lpWideCharStr
 .text:660E4B10                  push    esi             ; dwFlags
 .text:660E4B11                  push    esi             ; CodePage
 .text:660E4B12                  call    edi ; WideCharToMultiByte
 .text:660E4B14                  test    eax, eax
 .text:660E4B16                  jz      short loc_660E4B26
 .text:660E4B18                  push    ebx             ; cchLength
 .text:660E4B19                  push    [ebp+lpsz]      ; lpsz
 .text:660E4B1C                  call    ds:CharUpperBuffA
 .text:660E4B22                  test    eax, eax
 .text:660E4B24                  jnz     short loc_660E4B37
 .text:660E4B26
 .text:660E4B26  loc_660E4B26:                           ; CODE XREF: StrLowToUpper+52↑j
 .text:660E4B26                                          ; StrLowToUpper+64↑j
 .text:660E4B26                  lea     ecx, [ebp+var_10]
 .text:660E4B29
 .text:660E4B29  loc_660E4B29:                           ; CODE XREF: StrLowToUpper+9C↓j
 .text:660E4B29                  call    sub_66029978
 .text:660E4B2E
 .text:660E4B2E  loc_660E4B2E:                           ; CODE XREF: StrLowToUpper+32↑j
 .text:660E4B2E                  xor     eax, eax
 .text:660E4B30
 .text:660E4B30  loc_660E4B30:                           ; CODE XREF: StrLowToUpper+A6↓j
 .text:660E4B30                  pop     edi
 .text:660E4B31                  pop     esi
 .text:660E4B32                  pop     ebx
 .text:660E4B33                  leave
 .text:660E4B34                  retn    8
 .text:660E4B37  ; ---------------------------------------------------------------------------
 .text:660E4B37
 .text:660E4B37  loc_660E4B37:                           ; CODE XREF: StrLowToUpper+72↑j
 .text:660E4B37                  push    [ebp+buffSize]  ; cchWideChar
 .text:660E4B3A                  push    [ebp+targetStrPtrW] ; lpWideCharStr
 .text:660E4B3D                  push    ebx             ; cbMultiByte
 .text:660E4B3E                  push    [ebp+lpsz]      ; lpMultiByteStr
 .text:660E4B41                  push    esi             ; dwFlags
 .text:660E4B42                  push    esi             ; CodePage
 .text:660E4B43                  call    ds:MultiByteToWideChar
 .text:660E4B49                  test    eax, eax
 .text:660E4B4B                  lea     ecx, [ebp+var_10]
 .text:660E4B4E                  jz      short loc_660E4B29
 .text:660E4B50                  call    sub_66029978
 .text:660E4B55
 .text:660E4B55  loc_660E4B55:                           ; CODE XREF: StrLowToUpper+B4↓j
 .text:660E4B55                  mov     eax, [ebp+targetStrPtrW]
 .text:660E4B58                  jmp     short loc_660E4B30
 .text:660E4B5A  ; ---------------------------------------------------------------------------
 .text:660E4B5A
 .text:660E4B5A  loc_660E4B5A:                           ; CODE XREF: StrLowToUpper+14↑j
 .text:660E4B5A                  push    [ebp+buffSize]  ; cchLength
 .text:660E4B5D                  push    [ebp+targetStrPtrW] ; lpsz
 .text:660E4B60                  call    ds:CharUpperBuffW
 .text:660E4B66                  jmp     short loc_660E4B55
 .text:660E4B66  StrLowToUpper   endp