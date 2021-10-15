;; Factorial of a number that can have value upto 16-bit

.model small

.data
    n dw 0005h
    result dw <0>
.code
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    
    mov cx, n
    mov ax, 0001H
FACT: 
    mul cx
    LOOP FACT
    
    mov [result], ax
HLT;