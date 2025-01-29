.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -118 
MOVSX RSI, SIL 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
XCHG EDI, EAX 
SUB DIL, 74 
CMP ECX, 64 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
ADD ESI, EAX 
IMUL SI, DI 
ADD SIL, 22 # instrumentation
MOV RSI, RSI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -38 
CMOVL RDX, RAX 
NEG DIL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -113 
CMOVZ RDI, RAX 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 35 
SBB DIL, -22 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
MUL EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -14 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RBX] 
CMOVNBE EDX, EDX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 23 # instrumentation
CMOVNLE CX, AX 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
NEG DI 
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
SBB DIL, 108 
LEA RDX, qword ptr [RDX + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
