TITLE MASM Maquina de Refrescos

; Description: Proyecto final de la unidad 2

INCLUDE Irvine32.inc

.data

D1 BYTE "[_______________________________________]" ,0
D2 db "| 1234. JUGO BONIG                 |" ,0  		;18 PESOS 
D3 db "| 5555. REFRESCO ESCUIS DE HIERRO  |" ,0  		;30 PESOS
D4 db "| 6166. FANTA DE FRESA             |" ,0 		;20 PESOS
D5 db "| 6913. JARRITO TUTIFRUTI          |" ,0  		;20 PESOS

item1 db "Aqui esta tu: JUGUITO DEL BOING DE GUAYABA",0
item2 db "Aqui esta tu: REFRESCO DE HIERRO SABOR VAINILLA",0
item3 db "Aqui esta tu: REFRESCO DE FRESA DE FANTA",0
item4 db "Aqui esta tu: REFRESCO DE JARRITO CON SABOR A FRUTOS ROJOS",0

str1 db "Por favor ingrese su dinero: ",0
str2 db "10 Pesos: ",0
str3 db "20 Pesos: ",0
str4 db "50 Pesos: ",0
str5 db "Dinero total ingresado: ",0
str6 db "Por favor elija una bebida: ",0
str7 db "Este es tu cambio: ",0
str8 db "GRACIAS! ", 0

sry db "¡¡¡EL DINERO QUE INGRESO NO ES SUFICIENTE !!! INTÉNTALO DE NUEVO !",0
cent db " PESOS",0

q1 db "Quieres salir del modo programador?? (SI:0 / NO: 1) : ",0
md db "Estas en el modo programador *-/=#% ",0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Cantidad de Refresco
cantR1_p39 dword 20
cantR2_p39 dword 15
cantR3_p39 dword 10
cantR4_p39 dword 30


;cantidad dineroMaquina
cantDinMaqu dword 100

;Mensajes para Configuracion
cantRe1 db "1 - Modificar la cantidad del refresco 1", 0
cantRe2 db "2 - Modificar la cantidad del refresco 2", 0
cantRe3 db "3 - Modificar la cantidad del refresco 3", 0
cantRe4 db "3 - Modificar la cantidad del refresco 4", 0

precRef1 db "4 - Modificar el precio del refresco 1", 0
precRef2 db "5 - Modificar el precio del refresco 2", 0
precRef3 db "6 - Modificar el precio del refresco 3", 0
precRef4 db "6 - Modificar el precio del refresco 3", 0

dineMa db "7 - Modificar la cantidad de dinero de la maquina", 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
refresco dword 0
input1 dword 0
input2 dword 0
input3 dword 0

total dword 0
change dword 0
choice dword 0

ten dword 10
twenty dword 20
fifty dword 50

cost1 dword 18
cost2 dword 30
cost3 dword 20
cost4 dword 15

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.code 
mainproy PROC 

L1: 
	mov edx, OFFSET D1
	call WriteString 
	call crlf
	mov edx, OFFSET D2
	call WriteString 
	call crlf
	mov edx, OFFSET D3
	call WriteString 
	call crlf
	mov edx, OFFSET D4
	call WriteString 
	call crlf
	mov edx, OFFSET D5
	call WriteString 
	call crlf
	mov edx, OFFSET D1
	call WriteString 
	call crlf
	jmp L2

L2:
	mov edx, OFFSET str1
	call WriteString 
	call crlf

	mov edx, OFFSET str2
	call WriteString 
	call ReadDec
	mov input1, eax 

	mov eax, input1
	mul ten
	mov total, eax
	call crlf

	mov edx, OFFSET str3
	call WriteString
	call ReadDec
	mov input2, eax

	mov eax,input2
	mul twenty
	add total, eax
	call crlf

	mov edx, OFFSET str4 
	call WriteString
	call ReadDec
	mov input3, eax 

	mov eax,input3
	mul fifty
	add total, eax
	call crlf

	mov edx, OFFSET str5
	call WriteString
	mov eax, total 
	call WriteDec
	mov edx, OFFSET cent
	call WriteString 
	call crlf
	jmp FLAV

FLAV:
	mov edx, OFFSET str6
	call WriteString
	call ReadDec
	mov refresco, eax 

	cmp refresco,1234
	jz F1
	cmp refresco,5555
	jz F2
	cmp refresco,6166
	jz F3
	cmp refresco,6913
	jz F4

	cmp refresco,8008
	jz Config

	jmp FLAV

F1:
	cmp total, 18
	jge Cal1
	jl SR

Cal1:
	mov edx, OFFSET item1
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost1 
	mov change, eax

	mov edx, OFFSET str7
	call WriteString 
	mov eax, change
	call WriteDec
	mov edx, OFFSET cent
	call WriteString 
	call crlf
	jmp Continue

F2:
	cmp total, 30
	jge Cal2
	jl SR

Cal2:
	mov edx, OFFSET item2
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost2 
	mov change, eax

	mov edx, OFFSET str7
	call WriteString 
	mov eax, change
	call WriteDec
	mov edx, OFFSET cent
	call WriteString 
	call crlf
	jmp Continue

F3:
	cmp total, 20
	jge Cal3
	jl SR

Cal3:
	mov edx, OFFSET item3 
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost3 
	mov change, eax

	mov edx, OFFSET str7
	call WriteString 
	mov eax, change
	call WriteDec
	mov edx, OFFSET cent
	call WriteString 
	call crlf

	jmp Continue

F4:
	cmp total, 20
	jge Cal4
	jl SR

Cal4:
	mov edx, OFFSET item4
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost4
	mov change, eax

	mov edx, OFFSET str7
	call WriteString 
	mov eax, change
	call WriteDec
	mov edx, OFFSET cent
	call WriteString 
	call crlf

	jmp Continue

ASK: 
	call crlf
	mov edx, OFFSET q1 
	call WriteString
	call ReadDec
	mov choice, eax

	call crlf
	call crlf

	cmp choice,0
	jz Continue
	jmp Stop

Continue:
	call crlf
	jmp L1
	
SR:
	mov edx, OFFSET sry 
	call WriteString 
	call crlf
	call crlf
	JMP L2

Stop:
	mov edx, OFFSET str8 
	call WriteString 
	call crlf


Config:
	mov edx, OFFSET md 
	call WriteString 
	call crlf

	mov edx, offset cantRe1
	call writestring
	call crlf
	mov edx, offset cantRe2
	call writestring
	call crlf
	mov edx, offset cantRe3
	call writestring
	call crlf
	mov edx, offset cantRe4
	call writestring
	call crlf

	mov edx, offset precRef1
	call writestring
	call crlf
	mov edx, offset precRef2
	call writestring
	call crlf
	mov edx, offset precRef3
	call writestring
	call crlf
	mov edx, offset precRef4
	call writestring
	call crlf

	mov edx, offset dineMa
	call writestring
	call crlf

	jz Continue
	jmp ASK
	

exit
mainproy ENDP
END mainproy