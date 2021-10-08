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

;calculo de la potencia (y) de un numero (x) ->> x^y 
;ejemplo si x = 2, y = 3  -> potencia =  2 * 2 * 2

.data
; Área de Declaración de Variables
msjx_p27 db "Dame el valor de x: ", 0 
msjy_p27 db "Dame el valor de y: ", 0
rest_p27 db "La potencia es: ", 0 

.code
	
	main27 PROC	
		;Lógica del Programa

		mov edx, offset msjx_p27
		call writestring    ; se despliega el mensaje para pedir x

		call readint   ; almacena en eax el valor ingresado por el usuario 

		call crlf ; salto de línea

		mov ebx, eax  ; respalda valor de eax en ebx
		
		;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset msjy_p27
		call writestring
		
		call readint

		call crlf

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;; para este punto eax contiene la potencia y ecx contiene al numero

		;;eax  = potencia = cantidad de veces que el ciclo se tiene que repetir

		;;Consideraciones: Dentro del ciclo, se necesita hacer multiplicaciones
		; y las multiplicaciones necesitan que se trabaje al menos con el registro eax
		; debido a esto, conviene guardar la potencia en algun otro registro o variable

		; en este programa: posibles registros > ebx o edx

		mov ecx, eax  ; la potencia ahora esta en ecx

		mov eax, ebx ; posicionar el numero en eax , que será el registro que nos permitirá
		; hacer las multiplicaciones

		dec ecx  ; 

		ciclo:
			call writedec	
			call crlf


			mul ebx  ; multiplicar eax con ebx, siendo ebx el numero de origen


			;sub ecx, 1  ;edx--
			dec ecx     ; edx--

			cmp ecx, 0
			jg ciclo
		

		mov edx, offset rest_p27
		call writestring

		call writedec  ;

		; Tarea: Investigar porque mul modifica el registro edx

		; Tarea (Programa) 
		; Tarea (Programa)
		; Tarea (Programa)
		
		exit	
	
	main27 ENDP
	
	END main27

	;TAREA (PROGRAMA) - DETERMINAR SI UN NUMERO ES PRIMO O NO