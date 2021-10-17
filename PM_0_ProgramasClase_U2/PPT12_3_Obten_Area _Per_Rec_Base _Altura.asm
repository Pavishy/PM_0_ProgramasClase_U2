TITLE Obtención del área y el perímetro de un 
;rectángulo ingresando su base y altura

;DESCRPICIÓN Obtener del área y el perímetro 
; de un rectángulo ingresando su base y altura
;Objetivo:  
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
txtdat_1_p2 db "Ingresa la base: ", 0
txtdat_2_p2 db "Ingresa la altura: ", 0
txtresul_p2 db "El area es: ", 0
txtresul2_p2 db "El perimetro es: ", 0

.code

	mainw PROC	

		mov edx, offset txtdat_1_p2
		call writestring
		call crlf
		call readint

		mov edx, offset txtdat_2_p2
		call writestring
		call crlf

		mov ebx, eax 
		call readint 
		mul ebx

		mov edx, offset txtresul_p2
		call writestring
		call crlf
		call writedec

		add ebx, eax
		mov ecx, 2
		mul ecx
		call crlf

		mov edx, offset txtresul2_p2
		call writestring
		call crlf
		call writedec

		exit	
	
	mainw ENDP
	END mainw