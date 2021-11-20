
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
         
LEA DX,MSGF
MOV AH,9
int 21h
MOV AH,1
int 21h
MOV BH,AL


lebel1:
       
LEA DX,MSGI
MOV AH,9
int 21h 
      
MOV AH,1
int 21h
MOV CL,AL 

AND CL,1
JZ EVEN
JNZ ODD

EVEN:
   LEA DX,MSGE
   jmp exit

ODD:
   LEA DX,MSGO

exit:
   
MOV AH,9
int 21h   
DEC BH
JNZ lebel1

ret
MSGE DB 'It is a  even number.$'
MSGO DB 'It is a  odd number.$'
MSGF DB 'Enter Number of Input: $'
MSGI DB 'Enter Number: $'



