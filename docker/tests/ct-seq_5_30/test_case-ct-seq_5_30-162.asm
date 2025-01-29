.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 313196794 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -29 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], SIL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 80 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX], 114 
ADD DX, -23 
IMUL DI 
ADC CL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -84 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
SBB RSI, RDX 
SUB BL, -118 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 2 
ADC AL, 69 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RSI 
SUB DIL, -70 
AND RAX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RAX] 
MOVSX RCX, SI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
STC  
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RCX, RAX 
MOVSX ESI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
