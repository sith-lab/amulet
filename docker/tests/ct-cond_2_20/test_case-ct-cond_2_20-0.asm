.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 57 # instrumentation
CMOVNBE EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 9 
ADD AX, 18558 
AND RDI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -68 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -74 
SUB AX, 23404 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 126 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
CMP RDI, 65 
MOVSX EBX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -112 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
