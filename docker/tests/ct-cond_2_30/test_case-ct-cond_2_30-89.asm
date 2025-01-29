.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 115 # instrumentation
CMOVLE RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 11 
SUB EAX, -1665115121 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
NEG EAX 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
SBB DIL, 109 
MOVSX SI, BL 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 10 
CMP CL, 56 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADC ECX, EDX 
CMOVP EDX, EAX 
SUB EAX, -1907760841 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
IMUL RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 81 
IMUL DIL 
SUB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
CMOVZ AX, CX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
