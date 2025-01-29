.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
ADC DL, DIL 
CMOVNL ECX, ESI 
ADD DI, DI 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], AX 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
SUB AL, 53 
CMOVNS EBX, EBX 
CMP AL, -115 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RBX] 
CMP AL, SIL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RCX] 
CMP BL, DL 
XCHG AX, AX 
CMOVNBE ESI, EAX 
SUB RAX, 515517295 
AND RDX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RBX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
CMOVZ RBX, RCX 
CMOVNLE ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
CMOVNO ESI, ESI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
SBB AL, 81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
