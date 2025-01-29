.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -66 
CMOVNO BX, BX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 72 # instrumentation
CMOVNO EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 61 
NEG BL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 24 # instrumentation
CMOVZ ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 70 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
CBW  
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG AX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
CMOVBE BX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
