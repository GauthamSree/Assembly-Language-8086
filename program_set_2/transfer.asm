;; Transfer 1 KB of data from 25000H to 36000H


.model small

.code
    mov ax, 2000h
    mov ds, ax
    mov si, 5000h
    
    mov [5000h], 12h
    mov [5001h], 34h
    mov [5002h], 43h
    
    mov ax, 3000h
    mov es, ax
    mov di, 6000h
    
    mov cx, 0400h ;1024
    cld
    rep movsb
HLT;


;;; Transfer 10 bytes of data from 0E000H to 0B001H
;.model small

;.code
;    mov ax, 0000H
;    mov ds, ax
;    mov si, 0E000H
;   
;    mov [0E000H], 12H
;    mov [0E001H], 34H
;    mov [0E002H], 43H
;    
;    mov ax, 0000H
;    mov es, ax
;    mov di, 0B001H
;    
;    mov cx, 000AH ;10
;    cld
;    rep movsb
;HLT;
;