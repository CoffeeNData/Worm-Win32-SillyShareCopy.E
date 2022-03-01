_DWORD *__stdcall rtcUpperCaseVar(_DWORD *a1, VARIANTARG *a2)
{
  VARIANTARG *v2; // esi
  OLECHAR *v3; // eax
  _DWORD *result; // eax
  int v5; // [esp+8h] [ebp-10h]
  int v6; // [esp+Ch] [ebp-Ch]
  int v7; // [esp+10h] [ebp-8h]
  int v8; // [esp+14h] [ebp-4h]

  v2 = (VARIANTARG *)((char *)TlsGetValue(dword_6610EE98) + 80);
  v3 = (OLECHAR *)sub_660243BA(a2, v2);         // OLECHAR is the character type specifically used by COM (Component Object Model)
                                                // Form1's UUID / COM object ID will be referenced next

  if ( v3 == (OLECHAR *)-1 )
  {
    LOWORD(v5) = 1;                             // Cast v5 from int to a long type
  }
  else
  {
    v7 = rtcUpperCaseBstr(v3);
    LOWORD(v5) = 8;
    if ( v2->vt == 8 )
    {
      SysFreeString(v2->bstrVal);
      v2->vt = 0;
    }
  }

  result = a1;
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}