.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 64 
XCHG RBX, RAX 
CMOVB CX, DI 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XCHG BL, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
MOV DX, -5548 
CMOVP RDI, RAX 
IMUL ESI 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
CMOVP RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -26 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
INC EAX 
JMP .bb_main.3 
.bb_main.3:
MOV AL, -61 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
MUL BX 
SBB EAX, -295934677 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 16 
CMOVNP EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -109 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
BSWAP ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EBX 
AND RAX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RAX] 
MOVSX DX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
