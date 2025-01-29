.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDX 
SUB EBX, -122 
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -15 
CMOVNLE EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 10 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
IMUL BL 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -4 
ADD DIL, -119 # instrumentation
CMOVO RSI, RDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -36 
ADD EAX, 1416396109 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -79 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
