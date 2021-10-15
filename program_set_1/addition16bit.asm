;; Add two 16-bit numbers

.model small

.data
    X DW 0F112H
    Y DW 09921H
    SUM DW <0>
    CARRY DB 00H

.code
    MOV AX, @data
    MOV DS, AX
    MOV AX, 0000H
    
    MOV AX, X
    MOV BX, Y
    ADD AX, BX
    JNC WITHOUTCARRY
    INC CARRY

WITHOUTCARRY:
    MOV SUM, AX

HLT;