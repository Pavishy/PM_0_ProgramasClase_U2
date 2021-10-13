TITLE Tabla de multiplicar que solicit� al usuario 
;el resultado de la operaci�n. Imprimir el total de errores

;DESCRPICI�N
;Objetivo: Explicaci�n
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msnum db "Dame un numero: ",0
mserror db "Obtuvise ",0
mserror1 db " Errores",0
mstabla db "Dame la tabla: ",0
mst db " x ", 0
mst1 db " = ", 0
error dword 0
num dword 0

.code

tabla PROC
;L�gica del Programa
   
   mov edx, offset mstabla
   call writestring
   call readint
   mov num, eax
   call crlf

   mov ecx, 1
   ciclo:
       
       mov eax, num
       call writedec
       mul ecx
       mov ebx, eax
       mov edx, offset mst
       call writestring
       mov eax, ecx
       call writedec
       mov edx, offset mst1
       call writestring
       call readint

       cmp eax, ebx
         je next
         inc error

       next:
       inc  ecx
       cmp ecx, 11
        jl ciclo

    mov eax, error
    mov edx, offset mserror
    call writestring
    call writedec
    mov edx, offset mserror1
    call writestring

exit
tabla ENDP
END tabla