TITLE Saltos Condicionales

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

cadena_1_p28 db "Mensaje 1",0
cadena_2_p28 db "Mensaje 2",0
cadena_3_p28 db "Mensaje 3",0
cadena_4_p28 db "Mensaje 4",0


.code
main21 PROC

;Lógica del Programa

; NO EXISTE CONDICION PREVIA QUE DEBA CUMPLIRSE PARA
; EFECTUARSE EL SALTO EN ESTE SENTIDO, SIEMPRE SE EJECUTA
; EL SALTO
;
; TIPO_SALTO ubi ;donde ubi es la etiqueta asociada a la ubicacion destino del salto
				 ;tipo_salto es el tipo de salto que comprueba una cindicion en particular

;DEBE REVISARSE EL REGISTRO DE BANDERAS PARA COMPROBAR SI SE CUMPLE O NO CON UNA CONDICION


; jmp ubi ; donde ubi es la etiqueta asociada a la ubicacion destino
; del salto

MOV EAX,10

CMP EAX,12 ; COMPARA SI DOS OPERANDOS SON IGUALES O SI
		   ; UNO ES MAYOR O MENOR QUE EL OTRO
			; LA COMPARACION SE REALIZA APLICANDO UNA RESTA ENTRE LOS
			; OPERANDOS, QUE NO MODIFICA LOS OPERANDOS, SIN EMBARGO,
			; SI MODIFICA A LAS BANDERAS

CMP EAX,10

CMP EAX,5

exit
main21 ENDP
END main21