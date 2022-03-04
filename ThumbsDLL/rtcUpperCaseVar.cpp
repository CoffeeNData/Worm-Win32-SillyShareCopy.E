_DWORD *__stdcall rtcUpperCaseVar(_DWORD *resBuffer, VARIANT *targetStr)
{
  VARIANTARG *tlsOffset; // esi
  OLECHAR *upperTarget; // eax
  _DWORD *result; // eax
  int v5; // [esp+8h] [ebp-10h]
  int v6; // [esp+Ch] [ebp-Ch]
  OLECHAR *upperRes; // [esp+10h] [ebp-8h]
  int v8; // [esp+14h] [ebp-4h]

  tlsOffset = (VARIANTARG *)((char *)TlsGetValue(baseTLSAddr) + 80);// Retrieve a value off memory
  upperTarget = (OLECHAR *)sub_660243BA(targetStr, tlsOffset);// Cast the variant to a thread-shareable OLECHAR object

  if ( upperTarget == (OLECHAR *)-1 )
  {
    LOWORD(v5) = 1;
  }
  else
  {
    upperRes = rtcUpperCaseBstr(upperTarget);   // Upper the string characters
    LOWORD(v5) = 8;

    if ( tlsOffset->vt == 8 )                   // If tlsOffset is a string
    {
      SysFreeString(tlsOffset->bstrVal);        // Cast tlsOffset to a string and free its contents
      tlsOffset->vt = 0;                        // Cast tlsOffset to empty / empty all data in the variant
    }
  }

  result = resBuffer;                           // WARNING: Windows default character encoding is UNICODE, WHICH IS 4 BYTES PER CHAR
  *resBuffer = v5;
  resBuffer[1] = v6;
  resBuffer[2] = upperRes;                      // upperRes is on resbuffer +2
  resBuffer[3] = v8;
  return result;
}