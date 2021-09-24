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
;//6//09//2021
;	inmediato   inmediato	NO ES POSIBLE
;	inmediato   memoria		SI
;	inmediato   registro	SI
; //7//09//2021
;	memoria		inmediato	NO ES POSIBLE
;	memoria		memoria		NO SE PUEDE
;	memoria		registro	SI
;
;	registro	inmediato	NO ES POSIBLE
;	registro	memoria		SI
;	registro	registro	SI

.data

variable1_P1 dword 5d

.code

	main PROC

;	ORGN = inmediato  DEST = inmediato	NO ES POSIBLE

	;mov 5, 10

;	ORGN = inmediato   DEST = memoria		SI
;	mov destino, origen

	;mov variable1_P1, 10

;	ORGN = inmediato   DEST = registro	SI
; mov destino, origen

	;mov eax,10
	

;	call dumpregs

		exit 

	main ENDP
	END main
