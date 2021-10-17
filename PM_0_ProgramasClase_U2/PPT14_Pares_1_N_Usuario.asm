TITLE Par Impar

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.!
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
msj1_p25 db "Ingresa un numero: ", 0
msj2_p25 db "El numero es: ", 0
msj3_p25 db "PAR", 0
msj4_p25 db "IMPAR", 0

.code
	ppimpar PROC	
		;Lógica del Programa

	continuar:
		mov edx, offset msj1_p25
		call writestring   
		call readint 
		call crlf 

		mov edx, offset msj2_p25
		call writestring

		mov edx, 0
		mov ebx, 2
		div ebx 

		cmp edx, 0		
		 
		jz esIgual
			;camino del no
			mov edx, offset msj4_p25
			call writestring ;IMPAR
			call crlf
			call crlf
			jmp continuar

		esIgual:
			mov edx, offset msj3_p25
			call writestring ;PAR
			call crlf
			call crlf

		jmp continuar
		exit	

	ppimpar ENDP
	END ppimpar