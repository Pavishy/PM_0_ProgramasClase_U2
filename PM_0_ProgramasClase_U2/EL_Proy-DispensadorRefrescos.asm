TITLE Proyecto Refrescos

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s): Nosotros
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data

; Área de Declaración de Variables

venta db "Compra realizada con exito!!! :D ",0
producto db " Gracias por su compra <3 ",0

machine db "MAQUINA EXPENDEDORA DE SODAS LOS INGENIEROS",0
msrefresco1 db "Fanta", 0
msrefresco2 db "Escuis", 0
msrefresco3 db "Jarritos", 0
msrefresco4 db "Sprite", 0
msrefresco5 db "Fresca", 0

Teclea db "Introduce: ", 0
mainAccion0 db "0 Para salir", 0
mainAccion1 db "1 Para modificar el producto", 0
mainAccion2 db "2 Para comprar el producto", 0

printMensaje db "Estos son los productos:", 0
printCodigo db ", Codigo:", 0
printPrecio db ", Precio: $", 0
printNombre db "Nombre:", 0
printTotal db ", Cantidad: ", 0
printDame db "Dame el codigo del producto: ", 0
printAccion1 db "0 para escoger un producto",0 
printAccion2 db "cualquier otro numero para regresarte al menu principal", 0

proAccion0 db "0 Para escoger otro producto ", 0
proAccion1 db "1 Para modificar el precio", 0
proAccion2 db "2 Para modificar el codigo", 0
proAccion3 db "3 Para modificar la cantidad", 0
proAccion4 db " Cualquier numero para salir", 0

EMensaje db "Error de codigo", 0
Error db "Numero no valido", 0
sry db "No cuenta con el dinero suficiente",0

SoliCant db "Ingresa la nueva cantidad: ", 0
SoliCod db "Ingresa el nuevo codigo: ", 0
SoliPrec db "Ingresa el nuevo precio: ", 0

Dinero db "Ingresa tu dinero: ", 0
Cambio db "Su cambio es de: ",0
Pesos db " Pesos",0

arrmoney  byte  11,12,13,14,15 
arrcode  byte  21,22,23,24,25 
arrtotal byte 31,32,33,34,35 

lim dword 6
two dword 2

.code

mainProyecto PROC

  MainMenu:
  	  call crlf
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

		 cmp eax, 2
		      je ModiCode

		cmp eax, 1
		      je ModiPrec

		ModiCant:
		    ;imprimir mensaje y pedir la cantidad
			mov edx, offset SoliCant
			call writestring
			call readdec
			
			mov arrtotal[ecx], al 
			
			;	eax = 1646721212 (int=32,767) al = 202 (byte=256 limite) ax = 0 todos tienen = valor  0 al 255

		   jmp Productos

		ModiPrec:
			mov edx, offset SoliPrec
			call writestring
			call readdec
			
			mov arrmoney[ecx], al 

		   jmp Productos
		    
		ModiCode:
			mov edx, offset SoliCod
			call writestring
			call readdec
			
			cmp eax,255
				jg ErrorProd  ;	
			
			mov arrcode[ecx], al ; ecx guarda la posicion

		   jmp Productos
		
		ErrorProd:
			mov edx, offset EMensaje
			call writestring
			jmp Productos


Vender: 
		
		call crlf

		mov edx, OFFSET Dinero
		call WriteString
		call readdec
			
		sub al,arrmoney[ecx]

		jl SR
		
		call crlf
		call crlf

		mov edx, OFFSET venta
		call WriteString
		call crlf
		mov edx, OFFSET producto
		call WriteString

		call crlf
		call crlf

		mov edx, OFFSET Cambio
		call WriteString 
		call WriteDec

		mov edx, OFFSET Pesos
		call WriteString 
		call crlf
		
		dec arrtotal[ecx]
		call crlf


  Imprimir:
  	   call crlf
	   mov edx, offset machine
	   call writestring
	   call crlf   
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
	       je Vender
		   jl Productos

	   Encontrado:
	       mov edx, 0
		   mov eax, ebx
		   div two

		   cmp edx, 1
		     je Vender
			 jmp Productos

SR:
	mov edx, offset sry 
	call writestring 
	call crlf
	call crlf
	JMP Vender

  Ending:
  exit

mainProyecto ENDP	
END mainProyecto

