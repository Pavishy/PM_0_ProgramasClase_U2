TITLE Lectura de numero primo

;DESCRPICI�N 
;Objetivo: Explicaci�n
;
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

ing  db "Igresa el numero: ",0
primo db "Es primo ",0
nprimo db "No es primo ",0    

.code
prim PROC

;L�gica del Programa

    mov edx, OFFSET ing
	call writestring
	call readint
    call crlf
   
    and eax, 1 ; a comparar
    jz npri ;jz = si es cero
    jnz pri ;jnz =salta si no es cero
    pri:
        mov edx, OFFSET primo
	    call writestring
        jmp salir
    npri:
        mov edx, OFFSET nprimo
	    call writestring
        jmp salir
    salir:
        call crlf

exit 
           
prim ENDP 
END prim