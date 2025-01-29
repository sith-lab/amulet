.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 76 
TEST DIL, SIL 
SETNO BL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -85 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], 114 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
XOR RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EBX 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 16 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
SETNB AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RCX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -49 
SBB EAX, ECX 
CMOVNZ RDI, RDI 
XOR EAX, 123 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ESI 
DEC DI 
CMOVZ RAX, RCX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 28 # instrumentation
CMOVZ EBX, ESI 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
ADD EDX, EDI 
MOV CL, AL 
CMPXCHG RSI, RCX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
ADD SIL, 71 # instrumentation
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX], -90 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
ADD SIL, 23 # instrumentation
CMOVNP EBX, EDX 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -6321 
TEST DL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
CMP RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
CMPXCHG EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
