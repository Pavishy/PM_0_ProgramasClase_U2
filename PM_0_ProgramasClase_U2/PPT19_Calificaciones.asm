TITLE Pedir n, ingresar n calificaciones e imprimir si el usuario aprob� o no. Se aprueba con 7.

;DESCRPICI�N
;Objetivo: Explicaci�n
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables


.code
mensajecal db "Dame el total de calificaciones: ", 0
mensaje db "Dame una calificacion: ",0
mesaprobado db "Aprobastes",0
mesreprobado db "Reprobastes",0


calift PROC

;L�gica del Programa
   mov edx, offset mensajecal
   call writestring
   call readint
   push ecx
   mov ecx, eax 
   mov ebx, 0
   
   ciclo:
        mov edx, offset mensaje
        call writestring
        call readint
        add ebx, eax
  loop ciclo


   mov eax, ebx
   pop ebx
   mov edx, 0
   div ebx

   cmp eax, 7
        jl Reprobado
        mov edx, offset mesaprobado
        jmp Next

    Reprobado:
        mov edx, offset mesreprobado

    Next:
         call writestring


exit
calift ENDP
END calift