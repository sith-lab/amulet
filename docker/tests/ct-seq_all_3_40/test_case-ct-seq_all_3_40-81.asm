.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -116 # instrumentation
CMOVNS RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -97 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
MOVSX EDI, SIL 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDI] 
XADD CL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EDX 
MUL CL 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], AL 
SUB AL, AL 
ADD EAX, 249926297 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -77 # instrumentation
SBB AL, -101 
XOR SIL, -85 
TEST RAX, 419514554 
ADC DX, DX 
MOVSX BX, DL 
XOR SI, CX 
MOVZX SI, SIL 
SETZ DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
MOVZX ECX, AX 
CMP DIL, 74 
CMOVO SI, SI 
IMUL BX, DI, 105 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RCX] 
OR DL, CL 
AND BL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMOVNLE BX, SI 
TEST RCX, 1969687834 
CMOVZ BX, BX 
MOV DL, 27 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
