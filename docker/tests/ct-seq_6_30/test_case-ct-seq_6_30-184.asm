.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RSI] 
SUB DL, 88 
ADC ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
CMOVNO ESI, EDX 
JMP .bb_main.2 
.bb_main.2:
SUB AL, -87 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
MOV ESI, ESI 
CMOVNO CX, CX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -46 
JMP .bb_main.3 
.bb_main.3:
IMUL RDX, RSI 
ADD DIL, -61 # instrumentation
CMOVNZ RDI, RDI 
MOV RAX, -1773734631949615155 
CMOVLE RDI, RDI 
XCHG DIL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 119 
AND RSI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
XCHG RSI, RCX 
ADD CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
