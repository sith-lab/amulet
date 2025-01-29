.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RDX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDX] 
XCHG ESI, EBX 
SUB DI, 26 
SETNB DL 
INC DL 
ADD DL, CL 
SETL AL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -2 
TEST EAX, EAX 
INC DL 
AND AL, DIL 
CMOVNS EDI, ESI 
AND EAX, -851340500 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -99 # instrumentation
SBB AL, -3 
MUL CL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 70 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
SETNBE DL 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
SETS AL 
CMOVNLE ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDI] 
TEST EDI, 376505194 
CMPXCHG SI, CX 
NOT DIL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
TEST AL, -117 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], -109 
MOVZX BX, DIL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
SBB EAX, 1610789861 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
NOT EBX 
INC AL 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
TEST AL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
