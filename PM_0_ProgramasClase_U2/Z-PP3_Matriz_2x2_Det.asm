TITLE Lectura de numero mayor

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
mensaje db "Inserta la matriz",0
respuesta db "La Determinante es: ", 0
aux dword ? 

.code

    mat PROC    
        ;L�gica del Programa
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