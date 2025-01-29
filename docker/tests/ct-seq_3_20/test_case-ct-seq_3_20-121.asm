.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
SUB RSI, -102 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 29 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CMOVNBE AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
MUL DIL 
ADC AX, -24207 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX] 
ADD EAX, -1634719149 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 124 
IMUL EBX, ECX, 65 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
