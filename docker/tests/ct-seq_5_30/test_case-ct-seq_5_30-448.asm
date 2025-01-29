.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 102 
ADC EAX, 1947779059 
CMOVO RBX, RSI 
ADC AX, -18503 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
CMOVNZ DX, SI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
CMP EAX, -1044240873 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -19 # instrumentation
CMOVNZ AX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 10 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
SUB EAX, 1849358518 
CMOVNO AX, CX 
MOVZX RSI, SIL 
BSWAP EBX 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
CMOVZ RDI, RDI 
ADD AL, BL 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
DEC DIL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -27 
ADC RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
