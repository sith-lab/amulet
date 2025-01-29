.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -113 # instrumentation
CMOVNBE EBX, EBX 
ADC AL, -71 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMOVNP CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], CX 
CLC  
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -17 # instrumentation
CMOVB BX, AX 
CMOVB RCX, RSI 
CMOVNO ECX, EBX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
CMOVP DX, DI 
MOV AX, -16394 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLC  
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RBX 
STC  
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
XCHG RSI, RAX 
XCHG SIL, DIL 
IMUL RAX 
ADD DIL, 112 # instrumentation
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], ECX 
CMOVO ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
MOVZX RBX, SIL 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI], -116 
ADD ESI, EDI 
NEG AL 
SUB AL, 88 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
