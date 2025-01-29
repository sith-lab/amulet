.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 52 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDI] 
CMOVNO RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
CMOVB AX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -54 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
