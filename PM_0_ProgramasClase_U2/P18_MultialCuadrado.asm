TITLE Introduccion Lectura

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
variable1 db "Ingresa un numero",0
variableRes db "El resultado es: ",0

.code
main18 PROC

;L�gica del Programa
mov edx,offset variable1

call writeString
call crlf
call readInt

mul eax ;eax = eax * eax
mov edx,offset variableRes

call writeString
call writeInt

exit
main18 ENDP
END main18