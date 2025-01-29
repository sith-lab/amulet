.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], CX 
XCHG AX, CX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], CX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 40 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -28 
CMOVNL ESI, ECX 
ADC SIL, BL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 2 # instrumentation
CMOVO ECX, EDI 
CMOVO RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 72 
CMP RAX, RCX 
BSWAP RAX 
JMP .bb_main.3 
.bb_main.3:
MUL EAX 
CMOVNO RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
MUL RAX 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 5 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
