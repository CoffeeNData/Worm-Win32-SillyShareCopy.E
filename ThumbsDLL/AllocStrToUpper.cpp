// Uppercase strIn and store the new string in destPtr
int __stdcall AllocStrToUpper(int *destPtr, OLECHAR *strIn)
{
  unsigned int charQuantity; // esi
  const char *newCharPtr; // eax

  if ( strIn )                                  // If strIn is supplied
    charQuantity = *((_DWORD *)strIn - 1) >> 1; // Get the length of the string
  else
    charQuantity = 0;                           // If is not supplied, set charQuantity to 0

  // According to Microsoft Docs, if 0 is supplied as second argument
  // the function will fail. If -1 is supplied, it expects the string
  // to be terminated by a null byte. If anything but that is supplied,
  // it will do it with N chars, where N is the second arg
  newCharPtr = (const char *)SysAllocStringLen(strIn, charQuantity);
  *destPtr = (int)newCharPtr;                   // Copy the new ptr to the specified destPtr

  if ( !newCharPtr )                            // If SysAllocStringLen fails then exit and return 14
    return 14;
  // Though there is no variable waiting for the return of StrLowToUpper,
  // the uppercase string is stored in newCharPtr, which points to the
  // same address as newCharPtr.
  StrLowToUpper((char *)newCharPtr, charQuantity + 1);// Store the uppercased string into newCharPtr, which is the same as destPtr
  return 0;                                     // If everything was good then return 0
}