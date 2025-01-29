.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
JNB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 1590 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
CMOVNBE RCX, RCX 
DEC ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 22 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -31 # instrumentation
CWD  
CMOVNLE SI, SI 
SUB DL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 99 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
ADD DIL, -52 # instrumentation
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
IMUL CL 
NEG CL 
CMOVL SI, DI 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -109 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB RAX, 34 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
NEG ECX 
XCHG RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
