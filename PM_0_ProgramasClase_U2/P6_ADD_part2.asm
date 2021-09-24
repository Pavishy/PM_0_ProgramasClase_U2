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

var2_p6 dword -5 ; se puede pero no es correcto 
var3_p6 sdword -5 ; si el tipo de dato le anteponemos la "s"entonces este esta destinado
                   ;para trabajar con numeros con signo

.code

	main6 PROC

		mov eax, -10

		;add destino, origen

		add eax, var2_P6 ; eax=15	

			exit 

	main6 ENDP
	END main6
