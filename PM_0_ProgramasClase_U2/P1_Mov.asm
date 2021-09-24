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
;	inmediato   inmediato	NO ES POSIBLE son numeros, destino no puede ser un inmediato y tampoco memoria a memoria
;	inmediato   memoria		SI
;	inmediato   registro	SI
;
;	memoria		inmediato	NO ES POSIBLE
;	memoria		memoria		NO SE PUEDE
;	memoria		registro	SI
;
;	registro	inmediato	NO ES POSIBLE
;	registro	memoria		SI
;	registro	registro	SI


;variableB_P4 byte 5d
;variableW_P4 byte 15d
;variableD_P4 byte 25d

.data

variable1_P1 dword 5

.code

	main1 PROC

;	ORGN = inmediato  DEST = inmediato	NO ES POSIBLE

	;mov 5, 10

;	ORGN = inmediato   DEST = memoria		SI
;	mov destino, origen

	;mov variable1_P1, 10

;	ORGN = inmediato   DEST = memoria	SI
; mov inmediato, registro


	exit 

	main1 ENDP
	END main1


