.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL CL 
ADD SIL, -39 # instrumentation
CLC  
CMOVBE EAX, ESI 
XOR AX, -2999 
TEST AX, 27146 
SBB DX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -52 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RBX] 
NEG RDI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RAX 
MUL CL 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], -42 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDI] 
CMOVO RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
ADD ESI, EAX 
DEC EBX 
JMP .bb_main.2 
.bb_main.2:
XOR ECX, -22 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 88 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
ADC RAX, 77 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
IMUL RAX, RBX, 79 
ADD DIL, -25 # instrumentation
CMOVB EDI, EDI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
TEST EAX, -1608634503 
TEST AL, -106 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], BX 
ADC SIL, CL 
CMPXCHG DX, AX 
SUB AL, CL 
SBB RDX, 50 
SBB BL, -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
