.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDI 
XCHG EAX, EBX 
SBB EBX, EBX 
CMOVNS ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DIL 
CMP RDI, -39 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
CMP SI, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -122 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 92 
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
CMP AX, 7294 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 65 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -39 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
ADD DIL, -52 # instrumentation
CMOVZ RAX, RCX 
XCHG ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -19 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
