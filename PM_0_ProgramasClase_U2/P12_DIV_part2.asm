TITLE Introduccion DIV

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
;
; DIV: divide a 2 operandos 
;
; Sintaxis: DIV origen 
;
; La operacion se realiza con el operando eax y origen
; dividendo       divisor             cociente        residuo 
;   al         8bits(mem o reg)        al              ah
;   ax         16bits(mem o reg)       ax             dx
;   eax        32bits(mem o reg)       eax            edx
;
; Aplica las mismas caracteristicas que MOV en cuanto el Mismo Tamaño de Los operandos deben tener el Mismo Tamaño("Tipo de Dato")
; 
; - Movimientos validos:
;
; origen -> destino

; memoria a registro
; registro a memoria
; registro a registro

.code

main12 PROC

;Lógica del Programa

;El resultado de la division genera un : cociente y un residuo 
     

;Ejemplo con 16bits

mov eax, 0 ; para "Inicializar" el registro eax en cero y que no nos afecte su valor de inicio 

mov bx, 3

mov ax,10 ;************** --> mov eax,10

mov edx , 0 ; inicializamos en cero , para evitar tener problemas al momento de calcular el residuo 

div bx;division de 16bits

; cociente estara en -->> ax
; residuio estara en -->> dx

	exit

 main12 ENDP
 END main12