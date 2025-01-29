.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 88 # instrumentation
SETL CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RDI 
MOVZX RDI, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
CMOVS CX, CX 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RAX] 
SBB DL, BL 
SUB CX, -106 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -60 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], DX 
SBB SI, -127 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -108 
SUB SI, DX 
CMOVNB RAX, RBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RSI] 
SBB EAX, 1501901808 
OR SI, 0b1000000000000000 # instrumentation
BSR CX, SI 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EAX 
CMP RAX, -457452427 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND AX, 32760 
CMOVP EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RBX] 
CMP BL, 82 
AND EBX, EDX 
SBB AL, -128 
AND RBX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
OR DL, -98 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], CL 
ADD AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
INC CX 
AND RAX, RCX 
XOR RDI, 0 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
