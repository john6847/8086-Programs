DATA SEGMENT ;start of data segment
ARR DW 0010H,0020H,0030H,0040H,0050H
LEN EQU ($-ARR)/2
SUM DW ?
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
MOV DS,AX
LEA SI,ARR
CLC
XOR AX,AX
MOV CX,LEN
UP: ADC AX,[SI]
INC SI
INC SI
DEC CX
JNZ UP
MOV SUM,AX
MOV AH,4CH
INT 21H
CODE ENDS
END START