TITLE Determinar si la suma de dos n�meros es mayor a un tercer n�mero

;DESCRPICI�N
;Objetivo: Explicaci�n
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
mesn db "Dame un numero: ",0
mesum db "La suma ", 0
mesmayor db "es mayor", 0
mesmenor db "no es mayor",0

.code

tres PROC

;L�gica del Programa
   mov ecx, 3

   ciclo:
        mov edx, offset mesn
        call writestring
        call readint
        push eax

   loop ciclo

   pop ebx
   pop eax
   pop ecx
   add eax, ecx
   call crlf

   mov edx, offset mesum
   call writestring

   cmp eax, ebx
      jg  mayor
      mov edx, offset mesmenor
      jmp ending
   
   mayor:
      mov edx, offset mesmayor

    ending:
    call writestring


exit
tres ENDP
END tres