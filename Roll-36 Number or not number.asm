
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

cmp bl,48
jl NN

cmp bl,57
jle number
jg NN

number:
  LEA DX , MSG
  MOV AH , 9
  INT 21H
  jmp exit
    
NN:
   LEA DX , MSG1
   MOV AH , 9
   INT 21H
   jmp exit

exit:

ret
MSG DB 'It is a Number.$'
MSG1 DB 'It is not a number.$'
IPT DB 'Enter Input:$'



