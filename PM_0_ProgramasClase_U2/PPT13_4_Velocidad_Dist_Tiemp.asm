TITLE Saltos Condicionales

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
mensajepeso db "Dame el peso(en kg): ",0
mensajealtura db "Dame la altura (en Centimetros):  ",0
respuesta db "Tu imc es: ",0
peso dword ?
altura dword ?

.code

    ims PROC    
        ;L�gica del Programa

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