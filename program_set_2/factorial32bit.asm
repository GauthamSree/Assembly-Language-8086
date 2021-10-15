;; Factorial of a number that can have value upto 32-bit

.model large

.data
    n dw 000Ah

    pq dw 0001H
       dw 0000H
    rs dw 0001H
       dw 0000H
    result dw 0,0,0,0

.code
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    
    mov bx, n

MULTI:
    mov ax, pq
    mul rs
    mov result, ax
    mov result+2, dx

    mov ax,pq+2
    mul rs
    add result+2,ax
    adc result+4,dx
    adc result+6,0

    mov ax,pq
    mul rs+2
    add result+2,ax
    adc result+4,dx
    adc result+6,0

    mov ax,pq+2
    mul rs+2
    add result+4,ax
    adc result+6,dx

    mov ax,result
    mov pq, ax
    mov ax, result+2
    mov pq+2, ax
    
    inc rs
    cmp rs, bx
    jle MULTI
    
    xor cx, cx
HLT;