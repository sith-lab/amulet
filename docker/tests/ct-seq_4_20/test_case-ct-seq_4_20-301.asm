.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -79 # instrumentation
MOV DL, BL 
CMOVNP RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 8 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
ADD SIL, -70 # instrumentation
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
LEA RDX, qword ptr [RAX + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 4 # instrumentation
SBB AX, -56 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 11 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI], 98 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
