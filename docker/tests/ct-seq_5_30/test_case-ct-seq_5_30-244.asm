.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -44 # instrumentation
SBB RSI, 117 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], SIL 
MOVZX EDX, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RCX] 
ADD DIL, -75 # instrumentation
CMOVNO RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 53 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 30 
MOVSX RDI, SIL 
LEA AX, qword ptr [RAX] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -74 # instrumentation
CMOVB RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RCX] 
CMOVBE RDX, RSI 
CMP EAX, 1069561491 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
CMOVLE SI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDI] 
CMP ESI, 96 
JMP .bb_main.3 
.bb_main.3:
SUB ECX, ECX 
CMOVBE DI, DX 
ADD EAX, 1947269698 
CMP ESI, -83 
IMUL EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -24247 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -67 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 121 # instrumentation
CMOVB RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
