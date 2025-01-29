.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
ADD SIL, -87 # instrumentation
CWDE  
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 102 # instrumentation
MOVSX ECX, AL 
ADC SIL, 29 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 16 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RSI] 
CMOVL RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -546500620 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -110 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
CMOVNB ECX, EAX 
MOVZX RDX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDX] 
CMOVNBE BX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EBX 
SBB RAX, -2070329665 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 80 
ADD AL, 9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
