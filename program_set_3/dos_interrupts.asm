;; DOS INTERRUPTS (Display a string, Enter a string , input a character , Display a character)

.model small

.data
    prompt_1 DB 'Enter a character: $'
    prompt_2 DB 13, 10, 'Enter a String: $'
    given_prompt_1 DB 13, 10, 13, 10, 'Given Character: $'
    given_prompt_2 DB 13, 10, 'Gievn String: $'
    string db 30, ?, 30 dup(<0>)
    character db ?

.code
    MOV AX, @data
    MOV DS, AX
    MOV AX, 0000H

    LEA DX, prompt_1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    MOV [character], AL
 
    LEA DX, prompt_2
    MOV AH, 09H
    INT 21H
    
    MOV AH, 0AH
    LEA DX, [string]
    INT 21H
    
    xor bx, bx
    mov bl, string[1]
	mov string[bx+2], '$'
    
    LEA DX, given_prompt_1
    MOV AH, 09H
    INT 21H     
   
    MOV DX, 0000H
    MOV DL, [character]
    MOV AH, 02H
    INT 21H 

    LEA DX, given_prompt_2
    MOV AH, 09H
    INT 21H   
    
    LEA DX, [string] + 2
    MOV AH, 09H
    INT 21H
    
HLT;