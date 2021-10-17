TITLE Solicitar N pares de puntos (2 puntos por iteración) 
;y calcular el punto medio por cada par de puntos. Nota: un punto se encuentra constituido por una coordenada 
;X y una coordenada Y.

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
furmensaje db "Dame el total de puntos: ", 0
furx1 db "Dame x1: ", 0
furx2 db "Dame x2: ", 0
fury1 db "Dame y1: ", 0
fury2 db "Dame y2: ", 0

msj_p37_pregunta db "desea repetir el ciclo: (1: repetir, 0: salir)", 0 


form1 db "(", 0
form2 db ",", 0
form3 db ")", 0

x1 dword ?
x2 dword ?
y1 dword ?
y2 dword ?

.code

paresn PROC
;Lógica del Programa

  mov edx, offset furmensaje
  call writestring
  call readdec
  mov ecx, eax

  Ciclo:
       mov ebx, 2

      mov edx, offset furx1
      call writestring
      call readint
      mov x1, eax

      mov edx, offset fury1
      call writestring
      call readint
      mov y1, eax
      call crlf

      mov edx, offset furx2
      call writestring
      call readint
      mov x2, eax

     mov edx, offset fury2
      call writestring
      call readint
      mov y2, eax

      mov eax, x1
      add eax, x2
      mov edx, 0
      idiv ebx
      mov x1, eax

      mov eax, y1
      add eax, y2
      mov edx, 0
      idiv ebx
      mov ebx, eax

      mov edx, offset form1
      call writestring
      mov eax, x1
      call writeint

      mov edx, offset form2
      call writestring
      mov eax, ebx
      call writeint

      mov edx, offset form3
      call writestring

      call crlf
      call crlf
      dec ecx
      mov eax,ecx
      cmp eax,0
      jz salir
	  jmp ciclo

      salir:
      exit


exit
paresn ENDP
END paresn