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

 main34 PROC

    ; ENTRADA DE DATOS
    
    ;SOLUCION DE PROBLEMA MEDIANTE USO DE LA PILA (STACK) Y LOOP
    ; PRIMERO QUE ENTRA ES EL ULTIMO QUE SALE - LA PILA ES:
    ; 1 -> 3
    ; 2 -> 2
    ; 3 -> 1

    mov ebx,1 ; contador del 1 al 10
    mov ecx,10 

    ciclo1:

        mov eax,ebx ; cargando el registro en eax

        push ecx    ; guardar valor de ecx en la pila
        
        mov ecx,10   ; utiliza el registro ecx como contador para el cliclo 2

        ciclo2:
            call writedec
            call crlf
            
            loop ciclo2

            pop ecx; sacamos el ultimo valor de la pila

            inc ebx
            loop ciclo1

    exit

    main34 ENDP
    END main34