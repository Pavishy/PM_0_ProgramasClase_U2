OPTION CASEMAP:NONE

INCLUDE Irvine32.inc

ExitProcess proto, dwExitCode:dword

.data
    str1 BYTE "Enter a positive integer: ",0
    str2 BYTE "The sum is: ",0
    str3 BYTE "The product is: ",0
    str4 BYTE "The power result is: ",0
    num1 DWORD 0
    num2 DWORD 0
    sum  DWORD 0
    prod DWORD 0
    pow  DWORD 0
    tmp  DWORD 0

.code
    mainu PROC

        mov edx, OFFSET str1    ;// Input
        call WriteString
        call ReadInt
        mov [num1], eax

        mov edx, OFFSET str1
        call WriteString
        call ReadInt
        mov [num2], eax

        call doSum              ;// Calculations
        call doMul
        call doPow

        mov edx, OFFSET str2    ;// Output
        call WriteString
        mov eax, [sum]
        call WriteInt
        call Crlf

        mov edx, OFFSET str3
        call WriteString
        mov eax, [prod]
        call WriteInt
        call Crlf

        mov edx, OFFSET str4
        call WriteString
        mov eax, [pow]
        call WriteInt
        call Crlf

        invoke ExitProcess, 0

    mainu ENDP

    doSum PROC              ;// Sum
        mov eax, [num1]
        add eax, [num2]
        mov [sum], eax
        ret
    doSum ENDP

    doMul PROC              ;// Multiply: Add num1 x num2 times
        xor eax, eax
        mov ecx, [num2]
        ADD_LOOP:
            add eax, [num1]
        loop ADD_LOOP
        mov [prod], eax
        ret
    doMul ENDP

    doPow PROC              ;// Power: Add num1 x num2 times and 
        mov eax, [num1]     ;// add result x num2 times till ebx=0
        mov [tmp], eax
        mov ebx, [num2]
        dec ebx
        POW_LOOP:
            xor eax, eax
            mov ecx, [num1]
            ADDPOW_LOOP:
                add eax, [tmp]
            loop ADDPOW_LOOP
            mov [tmp], eax
            dec ebx
        jnz POW_LOOP
        mov [pow], eax
        ret

    doPow ENDP

END mainu