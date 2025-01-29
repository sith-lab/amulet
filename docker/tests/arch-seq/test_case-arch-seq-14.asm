.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX], -83 
MOV AL, CL 
ADC DL, 41 
STD  
SUB EBX, 57 
CMOVS RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
ADD EBX, EAX 
ADD EAX, -490137104 
CMOVS DX, SI 
SBB EBX, 34 
CMOVNB RSI, RDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ECX 
XOR SIL, -84 
SBB EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
CMP AX, -13720 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
AND SI, 51 
AND EAX, -92 
LEA EBX, qword ptr [RCX + RDI + 42524] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
SETNB BL 
NEG CL 
CMP DX, -102 
SETLE BL 
CMOVZ ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
CMOVLE AX, AX 
SETZ DL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 80 # instrumentation
CMOVNB DX, CX 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
OR BL, DL 
CMPXCHG RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ECX 
AND DL, -35 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
