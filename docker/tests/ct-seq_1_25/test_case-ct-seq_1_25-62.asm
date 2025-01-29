.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 121 # instrumentation
CMOVNP RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
ADC RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RCX] 
IMUL EDX, EDI, 118 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ECX 
SUB ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -78 
MUL EAX 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], -109 
INC BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
SUB AX, AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
CMP RAX, -24 
MOVZX RBX, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1389853236 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
