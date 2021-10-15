;; Multiple two 8-bit numbers

.model small

.data
    x db 12h
    y db 21h
    result dw <0>

.code
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    
    mov al, x
    mov bl, y
    mul bl
    mov result, ax

HLT;