.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -111 # instrumentation
CMOVNB ESI, ECX 
CMOVP EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 118 
ADD EAX, -1350550408 
IMUL RSI, RSI, 127 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
CMOVNLE RDI, RDI 
CMP EAX, 1363687006 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
ADD SIL, 106 # instrumentation
ADC BL, DL 
CMP DIL, -36 
SUB AL, 58 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RAX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 72 # instrumentation
ADC AX, -27 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RAX] 
CMP ESI, EDI 
INC DL 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
IMUL RDX, RSI, -8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
