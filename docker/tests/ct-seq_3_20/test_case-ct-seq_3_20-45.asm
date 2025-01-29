.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
ADD BL, DIL 
XCHG BL, DL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -19 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
BSWAP EDI 
CMP RBX, -84 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 6 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -27 # instrumentation
CMOVS DX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 80 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
