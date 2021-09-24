TITLE Introduccion MOV;

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones 
; de Transferencia de datos 
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

;Instruccion MOV
; Sintaxis
; Sintaxis
; intruccion MOV destino, origen ; var = valor
;
;      validas
;            origen / destino
;            inmediato a memoria 
;            inmediato a registro

;            memoria a registro

;            registro a memoria 
;            registro a registro
;        
;              conclusiones 
;         1.-Destino no puede ser un inmediato 
;         2.-no se puede de memoria a memoria 

.data
; Área de Declaración de Variables MEMORIA
;


variableB_p4 byte 5d

;variableW_p4 word 15d

variableD_p4 dword 25d

 

.code

 Main4 PROC
;Lógica del Programa

mov eax, 40 ;inmediato a registro ->> inicializando elregistro

; memoria a registro  

;mov eax, variableD_p4

;mov eax, variableW_p4   ;NO SE PUEDE  uno es de 32 y el otro 16 bis

;mov eax, variableB_p4 ; NO SE PUEDE porque uno es de 32 y el otro es de 8bits

 ;;;;;;;;;;;;;;;;;;;;;

 ; Dado a que el 40 se puede representar en un  unico byte entonces, podemos solo
 ; mover la parte correspondiente al 40 a la variable byte

 ;registro a memoria 

 ;mov variableB_p4, al

  ;;;;;;;;;;;;

  mov eax,260

  mov variableB_p4, al

; mov variableW_p4 , ax

  ; Conclusion MOV solo puede mover dependiendo del mismo tamaño 
  ; Es decir, origen es del mismo tamaño 

exit
Main4 ENDP
END Main4