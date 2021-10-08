TITLE Cálculo del doble y el triple de un número ingresado por el usuario.

;DESCRPICIÓN
;Objetivo:  Cálcular del doble y el triple de un número ingresado por el usuario
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
;
cadena1_p1 db "Ingresa un numero que se calculara el doble y el triple ",0
variableRes db "El primer numero al doble es: ",0
variableRes2 db "El primer numero al triple es: ",0

.code

mainY PROC
;Lógica del Programa

mov edx , offset cadena1_p1
call writestring
call readInt

mov ebx,eax 

			;xxxxxxxxxxxx
			;guardo lo que contiene eax 
			;(el numero que haya ingresado el usuario)
			;xxxxxxxxxxxx

add eax,ebx 

			;xxxxxxxxxxxx
			;sumo lo guardado (1 er dato = ebx) 
			;y lo que aun contiene eax (el mismo dato)
			;xxxxxxxxxxxx

call crlf

mov edx,offset variableRes ;despliego el resultado
call writeString
call writedec
call crlf

add eax,ebx 

			;xxxxxxxxxxxx
			;realizo la suma del dato dentro de
			;ebx = lo que el usuario ingreso
			;y lo que aun contiene eax, lo cual fue la
			;primer suma acumulada
			;xxxxxxxxxxxx

call crlf

mov edx,offset variableRes2
call writeString
call writedec

call crlf

 exit

mainY ENDP
END mainY