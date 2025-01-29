.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -126 # instrumentation
CMOVLE DI, DX 
CMOVL EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -16 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
ADC RSI, RSI 
CMOVZ RSI, RAX 
CMOVNB RSI, RAX 
XCHG DI, AX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -106 # instrumentation
ADC EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
NEG SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 109 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
ADD DIL, 29 # instrumentation
CMOVNL EDI, ESI 
CMOVNZ RAX, RBX 
IMUL RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 11 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 111 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 36 # instrumentation
INC CL 
SBB EAX, 1309100784 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
IMUL AX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EAX 
SUB AL, -50 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
