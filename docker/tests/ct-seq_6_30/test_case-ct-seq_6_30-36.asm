.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL RDX 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
BSWAP EDI 
ADC AX, -23392 
ADC SI, -99 
JMP .bb_main.2 
.bb_main.2:
CBW  
MOV ECX, 47865986 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 101 # instrumentation
CMOVO RAX, RSI 
SBB ECX, 71 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
SBB RAX, -1525984038 
CMOVNLE RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
NEG EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 7351 
CMOVZ DX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
XCHG RCX, RBX 
MOV EAX, -1919730017 
IMUL AX 
ADD DI, 111 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 108 
ADD EAX, -318835546 
SBB DL, BL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
