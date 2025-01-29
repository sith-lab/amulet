.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 89 # instrumentation
SETP BL 
SETNS SIL 
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
CMOVB SI, DI 
CMC  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
XCHG BX, AX 
STC  
CMPXCHG RSI, RSI 
CMP CX, -53 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], -49 
SUB EAX, 422991828 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RCX] 
SUB AL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -99 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
SBB EAX, -413922473 
SETBE DL 
CMP EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 83 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EAX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD CL, BL 
IMUL RBX, RCX, 28 
ADD SIL, 106 # instrumentation
CMOVNBE EDI, EAX 
CMOVLE ESI, EAX 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RAX] 
TEST DIL, -14 
OR SIL, 56 
AND DX, BX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], BL 
TEST SI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
MOV EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
