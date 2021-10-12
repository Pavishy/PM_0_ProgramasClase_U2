TITLE Determinar si la suma de dos números es mayor a un tercer número

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data

num1 db "Ingresa el 1er numero A: ", 0
num2 db "Ingresa el 2do numero B: ", 0
num3 db "Ingresa el 3er numero C: ", 0

rev1 db "La suma de B y C ies mas alto que A", 0
rev2 db "La suma de A y B ies mas alto que C", 0
rev3 db "La suma de C y C ies mas alto que B", 0


.code

	maindsnm PROC

;		mov edx, offset num1
;		call writestring
;		call crlf
;		call readint   

;		mov edx, offset num2
;		call writestring
;		call crlf
;		call readint  

;		mov eax, ecx
		

;		;;;
;		add eax,ecx
;		jg c
;
;		mov edx, offset rev1
;		call writestring
;		call crlf
;		jmp continuar

continuar:

	exit 

maindsnm ENDP
END maindsnm

	;jz = si es cero
	;jnz =salta si no es cero
	
	;je = salta si es igual
	;jne = salta si no es igual

	;jg = salta si es mayor
	;jng = salta si no es mayor o igual
	
	;jl = salta si es menor
	;jnl = salta si no es menor

	;jle = salta si es menor o igual
	;jnle =  salta si no es menor o igual


	;;;;;;;;;;;;;;;;;;;;;;;;;;;

