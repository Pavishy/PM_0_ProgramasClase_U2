TITLE Introduccion Impresion

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
cadena1_p14 db "hola mundo",0
cadena2_p14 db "tacos",0

.code

main14 PROC
;Lógica del Programa

mov edx , offset cadena1_p14
call writestring
 
call crlf
 
mov edx , offset cadena2_p14
call writestring
     
 exit

main14 ENDP
END main14