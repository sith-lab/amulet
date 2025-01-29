.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDX] 
MUL AX 
ADD SIL, -79 # instrumentation
CMOVZ RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
ADC DIL, 19 
SBB CX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 26 
CMOVNL EDX, ESI 
CMOVNS BX, AX 
XOR EAX, -919396856 
CMOVNL EBX, EDI 
SBB RAX, RCX 
TEST DL, BL 
ADD EAX, 722782361 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDX] 
SETNO BL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], CX 
CMOVNS RCX, RCX 
CMOVL ECX, EDX 
SUB AL, 22 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -95 
DEC DL 
SETNLE DL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -63 # instrumentation
CMOVLE EBX, ESI 
ADC ESI, EAX 
SETNP AL 
CMOVB EDX, EBX 
MOV CX, 26788 
CMOVNS RCX, RSI 
CLC  
CMOVNB SI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], DI 
SUB ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 117 
TEST CL, -103 
SBB EAX, -432236502 
XCHG EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
