TITLE Determinar si la suma de dos números es mayor a un tercer número

;DESCRPICIÓN
;Objetivo: Explicación
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
mensajetotal db "Dame el total de numeros: ",0
mensajeformula db "El resultado fue ",0

mesx db "Dame x: ", 0
mesy db "Dame y: ", 0

total dword 0

.code

manhattan PROC
;Lógica del Programa
  
   mov edx, offset mensajetotal
   call writestring
   call readdec
   mov ecx, eax

   Ciclo:
     call crlf
     mov edx, offset mesx
     call writestring
     call readint
     push eax

      mov edx, offset mesy
     call writestring
     call readint
     mov ebx, eax
     pop eax
     sub eax, ebx

     cmp eax, 0
        jge Next

    push eax
    mov eax, 0
    pop ebx
    sub eax, ebx

     Next:
        add total, eax
       
   loop Ciclo

    call crlf
   mov edx, offset mensajeformula
   call writestring
   mov eax, total
   call writedec

exit
manhattan ENDP
END manhattan