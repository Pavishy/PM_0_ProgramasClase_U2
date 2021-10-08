TITLE Indice de Masa Corporal

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
resp db "La velocidad es: ",0
inputdist db "Dame la distancia: ", 0
inputti   db "Dame el tiempo: ",0 

.code

    velocidad PROC    
        ;Lógica del Programa
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