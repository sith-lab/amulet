.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 46 # instrumentation
CMOVNZ ECX, EAX 
OR DL, 1 # instrumentation
ADC SIL, BL 
SBB DL, BL 
MOVZX RBX, BL 
CMOVNS RSI, RDI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
CMOVNP ESI, EDI 
MUL BL 
IMUL ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD SIL, -107 # instrumentation
CMOVP DX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -54 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
DEC RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -4 
CMP CL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
ADD SIL, -50 
CMOVP DX, AX 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP EAX, -2040804869 
CMOVLE DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
