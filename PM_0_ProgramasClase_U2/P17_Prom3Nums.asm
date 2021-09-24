TITLE Introduccion Lectura

;DESCRPICIÓN
;Objetivo: Calcular el promedio de 3 numeros
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
txtCalif_1_p17 db "Ingresa la calificacion 1: ", 0
txtCalif_2_p17 db "Ingresa la calificacion 2: ", 0
txtCalif_3_p17 db "Ingresa la calificacion 3: ", 0

txtResul_p17 db "El promedio es: ", 0

.code

	main17 PROC	
		;Lógica del Programa
	
		mov edx, offset txtCalif_1_p17
		call writestring
		call crlf

		call readint   ; eax  ; es correcto, debido a que no hay nada en eax que nos interese

		mov edx, offset txtCalif_2_p17
		call writestring
		call crlf

		mov ebx, eax ; proceso de respaldo de la calificacion 1 en ebx (podria para este ejerccio tambien ser ecx)

		call readint  ; eax   ; existe un problema, y es que eax contiene la primera calificación ingresada
							  ; para solucionar el problema, se debe respaldar el valor de eax
							  ; antes de que se ejecute el procedimiento readint 
							  
							  ; El procedimiento de respaldo  se muestra en la linea: 39

		; como ya se tienen dos calificaciones, se puede comenzar a realizar la suma de estas...
		;add destino, origen ; si el destino es eax (mov eax, ebx), como aun falta una calificación, 
							 ; entonces me obligaría a tener que respaldar eax de nuevo antes de leer la  calif 
							 
							 ; sin embargo, si la suma se almacena en ebx (mov ebx, eax), 
							 ; no sería necesario respaldar, debido a que los
							 ; ingresos del usuario se almacenan en eax y no en ebx
							 ; y el resultado de la suma quedaría intacto

		add ebx, eax   ; ebx = calif 1 + calif 2


		mov edx, offset txtCalif_3_p17
		call writestring
		call crlf

		call readint   ; no importa que se borre el valor anterior de eax, debido a que este ya fue procesado
					   ; para realizar la suma y el resultado se encuentra respaldado en ebx

		; Se requiere hacer la suma final de todas las calificaciones. En este caso, el resultado
		; puede almacenarse en eax debido a que es donde se requiere se encuentre ubicado para 
		; realizar la división 

		add eax, ebx ; eax =  (calif 1 + calif 2) + calif 3


		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, 0  ; para almacenar el residuo sin problemas

		mov ecx, 3  ; divisor

		; eax = dividendo antes de la división y cociente despues de la division
		div ecx  ; eax / ecx  => eax /3

		;eax = promedio


		mov edx, offset txtResul_p17
		call writestring
		call crlf

		call writedec

		exit	
	
	main17 ENDP
	
	END main17