TITLE MASM Maquina de Refrescos

; Description: Proyecto final de la unidad 2

INCLUDE Irvine32.inc
.data

D1 BYTE "[_______________________________________]" ,0

D2 BYTE "| 1. JUGO BONIG 18 PESOS                |" ,0
D3 BYTE "| 2. REFRESCO ESCUIS DE HIERRO 30 PESOS |" ,0 
D4 BYTE "| 3. FANTA DE FRESA 20 PESOS            |" ,0
D5 BYTE "| 4. JARRITO TUTIFRUTI 20 PESOS         |" ,0

item1 BYTE "Aqui esta tu: JUGUITO DEL BOING DE GUAYABA",0
item2 BYTE "Aqui esta tu: REFRESCO DE HIERRO SABOR VAINILLA",0
item3 BYTE "Aqui esta tu: REFRESCO DE FRESA DE FANTA",0
item4 BYTE "Aqui esta tu: REFRESCO DE JARRITO CON SABOR A FRUTOS ROJOS",0

str1 BYTE "Por favor ingrese su dinero: ",0
str2 BYTE "10 Pesos: ",0
str3 BYTE "20 Pesos: ",0
str4 BYTE "50 Pesos: ",0
str5 BYTE "Dinero total ingresado: ",0
str6 BYTE "Por favor elija una bebida: ",0
str7 BYTE "Este es tu cambio: ",0
str8 BYTE "GRACIAS! ", 0
q1 BYTE "Quieres comprar otro articulo?? (SI:0 / NO: 1) : ",0
sry BYTE "¡¡¡EL DINERO QUE INGRESO NO ES SUFICIENTE !!! INTÉNTALO DE NUEVO !",0
cent BYTE " Pesos",0

flavour DWORD 0
input1 DWORD 0
input2 DWORD 0
input3 DWORD 0

total DWORD 0
change DWORD 0
choice DWORD 0

ten DWORD 10
twenty DWORD 20
fifty DWORD 50

cost1 DWORD 18
cost2 DWORD 30
cost3 DWORD 20
cost4 DWORD 20

.code 
mainproj PROC 

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
	mov flavour, eax 

	cmp flavour,1
	jz F1
	cmp flavour,2
	jz F2
	cmp flavour,3
	jz F3
	cmp flavour,4
	jz F4

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
	jmp ASK

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
	jmp ASK

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

	jmp ASK

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

	jmp ASK

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

exit
mainproj ENDP
END mainproj