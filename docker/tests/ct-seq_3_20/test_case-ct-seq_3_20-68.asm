.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
CMP DIL, 26 
ADC RBX, -7 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 35 
AND RBX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 67 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
ADC DIL, -25 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -20374293 
IMUL RAX, RCX, 22 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], 27 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 48 
IMUL EBX, EAX, 72 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
NEG BL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
