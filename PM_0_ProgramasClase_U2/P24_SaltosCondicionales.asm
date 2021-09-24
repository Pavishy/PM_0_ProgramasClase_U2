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

cadena1_p24 db "Es igual: ",0
cadena2_p24 db "Es menor: ",0
cadena3_p24 db "Es mayor: ",0

.code


	menu4 PROC

	call readint ; ingresado por el usuario

	cmp eax, 10
	
	jz EsIgual ;o je
		;camino el no (NO ES IGUAL)
		jl EsMenor
		;camino dl no (NO ES MENOR)
		mov edx,offset cadena3_p24
		call writestring
		jmp continuar


	EsIgual:
		mov edx,offset cadena1_p24
		call writestring
		jmp continuar


	EsMenor:
		mov edx,offset cadena2_p24
		call writestring

	continuar:

	exit 

	menu4 ENDP
	END menu4


