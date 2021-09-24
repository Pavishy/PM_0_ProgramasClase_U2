TITLE Introduccion MOV;

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc



.data

cadena1_p22 db "Es igual: ",0

cadena2_p22 db "Es diferente: ",0

.code


	menu2 PROC

	mov eax, 10 ; ingresado por el usuario (ahora manualmente)

	cmp eax, 10
	
	; con signo: je -> salta si es igual a mas 0
	; sin signo: jz -> salta si es cero igual a 0


	;salto despues de cmp para no modificar los datos
	; se utilizan dos formas con signo para revisar si es igual es je (numeros positivos o negativos)
	; sin signo sera ingresar jz (salta si es 0)

	;se usara el sin signo

	jz esIgual ;(nombre de la etiqueta)

		; el salto no funciona si no es igual 10 10 si
		; pero si es 12 y 10 hay error

		mov edx, offset cadena2_p22
		call writestring

		jmp continuar ;funciona como break sindo un if rustico
		; si no es 0 paso a continuar
		

	;se defnie la etiqueta es igual

	esIgual:    
		mov edx, offset cadena1_p22
		call writestring

	continuar:

	exit 

	menu2 ENDP
	END menu2


;UNIDAD 2:

;TAREA 1 (PRACTICAS1): PROGRAMAS EN DOCUMENTACION(PENDIENTE) CON SU VIDEO
;TAREA 2 REGISTRO DE BANDERAS Y BANDERAS MAS COMUNES
;TAREA 3 SALTOS CONDICIONALES CON SIGNO
;TAREA 4 SALTOS CONDICIONALES SIN SIGNO

;nota las VARIACIONES AL ESCRIBIRLOS CON SIGNO
