; A S Nandanunni
; Reg No: 20219023
; CS - A
; Hexadecimal Down Counter

START: MVI B, 0Fh
DISPLAY: MOV A, B
STA 0001h
LXI H, 0001h
LOOP: DCX H
MOV A, L
ORA H
JNZ LOOP
DCR B
MOV A, B
CPI 00h
JNZ DISPLAY
JZ START
