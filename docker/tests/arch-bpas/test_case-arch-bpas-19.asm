.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 39 # instrumentation
SETNZ AL 
XOR RDX, RSI 
SETNS BL 
CMOVNLE RDX, RDX 
SBB RAX, -610930188 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
JMP .bb_main.1 
.bb_main.1:
OR RAX, -83 
SBB SIL, 38 
ADD RCX, RBX 
CMOVNZ SI, CX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EDX 
MUL BL 
ADD DIL, -34 # instrumentation
CMOVZ CX, CX 
CMOVNL DI, DX 
TEST DL, SIL 
SETZ AL 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 91 
MUL AX 
CMPXCHG DL, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RCX 
OR AL, -102 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDX] 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], SI 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], SIL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XADD RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
XOR DIL, 106 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -114 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDX] 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -73 # instrumentation
SETS SIL 
XADD AL, DL 
ADD AL, -68 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
XOR RAX, -964277270 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
