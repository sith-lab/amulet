.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EBX, DL 
XADD SIL, DL 
CMOVP RDX, RDX 
XOR RBX, RCX 
MOVZX CX, CL 
MOVZX SI, BL 
SBB ESI, EAX 
IMUL SI, AX, -24 
SUB AX, -23566 
TEST BX, DX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
LEA RAX, qword ptr [RAX + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 103 # instrumentation
SETP AL 
TEST RAX, 105592762 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CMPXCHG RCX, RCX 
INC CL 
LAHF  
CMOVNS RCX, RCX 
OR BL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], CX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
OR ESI, 124 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EAX 
XCHG DI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 116 
NEG SI 
SETNP AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], -11 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RAX] 
MOVZX BX, DL 
CMOVB EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -16 
XOR RAX, -1991196936 
SETLE AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDI] 
AND RDI, RBX 
CMOVNO BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
