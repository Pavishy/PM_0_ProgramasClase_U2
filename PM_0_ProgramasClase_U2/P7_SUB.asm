TITLE Introduccion SUB

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
; SUB: Resta dos operandos
;
; Sintaxis: SUB destino, origen
;
; El resultado se almacena en destino
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

var2_P7 dword 5
var3_P7 sdword -5

.code

 main7 PROC
;Lógica del Programa
mov eax, 10

 ;sub destino, origen
;sub eax, var2_P7 ; 10 - 5 = eax = 5 --->>> minuendo, sustraendo

 ;sub var2_P7, eax ; 5 - 10 = var2_P7 = -5 --->>> minuendo, sustraendo

sub eax, var3_P7 ; 10 -(-5) => 10 + 5 => eax = 15 --->>> minuendo, sustraendo

 ;Conclusion: Se respetan las leyes de los signos

 ; El destino es el operando al que se le va a restar al sustraendo (origen),
; almacenandosé el resultado de la operación (resta) en el destino

 exit
main7 ENDP
END main7