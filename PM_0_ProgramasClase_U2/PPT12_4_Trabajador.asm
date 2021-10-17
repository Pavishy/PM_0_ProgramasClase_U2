TITLE Salario Trabajador

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones
; de Transferencia de datos
; Mtro. Alejandro Garcia
; Autore(s): Hernández De Jesús Pedro Esteven
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables

Mensaje db "Las hrs. de Trabajo Realizadas Son: ",0
Mensaje2 db "El Salario Total Del Trabajador es: ",0

.code

mainZ PROC
;Lógica del Programa

	;espacio de memoria donde se va a guardar
	mov edx , offset Mensaje
	call writestring
	call readInt ; lectura de teclado
	call crlf ;salto de linea

	mov ebx,eax
	mov ecx, 50
	mul ecx
	mov edx , offset Mensaje2
	call writestring
	call writedec 
	exit

mainZ ENDP
END mainZ