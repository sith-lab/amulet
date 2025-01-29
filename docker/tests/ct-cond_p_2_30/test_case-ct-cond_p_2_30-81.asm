.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
SBB RAX, -2035162626 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
CMC  
SBB DIL, -126 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 88 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
INC DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
SAHF  
ADD EAX, 440996807 
CMOVNP RAX, RCX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DIL 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
MOV BL, 115 
MUL DX 
MOV SI, 257 
ADC ECX, ECX 
NEG CX 
AND RDI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDI] 
CMP DL, BL 
ADD RBX, RDI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
ADD DIL, 14 # instrumentation
CMOVNO ECX, EDI 
CMOVLE EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
