.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -47 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DI 
CMOVB AX, AX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
IMUL AX, AX, -20 
ADD DIL, -73 # instrumentation
CMOVLE EDX, EDX 
IMUL DI 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
MOVSX EBX, BL 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
SBB ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
MOVSX ECX, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
CMOVZ DI, AX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 88 
XCHG RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
