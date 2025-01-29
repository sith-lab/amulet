.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 104 # instrumentation
SBB BL, BL 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], SI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 49 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
CMOVZ RBX, RSI 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD EAX, EDI 
NEG RDI 
AND SI, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 48 
TEST RSI, 1581636873 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RBX 
ADD RDX, RBX 
SETNLE DIL 
TEST SIL, -45 
TEST DIL, -33 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
TEST AL, 19 
OR RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -51 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
MOVSX EBX, BL 
XADD DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RBX 
SETNLE BL 
SETNZ CL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
XADD SI, CX 
CMOVP BX, DI 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMOVNBE CX, CX 
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], ECX 
MOVZX RDI, DL 
CMOVZ RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
