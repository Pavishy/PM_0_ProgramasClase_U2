TITLE Saltos Condicionales

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
mensajepeso db "Dame el peso(en kg): ",0
mensajealtura db "Dame la altura (en Centimetros):  ",0
respuesta db "Tu imc es: ",0
peso dword ?
altura dword ?

.code

    ims PROC    
        ;Lógica del Programa

        mov edx, offset mensajepeso
        call writestring
        call readint
        mov ebx, 1000
        mul ebx
        mov peso,eax

        mov edx, offset mensajealtura
        call writestring
        call readint
        mov altura,eax
        mul altura
        mov altura,eax

        mov eax,peso
        mov edx, 0
        div altura
        
        mov edx, offset respuesta
        call writestring
        call writeint
  
        salir: 
        exit    
    
    ims ENDP
    
    END ims