.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ESI, ESI 
DEC RDX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -6 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
ADD DIL, 102 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 5 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], ESI 
JZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -31 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
SETB DIL 
SETS CL 
SUB EBX, 101 
SBB EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -4 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RAX] 
ADD DIL, -5 # instrumentation
ADC AL, DIL 
SBB RCX, 54 
MOVZX EDI, DL 
SBB DI, SI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
SBB RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
XOR RAX, -8 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
ADD SIL, -90 # instrumentation
CMOVNP DX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, -16 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
MOVSX EBX, CX 
LAHF  
SETNS AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
