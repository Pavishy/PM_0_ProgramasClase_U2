TITLE Loop

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

.code

 main33 PROC

    ; ENTRADA DE DATOS
    
    ;SOLUCION DE PROBLEMA MEDIANTE USO DE LA PILA (STACK)
    ; PRIMERO QUE ENTRA ES EL ULTIMO QUE SALE - LA PILA ES:
    ; 1 -> 3
    ; 2 -> 2
    ; 3 -> 1

    mov ecx,1

    ciclo1:

        mov eax,ecx ; cargando el registro en eax

        push ecx    ; guardar valor de ecx en la pila
        
        mov ecx,1   ; utiliza el registro ecx como contador para el cliclo 2

        ;;;;;       mov edx,1 deshabilitada
        
        

        ciclo2:
            call writedec
            call crlf
            inc ecx
            cmp ecx,10
            jle ciclo2

            pop ecx; sacamos el ultimo valor de la pila

            inc ecx
            cmp ecx,10
            jle ciclo1

    exit

    main33 ENDP
    END main33