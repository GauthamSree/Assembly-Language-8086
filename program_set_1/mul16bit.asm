.model small

.data
    x dw 1102h
    y dw 0101h
    result dw 2 dup(0)

.code
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    
    mov ax, x
    mov bx, y
    mul bx
    mov result, ax
    mov result+2, dx

HLT;