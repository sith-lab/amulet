.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, -109 # instrumentation
MOV SIL, byte ptr [R14 + RAX] 
LAHF  
CMOVNS ECX, EDI 
CMOVZ DI, BX 
SBB CL, -65 
JB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
SUB DIL, -64 
INC DL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -108 # instrumentation
CMOVZ ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RBX 
CMOVB DX, BX 
SBB EAX, -503103693 
SBB AL, 67 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -70 # instrumentation
XCHG RAX, RCX 
CMOVZ EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
INC RBX 
IMUL AX, SI, -66 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDX] 
CMOVNLE RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 64 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
CMP DL, 12 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 30 
LEA RBX, qword ptr [RDI + RBX + 47234] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
