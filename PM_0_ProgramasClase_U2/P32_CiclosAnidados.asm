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

 main32 PROC

    ; ENTRADA DE DATOS
        
    mov ecx,1

    ciclo1:
        mov edx,1
        mov eax,ecx

        ciclo2:
            call writedec
            call crlf
            inc edx
            cmp edx,10
            jle ciclo2
           
        inc ecx
        cmp ecx,10
        jle ciclo1

    exit

    main32 ENDP
    END main32