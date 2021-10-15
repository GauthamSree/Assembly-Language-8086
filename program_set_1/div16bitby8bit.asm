;; division OF 8 bit from 16 bit

.model small

.data
    x dw 1002h
    y db 21h
    remainder db <0>
    quotient db <0>

.code
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    
    mov ax, x
    mov bl, y
    div bl
    
    mov remainder, ah
    mov quotient, al

HLT;