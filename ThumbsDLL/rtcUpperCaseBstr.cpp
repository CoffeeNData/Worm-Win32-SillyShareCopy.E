OLECHAR *__stdcall rtcUpperCaseBstr(OLECHAR *targetStr)
{
  int retCode; // eax


  // Uppercase targetStr and store the new
  // string wherever it was placed before
  retCode = AllocStrToUpper((int *)&targetStr, targetStr);

  // If function call was successfull...
  if ( retCode )                                // if (v1 == 0)
    sub_66024FDC(retCode);                      // Doesnt seem important
  return targetStr;                             // Return the uppercase string ptr
}