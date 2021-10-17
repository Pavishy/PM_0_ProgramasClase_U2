TITLE Pedir N números e indicar cuantos son pares y cuantos no son pares.    

;DESCRPICIÓN 
;Objetivo: Lectura de números por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

mensaje db "Ingresa un numero: ", 0
mensajetotal db "Dame el total de numeros: ",0
mensajepar db "Numeros pares: ",0
mensajeimpar db "Numeros imapres: ",0

par dword 0
impar dword 0

.code

	nparimp PROC
	 mov edx, offset mensajetotal
	 call writestring
	 call readint 
	 mov ecx, eax
	 mov ebx, 2

	 ciclo:
	      mov edx, offset mensaje
		  call writestring
		  call readint
		  mov edx, 0
		  div ebx

		  cmp edx, 0
		     je Cic_par
			 inc impar
		      jmp nextciclo

			 Cic_par:
			  inc par

		 nextciclo:
	 loop ciclo

	 mov edx, offset mensajepar
	 call writestring
	 mov eax, par
	 call writedec
	 call crlf

	 mov edx, offset mensajeimpar
	 call writestring
	 mov eax, impar
	 call writedec
	 call crlf

	 exit

	nparimp ENDP
	END nparimp
