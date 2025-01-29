.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RCX] 
ADC BL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 74 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 42 
CMOVLE RSI, RDX 
JS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
SUB EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
INC BL 
DEC DL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
MOV SI, 22090 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 18 
CMOVS DX, CX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
CMP EAX, 27206564 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
XCHG RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 121 # instrumentation
LEA ESI, qword ptr [RCX + RDI + 60228] 
CMOVNB SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1940822147 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 28464 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
