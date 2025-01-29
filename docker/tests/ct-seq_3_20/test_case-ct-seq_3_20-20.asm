.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -127 # instrumentation
ADC EAX, -2128660944 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
CMOVBE SI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -116 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
XCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 81 
MOVZX RDX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 19 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RCX 
ADC EDX, 111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
