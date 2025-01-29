.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -106 # instrumentation
CMOVNBE BX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
ADD EAX, -371805296 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 4 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], CL 
CMOVNB RSI, RSI 
IMUL DIL 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
OR CL, 30 
SBB AL, -126 
XOR AX, CX 
SUB AL, 84 
IMUL EDI, ECX 
TEST AX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], 53 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
SETP DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -20 
CMOVNL ESI, EDI 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -127 # instrumentation
MOVZX ESI, AX 
MOVZX BX, DL 
SBB AL, -2 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
NOP  
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDI 
SETNO DIL 
SUB AX, -14244 
CMOVLE RDI, RDX 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -112 # instrumentation
MOV RBX, 6400068610462992684 
MOVZX ESI, DX 
CMOVNO EBX, EDI 
CMPXCHG BL, DL 
AND AL, 50 
XOR RCX, 105 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
