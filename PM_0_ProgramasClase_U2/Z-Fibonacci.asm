TITLE FIBONACCI

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
   previo DWORD ?
   actual  DWORD ?
   inputlim db "Dame el limite: ", 0 

.code

 mainfi PROC
 
    mov edx, offset inputlim
    call writestring
    call readint
    mov ecx, eax

     ; Recibe: ECX como entrada n
     ; Devuelve: EAX como enésimo número de Fibonacci calculado
     ; ------------------------------------------------------------
       mov   eax,1         
       mov   previo,0         
       mov   actual,0         
    L1:
       add eax,previo       ; eax = actual + previo      
       mov edx, actual       ; previo = actual
       mov previo, edx
       mov actual, eax
   
       call writedec
       call crlf
       dec ecx
       jnz L1
    salir: 
        exit

    mainfi ENDP
    END mainfi
