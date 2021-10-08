TITLE Ciclos anidados con variables

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

contNum dword 1 ; USO DE VARIABLE

.code

 main35 PROC

    ; ENTRADA DE DATOS
    
    ;SOLUCION DE PROBLEMA MEDIANTE USO DE LA PILA (STACK) Y LOOP ""con uso de variables""
    ; PRIMERO QUE ENTRA ES EL ULTIMO QUE SALE - LA PILA ES:
    ; 1 -> 3
    ; 2 -> 2
    ; 3 -> 1

    ;ECX ES ESPECIAL PARA ACCESAR AL CICLO ESTE NO SERA VARIABLE YA QUE SERA LA PILA
    ;SE OCUPA GUARDANDO LA PILA


    
    mov ecx,10 

    ciclo1:

        mov eax,contNum ; cargando el registro en eax

        push ecx    ; guardar valor de ecx en la pila
        
        mov ecx,10   ; utiliza el registro ecx como contador para el cliclo 2

        ciclo2:
            call writedec
            call crlf
            
            loop ciclo2

            pop ecx; sacamos el ultimo valor de la pila

            inc contNum
            loop ciclo1

    exit

    main35 ENDP
    END main35