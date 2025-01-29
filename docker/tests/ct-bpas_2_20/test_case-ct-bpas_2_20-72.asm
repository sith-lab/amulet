.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -105 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -89 
IMUL DX, DX, 30 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 68 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 30 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], CX 
SBB DL, BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 76 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -2039240050 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
IMUL ECX, EDI, -105 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -125 
CMP AL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
