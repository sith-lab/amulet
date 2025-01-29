.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
SBB DI, DI 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RSI 
ADD RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
ADC EDI, -91 
MOV EDI, -982834238 
AND RDI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 83 # instrumentation
ADC RAX, 1580732480 
ADD DI, AX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -43 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RAX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -16 # instrumentation
CMC  
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 64 
CMP BX, -88 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
