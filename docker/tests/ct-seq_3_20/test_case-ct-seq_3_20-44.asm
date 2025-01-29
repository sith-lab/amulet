.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDI] 
CMOVL EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDI 
SBB AX, -11525 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
ADC AX, 31712 
MOVSX RCX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -29 
MOVSX RCX, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
CMOVBE RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 34 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
CMOVO EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
