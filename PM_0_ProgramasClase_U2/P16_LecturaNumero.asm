TITLE Introduccion Lectura

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
cadena1_p16 db "Ingresa un numero: ",0
cadena2_p16 db "El numero ingresado es: ",0

.code

main16 PROC
;Lógica del Programa

    mov edx, offset cadena1_p16
    call writestring

    call readint ; lee un entero de 32 bits y lo almacena en EAX

    call crlf
    call crlf
    mov edx, offset cadena2_p16; el numero ingresado es:
    call writestring
    call writeint
    
    call crlf
     
 exit

main16 ENDP
END main16