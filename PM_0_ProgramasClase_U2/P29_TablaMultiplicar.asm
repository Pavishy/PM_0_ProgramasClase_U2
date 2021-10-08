TITLE Tabla de Multiplicar

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

   msj1_p29 db "Que tabla quieres visualizar?: ", 0 

   ;    ej:  5x1=?
   ;    tabla + " x " + contador + " = " + resultado

   msj1_operadorX_p29 db " x ", 0 
   msj1_operadorIgual_p29 db " = ", 0 

.code

 main29 PROC
 
    mov edx, offset msj1_p29
    call writestring ;despliega el mensaje
    call readint ; leer tabla -> eax

    mov ebx,1 ; registro usado como contador para la tabla

    ciclo:
    
        call writedec ; imprime el valor de la tabla

        mov edx,offset msj1_operadorX_p29
        call writestring

        mov ecx, eax ; respalda en ecx el valor de la tabla (eax)

        mov eax, ebx ; guardar en eax el valor del contador
        call writedec

        mov edx,offset msj1_operadorIgual_p29
        call writestring 


        mul ecx ; eax = eax (contador) * ecx (tabla)

        call writedec

        mov eax, ecx ; regresar a eax el valor de ecx (valor de la tabla)

        call crlf

        inc ebx
        cmp ebx, 10
        jle ciclo

        exit

    main29 ENDP
    END main29
