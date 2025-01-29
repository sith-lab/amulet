.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX], 96 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 100 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 31 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX], 72 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -24 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
