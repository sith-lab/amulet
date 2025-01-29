.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -107 # instrumentation
ADC DL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 119 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 70 # instrumentation
CMOVP RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], BX 
INC RAX 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -17 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 100 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -105 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
