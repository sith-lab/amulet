.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RCX] 
CMOVNL ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -69 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
MOV BX, -8017 
SBB AX, 13068 
MOVSX EAX, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
MOV RBX, RDI 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 1 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -116 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 11642 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
CMP CL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 44 
INC AX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
NEG RDX 
MOV AX, -28036 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
