.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -100 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -88 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 113 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX], 114 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
SUB AL, CL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1083420780 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -100 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 119 
AND RCX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 117 
AND RDI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
