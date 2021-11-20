
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
    
    
mov ah,1
int 21h  

mov ch,al 

;newline
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h  
    
    

cmp bh,bl
jge level1
jl level2

level1:
cmp bh,ch
jge level3
jl level4

level2:
cmp bl,ch
jge level5
jl level4  

level3:
mov cl,bh
jmp exit

level4:
mov cl,ch
jmp exit

level5:
mov cl,bl
jmp exit
 
    

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





