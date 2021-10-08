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

;Imprimir la tabla de Multiplicar ingresado por el usuario

.data
 


.code

 main30 PROC

    ;LOOP: ; es una instruccion que permite generar ciclos
            ;como un for, aqui se corrobora (compara) ecx y 
            ;se decrementa automaticamente

    mov ecx,10

    ciclo:
        mov eax, ecx
        call writedec
        call crlf

        loop ciclo

        exit

    main30 ENDP
    END main30