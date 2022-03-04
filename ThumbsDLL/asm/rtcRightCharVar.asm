; _DWORD *__stdcall rtcRightCharVar(_DWORD *, int, int)
.text:660E9005                 public rtcRightCharVar
.text:660E9005 rtcRightCharVar proc near               ; DATA XREF: .text:off_66049848↑o
.text:660E9005
.text:660E9005 var_10          = dword ptr -10h
.text:660E9005 arg_0           = dword ptr  8
.text:660E9005 arg_4           = dword ptr  0Ch
.text:660E9005 arg_8           = dword ptr  10h
.text:660E9005
.text:660E9005                 push    ebp
.text:660E9006                 mov     ebp, esp
.text:660E9008                 sub     esp, 10h
.text:660E900B                 mov     eax, [ebp+arg_8]
.text:660E900E                 push    esi
.text:660E900F                 add     eax, eax
.text:660E9011                 push    edi
.text:660E9012                 push    eax             ; len
.text:660E9013                 lea     eax, [ebp+var_10]
.text:660E9016                 push    [ebp+arg_4]     ; int
.text:660E9019                 push    eax             ; int
.text:660E901A                 call    rtcRightVar
.text:660E901F                 mov     esi, eax
.text:660E9021                 mov     eax, [ebp+arg_0]
.text:660E9024                 mov     edi, eax
.text:660E9026                 movsd
.text:660E9027                 movsd
.text:660E9028                 movsd
.text:660E9029                 movsd
.text:660E902A                 pop     edi
.text:660E902B                 pop     esi
.text:660E902C                 leave
.text:660E902D                 retn    0Ch
.text:660E902D rtcRightCharVar endp