
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BH,10
MOV AH,2
MOV DL,48

lebel1:
int 21h
inc DL
DEC BH
JNZ lebel1

ret




