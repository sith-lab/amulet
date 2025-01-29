.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -124 # instrumentation
ADC AX, 8166 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD DIL, -114 # instrumentation
CMOVNZ RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
DEC EBX 
ADD EDI, -100 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
MOV EDI, EDI 
CMP BL, -110 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -88 
MOV ECX, EDI 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -23 # instrumentation
CMOVP CX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RAX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 116 # instrumentation
CMOVL ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX] 
ADD SIL, -28 # instrumentation
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
DEC RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
SBB EDX, 20 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
CMOVNBE EDI, ECX 
CMOVL RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
ADD BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
