TITLE Lectura de numero mayor

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
mensaje db "Inserta la matriz",0
respuesta db "La Determinante es: ", 0
aux dword ? 

.code

    mat PROC    
        ;Lógica del Programa
        mov edx, offset mensaje
        call writestring
        
        mov ecx, 4

        ciclo:
            call crlf
             call readint
             push eax
             dec ecx
             jnz ciclo
        
       pop edx   ;[1, 1]
       pop ecx    ;[1, 0]
       pop ebx    ;[0, 1]
       pop eax    ;[0, 0]
       mul edx
       push eax

       mov eax, ebx
       mul ecx
       mov ebx, eax
       pop eax
       sub eax, ebx

        mov edx, offset respuesta
        call writestring
        call writeint
        
        exit    
    mat ENDP
    
    END mat