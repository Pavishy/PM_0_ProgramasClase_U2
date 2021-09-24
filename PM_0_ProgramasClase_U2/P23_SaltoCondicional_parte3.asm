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


	menu3 PROC

	mov eax, 10 
	cmp eax, 10
	
	;jz = si es cero
	;jnz =salta si no es cero
	
	;je = salta si es igual
	;jne = salta si no es igual

	;jg = salta si es mayor
	;jng = salta si no es mayor o igual
	
	;jl = salta si es menor
	;jnl = salta si no es menor

	;jle = salta si es menor o igual
	;jnle =  salta si no es menor o igual

	;formas diferentes de hacer lo mismo y tener una tabla
	;de saltos, mas de uno hace la misma accion mas que otro
	;unos son con signos otro se obtienen a partir de una
	; configuracion

	;if (condicion<<<saltos){ osease cmp y j/jn
	;	instrucciones
	;}

	continuar:

	exit 

	menu3 ENDP
	END menu3


;UNIDAD 2:

;TAREA 1 (PRACTICAS1): PROGRAMAS EN DOCUMENTACION(PENDIENTE) CON SU VIDEO
;TAREA 2 REGISTRO DE BANDERAS Y BANDERAS MAS COMUNES
;TAREA 3 SALTOS CONDICIONALES CON SIGNO
;TAREA 4 SALTOS CONDICIONALES SIN SIGNO

;VARIACIONES AL ESCRIBIRLOS CON SIGNO
