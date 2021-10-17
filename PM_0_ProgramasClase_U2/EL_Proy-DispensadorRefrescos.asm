TITLE Proyecto Refrescos

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Sarmiento Dominguez Miguel Angel
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
msrefresco1 db "Fanta", 0
msrefresco2 db "Coca", 0
msrefresco3 db "Pepsi", 0
msrefresco4 db "Sprite", 0
msrefresco5 db "Fresca", 0

Teclea db "Teclea:", 0
mainAccion0 db "0 para salir", 0
mainAccion1 db "1 para modificar el producto", 0
mainAccion2 db "2 para comprar el producto", 0

printMensaje db "Estos son los productos:", 0
printCodigo db ", Codigo:", 0
printPrecio db ", Precio: $", 0
printNombre db "Nombre:", 0
printTotal db ", Cantidad: ", 0
printDame db "Dame el codigo del producto: ", 0
printAccion1 db "0 para escoger un producto",0 
printAccion2 db "cualquier otro numero para regresarte", 0

proAccion0 db "0  para escoger otro producto ", 0
proAccion1 db "1 para modificar el precio", 0
proAccion2 db "2 para modificar el codigo", 0
proAccion3 db "3 para modificar la cantidad", 0
proAccion4 db "cualquier numero para salir", 0

Error db "Numero no valido", 0

arrmoney  byte  11,12,13,14,15 
arrcode  byte  21,22,23,24,25 
arrtotal byte 31,32,33,34,35 

lim dword 6
two dword 2

.code

mainProyecto PROC

  MainMenu:
      mov edx, offset Teclea
	  call writestring
	  call crlf

	  mov edx, offset mainAccion0
	  call writestring
	  call crlf
	  
	  mov edx, offset mainAccion1
	  call writestring
	  call crlf

	  mov edx, offset mainAccion2
	  call writestring
	  call crlf
	  call readdec

	  cmp eax, 0
	     je Ending
		 jl ErrorMain

	   cmp eax, 2
	      jg ErrorMain
		  
		  mov ebx, 1
		  je Imprimir
		  mov ebx, 0
		  jmp Imprimir

		ErrorMain:
		mov edx, offset Error
		call writestring
		call crlf
		jmp MainMenu

  Productos:
         push ecx
         mov ebx, 2
		 mov ecx, lim

		 push offset proAccion4
		 push offset proAccion3
		 push offset proAccion2
		 push offset proAccion1
		 push offset proAccion0
		 push offset Teclea

		 Ciclo_ProMenu:
		       call crlf
		       pop edx
			   call writestring
		 loop Ciclo_ProMenu

		 pop ecx
		 call crlf
		 call readdec

		 cmp eax, 0
		     je Imprimir
			 jl MainMenu

		 cmp eax, 3
		     jg MainMenu
			 je ModiCant

		 cmp eax, 1
		      je ModiCode

		ModiCant:
		   jmp Productos
		    
		ModiCode:
		   jmp Productos

  Atender:
      mov ebx, 3

  Imprimir:

       call crlf
       push ebx
       push offset msrefresco5
	   push offset msrefresco4
	   push offset msrefresco3
	   push offset msrefresco2
	   push offset msrefresco1
	
	   mov ecx, lim
	   mov ebx, ecx
	   dec ecx
	   
	   Ciclo:
	       mov edi, lim
		   sub edi, ebx

	       mov edx, offset printNombre
		   call writestring
		   pop edx
		   call writestring

		   mov edx, offset printCodigo
		   call writestring
		   mov eax, 0
		   mov al,  arrcode[edi]
		   movzx eax, al
		   call writedec

		   mov edx, offset printPrecio
		   call writestring
		   mov eax, 0
		   mov al,  arrmoney[edi]
		   movzx eax, al
		   call writedec

		   mov edx, offset printTotal
		   call writestring
		   mov eax, 0
		   mov al,  arrtotal[edi]
		   movzx eax, al
		   call writedec
		    call crlf
			mov ebx, ecx
	   loop Ciclo

	   call crlf
	   call crlf
	   mov edx, offset printDame
	   call writestring
	   call readint

	   mov ecx, lim
	   mov edx, 0
	   pop ebx
	   dec ecx
	 
	   Buscar:
	        mov dl, arrcode[ecx]

	        cmp al, dl
			  je Encontrado
	   
			dec ecx
			cmp ecx, -1
			jg Buscar
	  
	   mov edx, offset printAccion1
	   call writestring
	   call crlf

	   mov edx, offset printAccion2
	   call writestring
	   call crlf
	   call readdec

	    cmp eax, 0
	      je Imprimir
	   cmp ebx, 1
	       jle MainMenu
	   cmp ebx, 3
	       je Atender
		   jl Productos


	   Encontrado:
	       mov edx, 0
		   mov eax, ebx
		   div two

		   cmp edx, 1
		     je Atender
			 jmp Productos

  Ending:
  exit

mainProyecto ENDP	
END mainProyecto