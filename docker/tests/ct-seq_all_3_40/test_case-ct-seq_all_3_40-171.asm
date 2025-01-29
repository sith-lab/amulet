.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RCX 
ADD RBX, RAX 
SUB CX, 39 
XADD RDX, RAX 
SUB AL, -61 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -122 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
CLC  
CMP CL, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 50 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -83 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST EAX, -1384858605 
MOVZX EBX, AL 
SETNLE CL 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
TEST RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -84 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], 124 
SETZ DL 
JMP .bb_main.2 
.bb_main.2:
OR AL, -21 
XOR AX, -831 
SETNZ DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDX] 
SUB EAX, 403839102 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
TEST EDI, 1723645993 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
XOR EAX, -29 
CMPXCHG DI, SI 
SETP DL 
SETNZ AL 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
