.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
OR EDX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DI 
IMUL RAX, RBX, -35 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RSI] 
LEA EDI, qword ptr [RBX + RDX + 32652] 
DEC SI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -42 
CMOVNBE EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD DIL, -72 # instrumentation
SBB SIL, -48 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 68 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RAX] 
CMP SIL, -128 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 97 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -33 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
