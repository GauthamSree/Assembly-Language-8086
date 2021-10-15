;; Subtract two 16-bit numbers

.model small

.data
    x dw 02113h
    y dw 02101h
    subtract dw <0>
    signbit db 00h

.code
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    
    mov ax, x
    mov bx, y
    sub ax, bx

    jnc JUMP
    inc signbit
    not ax
    add ax, 0001h

JUMP:
    mov subtract, ax

HLT;