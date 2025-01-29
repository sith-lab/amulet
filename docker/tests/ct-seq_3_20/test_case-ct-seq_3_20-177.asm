.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 3 # instrumentation
ADC EAX, -15545532 
AND RDX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RBX 
CLD  
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -34 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP SIL, CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
BSWAP RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 14 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -1 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -122 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 7 # instrumentation
SBB SI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
