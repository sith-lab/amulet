.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EBX 
CMP DIL, -114 
CMOVB RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, -44 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -126 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
SBB EAX, EDX 
CMOVNP DX, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
SAHF  
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
CMP RSI, RBX 
MOV SI, -1084 
IMUL ESI, ECX, 25 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
MOVSX RCX, BX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX], -22 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
MOV CX, -19068 
CMOVNZ DX, CX 
IMUL CL 
IMUL DL 
IMUL DX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
ADD RAX, -29 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
