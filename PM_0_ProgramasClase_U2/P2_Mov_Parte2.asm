TITLE Introduccion MOV;

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

;Instruccion MOV
;	Sintaxis
;		mov destino, origen ; var = valor
;
;
;	inmediatos (un numero o una letra), memoria, registros
;
;	origen   /  destino
;
;
;	//7 /09 / 2021
;
;	memoria		inmediato	NO ES POSIBLE
;	memoria		memoria		NO SE PUEDE
;	memoria		registro	SI
;
;	registro	inmediato	NO ES POSIBLE
;	registro	memoria		SI
;	registro	registro	SI


.data

variable1_P2 dword 5d

.code

	main2 PROC

;	ORGN = memoria  DEST = inmediato	NO VALIDA

	;mov 5, variable1_p2

;	ORGN = memoria   DEST = memoria		NO SE PUEDE 

;	mov destino, origen

	;mov variable1_P2, mov variable1_P2 NO SE PUEDE

;	ORGN = memoria   DEST = registro	SI

; mov destino, origen

	;mov eax, mov variable1_P2 ; MISMO TAMANO DE DATOS

	;ejemplo:
		;dword -> eax
		;word -> ax
		;byte -> ah / al
	

		exit 

	main2 ENDP
	END main2

