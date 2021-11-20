
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV CX,1

loop1:
  mov ah,2
  mov dl,'*'
  int 21h
  dec CX
  jnz loop1 
  
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    MOV DL,0AH
    INT 21H

MOV CX,2

loop2:
  mov ah,2
  mov dl,'*'
  int 21h
  dec CX
  jnz loop2  
  
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    MOV DL,0AH
    INT 21H
  
MOV CX,3

loop3:
  mov ah,2
  mov dl,'*'
  int 21h
  dec CX
  jnz loop3   
  
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    MOV DL,0AH
    INT 21H
  
  
MOV CX,4

loop4:
  mov ah,2
  mov dl,'*'
  int 21h
  dec CX
  jnz loop4  
  
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    MOV DL,0AH
    INT 21H
  
MOV CX,5

loop5:
  mov ah,2
  mov dl,'*'
  int 21h
  dec CX
  jnz loop5  

ret




                         