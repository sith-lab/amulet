.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -58 # instrumentation
CMOVNL RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
BSWAP EDI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
CMOVBE RSI, RDI 
ADC EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 75 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
