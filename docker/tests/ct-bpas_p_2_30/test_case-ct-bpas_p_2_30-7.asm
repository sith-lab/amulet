.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDX] 
CMOVZ RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
SUB RDX, -43 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
CMP BX, -73 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 26175 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -35 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
AND RSI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RSI] 
CMP BL, -13 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 115 
CMOVO RAX, RCX 
CMOVNL EDI, EDX 
ADC RAX, -572536363 
CMOVNP ESI, EAX 
CMOVP RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
CMC  
AND RDX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RDX] 
ADC CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
