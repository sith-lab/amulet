.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 120 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
ADD SIL, 127 # instrumentation
CMOVNBE EAX, EDX 
CMOVNS CX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX], 124 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -109 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
MOV EBX, ECX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
