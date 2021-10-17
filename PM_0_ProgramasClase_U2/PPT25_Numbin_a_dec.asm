TITLE Numero binario a decimal

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
arr byte 9 dup(0)
mensaje db "Dame la longitud maxima: ", 0
mensaje2 db "El numero formado es: ",0
total dword 0
sec2 dword 1

.code

bin PROC

;Lógica del Programa
  
  mov edx, offset mensaje
 call writestring

  mov edx, offset arr
  mov ecx, sizeof arr


 call readstring
 mov ecx, eax
 dec ecx
 mov ebx, 1
 call crlf

 ciclo:
     mov eax, 0
     mov edi, ecx
     mov al,arr[ecx]

     movzx eax, al
     sub eax, 48
     push eax
     mov eax, sec2
     mul ebx
     mov sec2, eax

     pop eax
     mul sec2
     add total, eax

     mov ecx, edi
     dec ecx
     mov ebx,2
     
     cmp ecx,-1
     jg ciclo

  mov edx, offset mensaje2
  call writestring
  mov eax, total
  call writedec
  call crlf

exit
bin ENDP
END bin