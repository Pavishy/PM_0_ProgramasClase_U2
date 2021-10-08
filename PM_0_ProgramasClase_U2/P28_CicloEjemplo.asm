TITLE Ciclo Ejemplo

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

;Obtener el numero factorial del valor
;valor : 5 -> 5x4x3x2x1 ->> 1x2x3x4x5

.data

;Area de Declaracion de Variables

msj1_p28 db "Ingresa un valor para calcular el factorial: ",0
msj2_p28 db "El resultado es: ",0

.code

 main28 PROC

    mov edx, offset msj1_p28
    call writestring

    call readint ;eax
 
    call crlf

    mov ebx,eax ;se copia el valor en un registro aparte

    ciclo:
        dec ebx

            mul ebx

        cmp ebx,1
        jg ciclo

        mov edx, offset msj2_p28
        call writestring

        call writedec
            
        exit

    main28 ENDP
    END main28
