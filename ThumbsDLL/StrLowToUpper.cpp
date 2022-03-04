char *__stdcall StrLowToUpper(char *targetStrPtrW, int buffSize)
{
  int v2; // ebx
  char v4[120]; // [esp+Ch] [ebp-88h] BYREF
  char v5[4]; // [esp+84h] [ebp-10h] BYREF
  LPSTR lpMultiByteStr; // [esp+88h] [ebp-Ch]
  LPSTR lpsz; // [esp+90h] [ebp-4h]

  // If dword_6610ED74 is not set, then uppercase the
  // given string using CharUpperBuffW (Unicode) and
  // then just return its ptr
  if ( !dword_6610ED74 )                        // Should jump in
  {
    CharUpperBuffW((LPWSTR)targetStrPtrW, buffSize);// Uppercase the string and store it in the first arg
    return targetStrPtrW;                       // Return the processed string's ptr
  }

  // Else
  v2 = WideCharToMultiByte(0, 0, (LPCWCH)targetStrPtrW, buffSize, 0, 0, 0, 0);
  if ( !v2 )
    return 0;
  sub_660D9AD7(v5, 0x78u, 0, v2, (int)v4, 0, 1);
  lpsz = lpMultiByteStr;
  if ( !lpMultiByteStr
    || !WideCharToMultiByte(0, 0, (LPCWCH)targetStrPtrW, buffSize, lpMultiByteStr, v2, 0, 0)
    || !CharUpperBuffA(lpsz, v2)
    || !MultiByteToWideChar(0, 0, lpsz, v2, (LPWSTR)targetStrPtrW, buffSize) )
  {
    sub_66029978(v5);
    return 0;
  }
  sub_66029978(v5);
  return targetStrPtrW;
}