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
 
msj_p31 db "Ingresa un numero: ",0

.code

 main31 PROC

    ; ENTRADA DE DATOS
        
    mov edx, offset msj_p31
    call writestring
    call readint

    call crlf
    call crlf
    
    ;;;;;;;;;;;;;;;;
    ;N=10
    ; 10 <- par o impar
    ; 9 <- par o impar
    ; "" <- par o impar
    ; ""
    ; ""
    ; ""
    ; 0 <- par o impar

    ;LOOP: ; es una instruccion que permite generar ciclos
            ;como un for, aqui se corrobora (compara) ecx y 
            ;se decrementa automaticamente

    ; PROGRAMA: IMPRIMIR LOS NUMEROS PARES EXISTENTES
    ; ENTRE N Y 0 PARTIENDO DE MANERA DECRECIENTE. Donde N >= 0
    
    ;eax dividendo
    
    mov ebx, 2  ;divisor
    mov ecx, eax    ;respaldo de eax para no perder el valor al hacer la
                    ;division
    
    mov edx,0   ;evitar el overflow

    div ebx

    cmp edx,0   ;contiene el residuo

    jz ciclo
        ; si no es cero...
        dec ecx ;<- restamos uno a eax para que sea par
    
    ; ----------------------------------- ;?


    ciclo:
        mov eax,ecx
        call writedec
        call crlf

        dec ecx ; decremento adicional para que en
                ; acumulativo sea como si a ecx se le decrementara
                ; de 2 en 2 por cada iteracion = ecx-2 pares
        loop ciclo

    exit


    main31 ENDP
    END main31