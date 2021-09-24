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
cadena1_p15 db "Resultado ",0
cadena2_p15 db " de Calificacion",0

.code

main15 PROC
;Lógica del Programa

mov edx , offset cadena1_p15
call writestring

;; imprimir numero

mov eax, 7

call writeint ; imprime un numero de 32 bits con signo. 
              ; El numero que se imprime DEBE de estar contenido en EAX
 
call writedec; imprime un numero de 32 bits SIN signo es decir 7 siendo entero positivo
              ; si es negativo se usa el valor complemento.
              ; El numero que se imprime DEBE de estar contenido en EAX

mov edx , offset cadena2_p15
call writestring
     
 exit

main15 ENDP
END main15