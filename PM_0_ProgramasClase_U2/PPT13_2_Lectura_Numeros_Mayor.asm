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
mensaje db "Dame el total de numeros: ", 0
respuesta db "El numero mayor es: ",0
mayor dword -2147483648

.code

    num PROC    
        ;L�gica del Programa

        mov edx, offset mensaje
        call writestring
        call readint
        mov ecx, EAX
        
        ciclowhile:
            dec ecx
            call crlf
            cmp ecx, 0
            jl salir

            call readint
            cmp eax, mayor
                jg askmayor
                jmp ciclowhile

            askmayor:
               mov mayor, eax
               jmp ciclowhile
 
        salir: 
        mov edx, offset respuesta
        call writestring
        mov eax, mayor
        call writeint
        exit    
    
    num ENDP
    
    END num