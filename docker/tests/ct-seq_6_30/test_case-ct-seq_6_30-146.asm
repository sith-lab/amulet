.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
NEG BL 
CMOVBE RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDI] 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 44 # instrumentation
ADC SIL, -79 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDI 
MUL EAX 
MUL CX 
ADD DIL, 13 # instrumentation
CMOVBE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 78 # instrumentation
CMOVNBE EBX, EDI 
CMOVNLE ECX, EDI 
SBB ESI, ESI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 23 
INC AX 
MOV AL, SIL 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -57 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -99 # instrumentation
CMOVL EAX, EDX 
CMOVZ EDX, EDI 
CMOVNLE EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
DEC EBX 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
XCHG DI, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
ADD BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
