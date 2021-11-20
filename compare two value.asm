
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,1
int 21h

mov bh,al 

;newline
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h  

mov ah,1
int 21h  

mov bl,al 

;newline
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h  

cmp bh,bl
jg level1
jl level2

level1:
mov cl,bh
jmp exit

level2:
mov cl,bl  

;newline
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h  
    

exit:  

;newline
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h  

mov ah,2
mov dl,cl
int 21h

ret




