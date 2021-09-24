TITLE Introduccion DIV

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
;
; MULT: Multiplica a dos operandos 
;
; Sintaxis: SUB origen 
;
; La operacion se realiza con el operando eax y origen. El resultado se almacena en eax 
;
; Aplica las mismas caracteristicas que MOV
; - Los operandos deben tener el Mismo Tamaño("Tipo de Dato")
; - Movimientos validos:
;
; origen -> destino

; memoria a registro
; registro a memoria
; registro a registro
; inmediato a memoria
; inmediato a registro

var1_P8 dword 5
var2_P8 sdword -5

.code

  main8 PROC
;Lógica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;Ejemplo 1 

mov ebx,2

mov eax,3

mul ebx; eax = eax * abx

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;Ejemplo 2 

 ;eax = 6

mov ebx, -2

mul ebx ; eax = eax * ebx = -12
 exit

 main8 ENDP
 END main8