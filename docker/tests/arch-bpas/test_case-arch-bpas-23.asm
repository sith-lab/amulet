.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -115 
XOR AX, -11 
SETNP CL 
MOV EBX, EBX 
CMPXCHG DL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
CMP AX, CX 
CMOVP ESI, EDI 
XOR RAX, -62 
MOVSX DI, CL 
XOR EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], 71 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ECX 
CMOVNS ECX, ESI 
CMOVZ EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 30 
SETNS AL 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RAX] 
TEST DIL, CL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL DX, DI, 120 
OR RBX, 60 
MOV ESI, 870324085 
MUL ESI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
SETO DL 
CMOVNL RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
CMOVNO EAX, EDI 
CMP AL, -111 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -65 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
SBB AL, 56 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
