TITLE Pedir n�meros hasta que sea ingresado un valor negativo. 
;Se imprimir� a todos los n�meros conforme son ingresados a excepci�n del negativo. 

;DESCRPICI�N 
;Objetivo: Lectura de n�meros por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

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