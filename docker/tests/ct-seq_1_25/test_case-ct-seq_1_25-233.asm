.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -71 # instrumentation
ADC AL, -33 
ADD DL, CL 
CMOVZ ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -64 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 51 
XCHG AX, BX 
AND RBX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RBX] 
SBB AX, -11410 
CMOVNP SI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -96 
MOVSX ECX, DL 
CMOVNO EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
ADC EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -295578727 
ADD EAX, -567470375 
CMOVBE RSI, RSI 
CMOVNB SI, DX 
CMOVNZ EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -40 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
DEC RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
