.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -32 # instrumentation
CMOVNB BX, DI 
AND RAX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB BL, 14 
ADC EBX, -96 
SUB EAX, -904486636 
ADC EDX, -79 
XCHG RAX, RAX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
ADD DIL, -71 # instrumentation
CMOVNBE RDX, RDX 
CMP DIL, 76 
JMP .bb_main.2 
.bb_main.2:
SUB AL, 113 
AND RAX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
MOVSX RCX, DIL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 118 # instrumentation
ADC RDI, 24 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
ADC EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ESI 
ADC AL, -13 
IMUL ECX 
SBB AL, 25 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], BX 
IMUL CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
