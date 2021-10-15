;; Exchange 10 bytes of data from 25000H to 36000H

.model small

.code
    ;; initialize
    mov ax, 2000h
    mov ds, ax
    mov si, 5000h
    
    mov [5000h], 12h
    mov [5001h], 34h
    mov [5002h], 43h
    
    mov ax, 3000h
    mov es, ax
    mov di, 6000h
    
    mov ES:[6000h], 25h
    mov ES:[6001h], 27h
    mov ES:[6002h], 29h

    ;; Mov from 25000H to 48000H
    mov ax, 4000h
    mov es, ax
    mov di, 8000h
 
    mov cx, 000AH ;10
    cld
    rep movsb

    ;; Mov from 36000H to 25000H
    mov ax, 3000h
    mov ds, ax
    mov si, 6000h
    
    mov ax, 2000h
    mov es, ax
    mov di, 5000h
 
    mov cx, 000AH ;10
    cld
    rep movsb
        
    ;; Mov from 48000H to 36000H
    mov ax, 4000h
    mov ds, ax
    mov si, 8000h

    mov ax, 3000h
    mov es, ax
    mov di, 6000h
 
    mov cx, 000AH ;10
    cld
    rep movsb
HLT;

