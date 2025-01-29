.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -99 
MOVZX EDX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
SBB RDX, 73 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 47 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1700800638 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
ADD AL, DL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
SUB EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX] 
ADD SIL, 54 # instrumentation
CMOVS BX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -31424 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
XCHG DL, SIL 
CMOVB EDI, EBX 
SBB SI, 92 
STC  
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -123 
CMOVNB CX, CX 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
