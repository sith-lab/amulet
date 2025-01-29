.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 141184671 
ADD BX, SI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -57 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
ADD SIL, 72 # instrumentation
SBB ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
CMOVNBE DI, DX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ECX 
CMOVLE SI, DI 
XCHG AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
