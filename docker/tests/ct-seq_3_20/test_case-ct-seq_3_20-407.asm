.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -40 
ADC AL, 103 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DI 
SUB RAX, RBX 
CMOVNO CX, BX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDX 
SUB DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
NEG DL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
ADD DIL, 37 # instrumentation
CMOVLE EDI, ESI 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RBX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
