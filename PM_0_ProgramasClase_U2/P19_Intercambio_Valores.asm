TITLE Introduccion x

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


.code
main19 PROC

;L�gica del Programa

;SWAP
;Intercambio de valores entre dos variables
;XCHG destino, origen
;Mismas reestricciones de la intruccion mov

mov eax,20
mov ebx,10

call writedec ;eax;20
xchg eax,ebx; eax = ebx y ebx = eax

call crlf

call writedec; eax;10

exit
main19 ENDP
END main19