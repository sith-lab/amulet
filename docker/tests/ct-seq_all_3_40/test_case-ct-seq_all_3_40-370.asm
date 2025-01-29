.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT SI 
OR EAX, EBX 
OR DX, 1 # instrumentation
ADC DI, DX 
CMOVNL BX, SI 
INC DL 
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
CMOVNZ DX, DX 
OR EBX, -89 
TEST EAX, -1166070171 
NOP  
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -805785307 
CMOVLE RCX, RSI 
SUB BX, -73 
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RCX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], -89 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
CMOVNB EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
ADD SIL, -104 # instrumentation
SETZ AL 
AND RBX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RBX] 
MOVSX DX, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 87 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
SETL DL 
TEST RBX, -2064942214 
MUL BL 
CMP AL, -91 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
IMUL ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
SETO CL 
NOT RAX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
