.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX], -7 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI], 69 
IMUL ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 24 # instrumentation
ADC EAX, 52 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
MUL DX 
ADD SIL, 113 # instrumentation
CMOVBE RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
