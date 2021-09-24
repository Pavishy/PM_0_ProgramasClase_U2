TITLE  suma de 4 numeros 

;DESCRPICIÓN 
;Objetivo: Lectura de números por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
Mensaje db "introducir numero: ",0
respuesta db "el resultado es: ",0

.code

	tarea PROC	
		;Lógica del Programa
		mov edx,offset Mensaje 
        call writestring
        call readint
        mov ebx,0
        mov ecx,10

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx


        mov edx,offset respuesta
        call writestring
        mov eax,ebx
        call writeint
		exit		
	tarea ENDP
	END tarea