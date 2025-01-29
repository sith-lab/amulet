.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
ADD DIL, 56 # instrumentation
CMOVNO RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
IMUL CX, DI, -108 
ADD SIL, 16 
IMUL EDX, ECX, -18 
IMUL DI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1162500661 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 27 # instrumentation
CMOVNL EDX, ECX 
CMOVZ RDX, RAX 
CMP RCX, 65 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC SIL 
SUB BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
CMP EDX, 107 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
