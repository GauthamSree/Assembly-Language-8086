;; Program to produce a packed BCD byte from 2 numbers entered by the user

.model small

.data
    prompt_1 DB 'Enter 1st number: $'
    prompt_2 DB 13, 10, 'Enter 2nd number: $'

.code
    MOV AX, @data
    MOV DS, AX
    MOV AX, 0000H

    LEA DX, prompt_1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    MOV BL, AL

    LEA DX, prompt_2
    MOV AH, 09H
    INT 21H    
    
    MOV AH, 01H
    INT 21H
    
    MOV AH, 00H
    AND BL, 0FH
    AND AL, 0FH

    MOV CL, 04H
    ROL BL, CL
    
    OR AL, BL
HLT;