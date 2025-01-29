.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -13 # instrumentation
XCHG DX, AX 
CMOVL CX, DX 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
DEC ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 41 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
ADD CX, -92 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -21 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -102 
LEA RBX, qword ptr [RBX + RDX + 54157] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
