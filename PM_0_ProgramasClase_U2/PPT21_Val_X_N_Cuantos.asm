TITLE Pedir un valor para X y N n�meros e indicar cuantas veces aparece X en los N n�meros.�

;DESCRPICI�N 
;Objetivo: Lectura de n�meros por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

mensaje db "Dame un numero: ",0
mensajetotal db "Dame el total de numeros: ", 0
count dword 0
mensajen1 db "El numero ", 0
mensajen2 db " aparece ", 0
mensajen3 db " veces.", 0

.code

	mainXN PROC
	      mov edx, offset mensaje
		  call writestring
		  call readint
		  mov ebx, eax

		  mov edx, offset mensajetotal
		  call writestring
		  call readdec
		  mov ecx, eax
		  inc ecx
		  call crlf

		  ciclo:
		      dec ecx
			  jz next

			  mov edx, offset mensaje
			  call writestring
			  call readint

			  cmp ebx,eax
			  jne ciclo
			  
			  inc count
			  jmp ciclo

	       next:
			 call crlf
		     mov edx, offset mensajen1
			 call writestring
			 mov eax, ebx
			 call writedec

			 mov edx, offset mensajen2
			 call writestring
			 mov eax, count
			 call writedec

			 mov edx, offset mensajen3
			 call writestring
			 call crlf

			exit

	mainXN ENDP
	END mainXN


