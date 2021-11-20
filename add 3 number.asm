
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt 

;Md. Amdadul Hoque
;Roll : 36

org 100h

main proc 
    
    mov ah , 1
    int 21h
    mov bl , al 
    
    ;newline
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h     
        
    mov ah , 1
    int 21h
    mov cl , al
               
    ;newline           
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h  
    
    mov ah , 1
    int 21h
    mov ch , al 
    
    ;newline           
    mov ah , 2
    mov dl , 0dh
    int 21h
    mov dl , 0ah
    int 21h
         
    ;addition 
   	add bl , cl
   	sub bl , 30h 
   	
   	add bl , ch
    mov dl , bl
    sub dl , 30h
             
    ;output: 
    mov al , 2
    int 21h

ret




