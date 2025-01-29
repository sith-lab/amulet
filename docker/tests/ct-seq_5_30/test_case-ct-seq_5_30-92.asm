.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 72 # instrumentation
DEC EDI 
SBB ECX, -95 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
SUB RAX, RCX 
CMOVB EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -87 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
NEG RCX 
CMOVNB SI, CX 
ADD EAX, -1789787748 
CMOVZ EBX, EDI 
ADC AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -112 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EAX 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
NEG AX 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 117 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDI 
INC CL 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
MOV SIL, -121 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
IMUL RBX, RBX 
ADD SIL, 108 # instrumentation
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 114 
CMP RAX, -2030215426 
LEA RCX, qword ptr [RBX] 
ADD EAX, -526284076 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
