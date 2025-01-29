.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 44 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 8 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CLC  
CMOVS ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
ADC AL, SIL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
