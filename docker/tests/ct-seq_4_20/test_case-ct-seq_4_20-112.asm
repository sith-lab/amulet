.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 114 # instrumentation
CMOVNL AX, SI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 81 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 61 
AND RSI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RSI] 
CMP BX, -78 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], CX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -28 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
INC EBX 
CMOVO RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
MUL DI 
ADD DIL, 110 # instrumentation
CMOVNLE RCX, RBX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 36 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
