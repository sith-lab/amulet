.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND CL, -43 
MOV RSI, RDI 
OR RAX, 1883137943 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDX] 
XOR RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
CMOVNP EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -96 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
TEST RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], SIL 
SETB CL 
AND EDX, 114 
IMUL EDX 
ADD SIL, -32 # instrumentation
XCHG DX, CX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
CMOVNL RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -12 
AND RDX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDX] 
DEC RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
TEST AX, 2180 
OR EDX, 1 # instrumentation
SUB RSI, RDX 
MUL ECX 
JMP .bb_main.2 
.bb_main.2:
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDX 
CMP RSI, RDI 
MOV CX, 26575 
MUL CX 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], CX 
XOR BL, 67 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
CMPXCHG ESI, EDX 
INC BX 
CMOVNO DI, DI 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
CMOVNLE DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
