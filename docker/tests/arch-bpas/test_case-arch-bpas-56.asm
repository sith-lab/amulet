.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
CMOVNP CX, SI 
MOV CL, -78 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
OR BL, 25 
CMP AX, 2032 
XCHG AX, DI 
AND RDI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RDI] 
SETNS SIL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -23 # instrumentation
SBB DI, 47 
AND RBX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RBX] 
CMP ECX, -9 
NEG EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
STC  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
SETNL DL 
IMUL AX, AX, 64 
TEST EDI, 1420552178 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
SETB BL 
CMOVL AX, DX 
XOR RAX, -15 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
XOR AX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 82 
AND RCX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
ADC AX, 26555 
AND DIL, -17 
MOVSX EDX, DI 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
MUL DL 
NOP  
AND AX, 1734 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
