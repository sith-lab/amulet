.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 53 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
CMOVL DI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -106 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
CMOVNB ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RAX 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 29 # instrumentation
SBB EAX, EDX 
NEG SIL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
ADD DIL, 10 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
CMOVBE ESI, ECX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 82 # instrumentation
CMOVNB ESI, ESI 
MUL BX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDX] 
CMOVZ EDI, ESI 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL CX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDX 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
