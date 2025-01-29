.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 119 
MOVZX AX, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -49 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
XCHG DX, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -80 
SUB AL, -80 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -128 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
CMOVNL RAX, RDX 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
BSWAP RCX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -57 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
SBB AL, -4 
JZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
SUB AL, -60 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], SIL 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 119 # instrumentation
SBB EAX, 1846594523 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
