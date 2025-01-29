.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 39 # instrumentation
SBB AL, 15 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
NEG EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDX] 
MUL BL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 126 # instrumentation
ADC EAX, -16 
SUB EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
