.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 45 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 101 
SBB AX, -23509 
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
CMP RBX, 39 
ADC ECX, EDX 
IMUL EDX, EDI, 101 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
ADD SIL, -92 # instrumentation
BSWAP EAX 
SETBE DL 
IMUL BX, DX 
ADD RSI, -39 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
CMOVNS EAX, EBX 
CMP DL, 44 
JMP .bb_main.1 
.bb_main.1:
BSWAP EBX 
ADD RDI, -71 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
SAHF  
CMP EAX, -1872738019 
TEST RAX, -1778466092 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 11 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDX] 
IMUL EDI, ECX, 93 
ADD DIL, -29 # instrumentation
SETNBE CL 
SUB DL, BL 
ADD RSI, -78 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
MOV EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
XADD EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
