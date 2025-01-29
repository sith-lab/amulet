.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RBX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
XCHG ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
ADD EBX, -67 
STC  
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -80 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
ADD SIL, 97 # instrumentation
SBB CX, SI 
XCHG RBX, RAX 
SBB DL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
