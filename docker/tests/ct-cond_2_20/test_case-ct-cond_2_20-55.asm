.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
CMP AL, CL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 65 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
OR DL, 1 # instrumentation
CMOVNO EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD DL, DL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
MOVSX AX, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
