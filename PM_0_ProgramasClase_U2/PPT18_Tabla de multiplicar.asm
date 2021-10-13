TITLE Tabla de multiplicar que solicité al usuario 
;el resultado de la operación. Imprimir el total de errores

;DESCRPICIÓN
;Objetivo: Explicación
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
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
;Lógica del Programa
   
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