TITLE Saltos Condicionales

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
msj1_p26 db "Fin del Programa",0

.code
	
	main26 PROC	
		;Lógica del Programa

		mov eax, 0

		ciclo:

			call writedec  ; imprime el contenido de eax
			call crlf

			add eax, 1

			cmp eax, 8
			jl ciclo     ;mientras que eax sea menor que 8, entonces se saltará 
			
			mov edx, offset msj1_p26
			call writestring
		
		
		exit	
	
	main26 ENDP
	
	END main26


	;Unidad 2:
	;Tarea 1 (Practica 1):  4 programas en documentacion (pendiente) / video (asignacion)

	;Tarea 2. Registro de Banderas   y las banderas más comunes
	
	;Tarea 3. Saltos Condicionales con Signo

	;Tarea 4. Saltos Condicionales sin Signo

	;Tarea 5 (Programa). Imprimir los numeros pares entre 1 y n, siendo n ingresado por el usuario