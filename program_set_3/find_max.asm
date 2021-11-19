;; To find maximum from an array of 10 numbers stored in memory location 20000H onwards
;; and store the result in the memory location 35000H


.MODEL LARGE 

.code
    mov ax, 2000H
    mov ds, ax 
    
    mov [0000h], 32H
    mov [0001h], 21H
    mov [0002h], 45H
    mov [0003h], 04H
    mov [0004h], 65H
    mov [0005h], 30H
    mov [0006h], 13H
    mov [0007h], 30H
    mov [0008h], 21H
    mov [0009h], 61H
    
    mov ax, 3000H
    mov es, ax
    
    mov di, 5000H
    mov si, 0000H
    
    mov cx, 000AH
    mov dl, 00H

BACK:
    mov al, [si]
    cmp al, dl
    jle SKIP

    mov dl, al
    
SKIP:
    inc si
    loop BACK

    mov [si], dl
    movsb
HLT;