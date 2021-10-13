TITLE Determinar si la suma de dos números es mayor a un tercer número

;DESCRPICIÓN
;Objetivo: Explicación
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
mesn db "Dame un numero: ",0
mesum db "La suma ", 0
mesmayor db "es mayor", 0
mesmenor db "no es mayor",0

.code

tres PROC

;Lógica del Programa
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