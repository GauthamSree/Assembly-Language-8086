;; ADD 100 bytes from memory location 20000H onwards and from 35000H onwards 
;; and store the byte-wise added result from 26000H to 26100H

;; Solution contains only 4 bytes of sample data for ease.


.MODEL SMALL

.code
    mov ax, 2000H
    mov ds, ax
    mov si, 0000H
    
    mov [0000H], 01H
    mov [0001H], 02H
    mov [0002H], 03H
    mov [0003H], 04H

    mov ax, 3000H
    mov es, ax
    mov di, 5000H

    mov ES:[5000H], 01H
    mov ES:[5001H], 02H
    mov ES:[5002H], 03H
    mov ES:[5003H], 04H   

    mov cx, 100
BACK:
    mov ax, 0000H
    mov bx, 0000H
    mov bl, [si]
    mov al, es:[di]
    add al, bl
    mov [6000H + si], ax
    inc si
    inc di
    LOOP BACK

HLT;