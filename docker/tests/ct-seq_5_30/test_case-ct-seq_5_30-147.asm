.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
ADD EBX, ECX 
CMOVP CX, DX 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DIL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
CMOVS DX, CX 
SUB AL, 8 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDX] 
CMOVBE AX, DI 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
MUL BX 
ADD DIL, -76 # instrumentation
CMOVNS RBX, RBX 
JMP .bb_main.3 
.bb_main.3:
INC DIL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 116 
CMOVP DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -100 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL EDI 
AND RAX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RAX] 
CMOVNP EBX, ESI 
CMC  
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
