.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -26 # instrumentation
CMOVNBE BX, AX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
ADC SIL, BL 
IMUL DI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
ADD BL, 75 
STC  
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -14 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 27 
SUB CL, -18 
DEC SIL 
CMOVNP RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 41 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -16 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, 102 # instrumentation
SBB AX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -1 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
IMUL DX 
SUB DL, 34 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RSI 
CMOVZ EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
XCHG RDI, RAX 
STD  
MOV EDI, -2070107457 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
