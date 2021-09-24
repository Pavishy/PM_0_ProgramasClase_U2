TITLE Introduccion DIV

;DESCRPICI�N
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
;
; MULT: Multiplica a dos operandos 
;
; Sintaxis: SUB origen 
;
; La operacion se realiza con el operando eax y origen. El resultado se almacena en eax 
;deacuerdo al tipo de dato del operando origen.
;
;
; Aplica las mismas caracteristicas que MOV en cuanto el Mismo Tama�o de Los operandos deben tener el Mismo Tama�o("Tipo de Dato")
; 
; - Movimientos validos:
;
; origen -> destino

; memoria a registro
; registro a memoria
; registro a registro

.code

 main10 PROC
;L�gica del Programa

;No se inicializo a todo el registro eax, sin embargo an la multiplicacion se esta utilizando todo esto 
;puede ocacionar algunos problemas. SE DEBE TENER CUIDADO EN ESTA SITUACION 
;

mov al, 3
mov ebx, 2
mul ebx 

 exit

main10 ENDP
END main10