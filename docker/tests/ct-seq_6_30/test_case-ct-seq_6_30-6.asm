.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 26 
SUB EAX, 1539556411 
JMP .bb_main.1 
.bb_main.1:
IMUL CX 
AND RDX, 0b1111111111111 # instrumentation
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
SUB ESI, -126 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
XCHG EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
SBB DIL, 28 
CMOVNS RDI, RDI 
ADD DL, SIL 
SUB AX, SI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 23 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI], 116 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDX] 
SUB EAX, -592104457 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
IMUL RAX 
CMOVNO EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -6 # instrumentation
ADC EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -76 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1707409668 
CMP EDX, ESI 
MOVZX DI, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
