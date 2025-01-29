.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -66 # instrumentation
ADC AL, -106 
CMOVO DI, AX 
ADC DIL, -37 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDI 
CBW  
ADC DL, BL 
CMOVNP SI, DI 
AND RBX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
SBB SIL, -68 
AND RDI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 118 
CMP BL, -53 
MOV CL, CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RCX 
LAHF  
ADC EAX, 73 
NEG EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 84 
CMOVO RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
