TITLE Saltos Condicionales

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

cadena_1_p28 db "Mensaje 1",0
cadena_2_p28 db "Mensaje 2",0
cadena_3_p28 db "Mensaje 3",0
cadena_4_p28 db "Mensaje 4",0


.code
main20 PROC

;L�gica del Programa

;No existe condicion previa que deba 
;cumplirse para efectuarse el salto
;en este sentido, siempre se ejecuta el salto.

;jmp ubi ; donde ubi es la etiqueta asociada a la ubicacion
;del destino asociada

mov edx, offset cadena_1_p28
call writestring

jmp continuar

mov edx, offset cadena_2_p28
call writestring

mov edx, offset cadena_3_p28
call writestring

continuar:

mov edx, offset cadena_4_p28
call writestring



exit
main20 ENDP
END main20