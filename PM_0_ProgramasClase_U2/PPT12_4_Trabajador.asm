TITLE Salario Trabajador

;DESCRPICI�N
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones
; de Transferencia de datos
; Mtro. Alejandro Garcia
; Autore(s): Hern�ndez De Jes�s Pedro Esteven
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables

Mensaje db "Las hrs. de Trabajo Realizadas Son: ",0
Mensaje2 db "El Salario Total Del Trabajador es: ",0

.code

mainZ PROC
;L�gica del Programa

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