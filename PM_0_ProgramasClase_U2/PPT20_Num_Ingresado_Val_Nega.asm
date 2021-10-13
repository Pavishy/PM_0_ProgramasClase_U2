TITLE Pedir números hasta que sea ingresado un valor negativo. 
;Se imprimirá a todos los números conforme son ingresados a excepción del negativo. 

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

mensaje db "Dame un numero: ", 0

.code

	valne PROC
	       

		   ciclo:
		        mov edx, offset mensaje
				call writestring
				call readint

				cmp eax, 0
				   jl next

				call writedec
				call crlf
				call crlf
				jmp ciclo

			next:
			call crlf
			exit

	valne ENDP
	END valne