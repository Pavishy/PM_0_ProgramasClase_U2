TITLE Pedir n, ingresar n calificaciones e imprimir si el usuario aprobó o no. Se aprueba con 7.

;DESCRPICIÓN
;Objetivo: Explicación
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables


.code
mensajecal db "Dame el total de calificaciones: ", 0
mensaje db "Dame una calificacion: ",0
mesaprobado db "Aprobastes",0
mesreprobado db "Reprobastes",0


calift PROC

;Lógica del Programa
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