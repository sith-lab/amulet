.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], BX 
BSWAP ESI 
MOVSX BX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDX 
SUB RBX, -72 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
ADD SIL, -80 # instrumentation
SBB DIL, -45 
SUB EAX, 847520086 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDI] 
MOV SI, -10992 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -66 
IMUL RSI, RCX 
SUB RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
CMOVNP EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
CMOVNZ ESI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
