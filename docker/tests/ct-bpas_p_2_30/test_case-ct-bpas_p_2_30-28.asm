.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 70 # instrumentation
CMOVNL ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 106 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDX] 
CMOVNLE BX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -118 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 119 
CMOVLE ECX, EDX 
ADD EAX, -1091418085 
CMP SIL, -81 
IMUL CX, AX 
ADC AL, 94 
AND RBX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
SBB SI, AX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
MOV ECX, EDI 
ADC AL, 112 
AND RBX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RBX] 
CMOVNP SI, DI 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], BX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
