.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DI, 3586 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
CMP CL, CL 
CMP RDX, -35 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
ADD SIL, 117 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], 94 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -104 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
BSWAP RCX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 70 
AND RAX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RAX] 
CMOVL DI, DX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
CMOVS DI, SI 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
