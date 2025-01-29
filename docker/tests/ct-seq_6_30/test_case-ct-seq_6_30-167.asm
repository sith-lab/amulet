.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, 78958676 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
ADD DIL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 57 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD EBX, 63 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -27 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
BSWAP EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], CX 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MUL SIL 
ADC CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 110 # instrumentation
ADC EAX, 5 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -107 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP RAX, 622827902 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 43 
SUB BL, -102 
NEG SI 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
