.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
SBB RDI, -110 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
CMOVNS EBX, EAX 
MUL DX 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
INC CL 
ADC DIL, 57 
MOV RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
ADD DIL, 61 # instrumentation
CMOVNBE EBX, EAX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 55 # instrumentation
CMOVNLE RCX, RSI 
SUB RSI, 41 
ADC BX, 45 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], ECX 
MOVSX EBX, BL 
IMUL CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 11 
XCHG BX, CX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
MOVZX EDX, CL 
CMP SIL, -109 
SBB DIL, 39 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
