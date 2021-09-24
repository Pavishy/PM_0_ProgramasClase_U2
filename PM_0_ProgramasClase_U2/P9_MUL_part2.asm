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
; MULT: Multiplica a dos operandos 
;
; Sintaxis: SUB origen 
;
; La operacion se realiza con el operando eax y origen. El resultado se almacena en eax 
;deacuerdo al tipo de dato del operando origen.
;
;
; Aplica las mismas caracteristicas que MOV en cuanto el Mismo Tamaño de Los operandos deben tener el Mismo Tamaño("Tipo de Dato")
; 
; - Movimientos validos:
;
; origen -> destino

 

; memoria a registro
; registro a memoria
; registro a registro

var1_P9 dword 5
var2_P9 sdword -5

.code

 main9 PROC
;Lógica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 mov eax, 5

add eax, 2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;mul 2 ; no puede ser un inmediato el origen 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; recordar hasta qui eax vale 7

;ecx no esta en este punto inicializado con un valor valido para el programa 
; sin embargo, por defecto cuenta con un valor . Esto puede llegar a ocacionar algunos 
; detalles al realizar la multiñlicacion 

mov cl,2

mul cl ; parte baja de eax ---> al, debido a que el origen es de 8bits/ 1 byte
 ;----->>> al*cl

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ch,2

mul ch ;---->>> al*ch    -------  NO ah * ch

; que el oprendo sea cl o ch, no significa que se multiplicara sus analogos (al o ah ) del operando eax,
;sino que se operara con la parte baja de eax (al) debido a que ambas partes son de 8 bits.

; Es decir que cuando sea :
; 8 bits se multiplicara con al 
; 16 bits se multiplicara con ax
; 32 bits se multiplicara con eax 

 exit

main9 ENDP
END main9