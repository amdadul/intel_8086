
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
LEA DX , IPT
    MOV AH , 9
	INT 21H  
         
mov ah,1
int 21h 
mov bl,al   

;THIS IS A NEW LINE BLOCK
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    MOV DL,0AH
    INT 21H
;END OF THE NEW LINE BLOCK

cmp bl,65
jl NN

cmp bl,90
jle uper
jg com

com:
  cmp bl,97
  jl NN
  jge lower
  
lower:
    cmp bl,122
    jg NN
    sub bl,32
    LEA DX , MSG
    MOV AH , 9
	INT 21H
    mov dl,bl
    
    jmp display
    
uper:
    add bl,32
    LEA DX , MSG1
    MOV AH , 9
	INT 21H
    mov dl,bl
    jmp display
    
NN:
   LEA DX , ERR
   MOV AH , 9
   INT 21H
   jmp exit

display: 
    
    mov ah,2
    int 21h  
exit:

ret
MSG DB 'Uppercase of the character:$'
MSG1 DB 'Lowercase of the character:$'
ERR DB 'Not a Latter.$'
IPT DB 'Enter Character:$'



