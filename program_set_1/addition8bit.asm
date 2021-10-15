;; Add two 8-bit numbers

.model small

.data
    X DB 0F1H
    Y DB 099H
    SUM DW <0>

.code
    MOV AX, @data
    MOV DS, AX

    MOV AX, 0000H
    MOV AL, X
    MOV BL, Y
    ADD AL, BL
    ADC AH, 00H
    MOV SUM, AX

HLT;