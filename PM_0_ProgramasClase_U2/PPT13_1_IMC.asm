TITLE Indice de Masa Corporal

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
resp db "La velocidad es: ",0
inputdist db "Dame la distancia: ", 0
inputti   db "Dame el tiempo: ",0 

.code

    velocidad PROC    
        ;L�gica del Programa
        mov edx, offset inputti
        call writestring
        call readint
        mov ebx, eax

        mov edx, offset inputdist
        call writestring
        call readint
        
        mov edx, 0
        div ebx

        mov edx, offset resp
        call writestring
        call writeint

        salir: 
        exit    
    
    velocidad ENDP
    
    END velocidad