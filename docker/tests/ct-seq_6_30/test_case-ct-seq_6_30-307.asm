.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, -23 # instrumentation
CMOVNP BX, AX 
MOVSX EDI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RCX] 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP ECX, -94 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -44 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
INC AL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RAX] 
ADC DX, -6 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -71 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -67 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
MOV BX, 7907 
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX], -109 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
LEA ESI, qword ptr [RDX + RDX + 17204] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
SUB EBX, 124 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
CMOVNZ CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
MOV ECX, EDI 
SUB EAX, 955781066 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 574406443 
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RDI] 
CMOVLE RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
