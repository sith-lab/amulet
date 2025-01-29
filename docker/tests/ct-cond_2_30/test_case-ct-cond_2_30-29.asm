.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX], -83 
ADC RAX, -1686788052 
MOVSX ECX, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 125 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 65 # instrumentation
SBB DI, 2 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -8 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
XCHG RDX, RAX 
IMUL EDX, EAX, 33 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
MOVZX BX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
CWD  
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RAX 
CMOVP ECX, EDI 
SUB AL, -53 
ADD DL, CL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
ADD SIL, -127 # instrumentation
SBB DIL, -65 
AND RDX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
