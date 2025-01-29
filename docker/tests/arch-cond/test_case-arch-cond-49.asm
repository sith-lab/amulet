.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
IMUL EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EBX 
AND RAX, -1852111582 
TEST RAX, 652867871 
IMUL CX, DI 
ADD SIL, -126 # instrumentation
SETNS DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
OR RBX, -75 
ADC CL, CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RBX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -93 # instrumentation
SBB DL, 117 
IMUL SI, BX 
XOR AX, -108 
SETS DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], 110 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 54 
MUL DI 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -13 # instrumentation
SBB SI, 108 
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
CMOVNS SI, SI 
CMPXCHG AX, AX 
IMUL SIL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -100 
XADD SIL, AL 
ADC AX, 2221 
SBB CL, 76 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
SETNZ CL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
XOR ESI, ECX 
TEST RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
