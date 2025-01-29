.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 103 # instrumentation
SBB RAX, -633604097 
IMUL DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -122 
XCHG RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDX 
MUL SI 
ADD RAX, 1191978186 
CMOVNP RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -51 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 86 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
ADD SIL, -29 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
IMUL RSI 
LEA AX, qword ptr [RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
ADC RSI, 70 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], BX 
MOV EAX, -37079495 
CMOVLE DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 125 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
