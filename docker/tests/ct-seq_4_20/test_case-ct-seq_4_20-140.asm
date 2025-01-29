.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD CL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
SBB SIL, 113 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RAX] 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
ADD CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MUL RDX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
CMP DI, CX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], 82 
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
ADD SIL, 19 # instrumentation
CMOVNZ RDX, RAX 
CMOVBE BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
