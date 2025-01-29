.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -23 # instrumentation
CMOVNB RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], -54 
SBB AX, -14681 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 76 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
CMOVP RBX, RSI 
CMOVLE RDX, RAX 
SBB SI, DX 
CMOVBE RSI, RSI 
CMOVO EDX, EAX 
SBB AL, -19 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
ADD SI, 23 
ADD DL, 21 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
CMOVO ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX CX, BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 39 
INC DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 110 
CMOVNP SI, SI 
MUL SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
