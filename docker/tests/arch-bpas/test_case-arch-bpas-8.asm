.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 92 
NEG AX 
CMOVBE EDI, ECX 
SBB RAX, 2002748412 
AND RDX, -61 
CMOVNL RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
SETNO BL 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
ADD AL, AL 
TEST RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RBX] 
ADC RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
SBB AL, CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
TEST EAX, -883377106 
SETS AL 
ADD RDX, 17 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
SETS AL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -98 
MOVZX AX, DL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
ADD DIL, -125 # instrumentation
SBB AL, 62 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDX] 
TEST RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RDX] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
TEST AL, -116 
XOR AX, DI 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], DI 
BSWAP RDX 
IMUL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
