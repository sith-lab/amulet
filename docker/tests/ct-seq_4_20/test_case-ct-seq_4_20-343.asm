.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX], -40 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
INC EAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
ADD DIL, 118 # instrumentation
CMOVLE RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVZX RSI, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
MOV CL, DL 
MOVZX DI, CL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 83 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
SBB DX, 107 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
