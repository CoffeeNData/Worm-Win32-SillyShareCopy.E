int *__stdcall rtcRightCharVar(int *a1, int a2, int a3)
{
    int *rightVarResIntPtr;     // esi
    int *result; // eax
    int v5[4];   // [esp+8h] [ebp-10h] BYREF

    rightVarResIntPtr = (int *)rtcRightVar( // Casts the return to an int ptr
        (int)v5,
        a2,
        2 * a3);

    result = a1;
    *a1 = *rightVarResIntPtr++;
    a1[1] = *rightVarResIntPtr++;
    a1[2] = *rightVarResIntPtr;
    a1[3] = rightVarResIntPtr[1];
    return result;
}