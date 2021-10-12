TITLE Ciclos 

;DESCRPICIÓN 
;Objetivo: Explicación
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
msj_p37_pregunta db "desea repetir el ciclo: (1: repetir, 0: salir)", 0 

.code
	
	main37 PROC	
		;Lógica del Programa

		ciclo:

			mov edx, offset msj_p37_pregunta
			call writestring

			call crlf

			call readint    ;eax

			;cmp eax, 1
			;jz ciclo  ; si es igual salta     ; para hacer preguntas

			jmp ciclo                          ; para repetir siempre


		exit	
	
	main37 ENDP
	
	END main37