.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RBX, CL 
AND RAX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RAX] 
AND RAX, 1682634599 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDX] 
INC RCX 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -71 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -49 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], -105 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CMPXCHG AL, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, CL 
XADD RDX, RDX 
TEST DI, 18490 
MOVSX EBX, CL 
MOV RAX, RDX 
XOR RSI, RBX 
SBB BX, -58 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVNS BX, DI 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 56 
SBB EBX, 35 
CMOVNL RBX, RBX 
XOR DIL, AL 
SETNS AL 
SETNL AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 80 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
OR DL, CL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
MUL DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
SBB BX, -39 
SBB DL, -62 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], BX 
ADC RDX, 88 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
