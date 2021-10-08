TITLE Hoja de Presentacion

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
cadena1_p14 db "    UNIVERSIDAD AUTONOMA DE TAMAULIPAS",0
cadena2_p14 db "Facultad de Ingenieri Arturo Narro Siller",0
cadena3_p14 db "        Sistemas Computacionales",0
cadena4_p14 db "              Docente: ",0
cadena5_p14 db "    Garcia Ruiz Alejendro Humberto",0
cadena6_p14 db "Materia: Programacion de Microprocesadores",0
cadena7_p14 db "              Alumnos: ",0
cadena8_p14 db"     Escalante Figueroa Pablo Angel",0
cadena9_p14 db "     Casanova Gomez Jorge Alberto",0
cadena10_p14 db "   Hernandez de Jesus Pedro Esteven",0
cadena11_p14 db "    Aguirre Barbosa Mario Alberto",0
cadena12_p14 db "          Grado y Grupo: 7-G",0

.code

mainX PROC
;Lógica del Programa

mov edx , offset cadena1_p14
call writestring
call crlf
mov edx , offset cadena2_p14
call writestring
call crlf
mov edx , offset cadena3_p14
call writestring
call crlf
mov edx , offset cadena4_p14
call writestring
call crlf
mov edx , offset cadena5_p14
call writestring
call crlf
mov edx , offset cadena6_p14
call writestring
call crlf
mov edx , offset cadena7_p14
call writestring
call crlf
mov edx , offset cadena8_p14
call writestring
call crlf
mov edx , offset cadena9_p14
call writestring
call crlf
mov edx , offset cadena10_p14
call writestring
call crlf
mov edx , offset cadena11_p14
call writestring
call crlf
mov edx , offset cadena12_p14
call writestring
call crlf

 exit

mainX ENDP
END mainX