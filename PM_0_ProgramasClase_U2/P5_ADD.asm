TITLE Introduccion ADD;

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data

;Instruccion MOV
;	Sintaxis
;Area de declaracion de variables 
;           ADD suma dos operandos 
;        Sintaxis: ADD destino, origen 
;
;       El resultado se almacena en destino 
;
;        Aplica la misma caracteristica de MOV 
;        -Los operandos deben tener del Mismo Tamaño ("Tipo de Dato") de los operandos 
;        - Movimientos validos 
;
;           origen -> destino 
;           memoria a regitro 
;           registro a memoria 
;           registroa a registro 
;           inmediato a registro 
;

var1_P5 word 5
var2_P5 dword 5d

.code

	main5 PROC

		mov eax, 10

		;add destino, origen

		add eax, var2_P5 ; eax=15	

			exit 

	main5 ENDP
	END main5
