.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB SI, -1 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 28 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
ADD DIL, -94 # instrumentation
CMOVNS DX, BX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
MOV SI, 27610 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 16 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -63175407 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX ECX, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -125 
CMP DI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
