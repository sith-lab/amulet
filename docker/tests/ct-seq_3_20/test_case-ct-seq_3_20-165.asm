.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 112877847 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -79 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
SUB SI, -4 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 76 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RAX] 
MUL RSI 
IMUL RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -53 
CLC  
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
