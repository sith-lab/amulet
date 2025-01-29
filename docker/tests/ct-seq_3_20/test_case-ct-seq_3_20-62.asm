.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 93 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 39 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RSI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX], -79 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
CMOVLE ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
