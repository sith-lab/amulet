.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], CX 
CMOVNLE RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 36 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
ADC RDX, RAX 
MUL BL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
NEG EBX 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
MOV EAX, ECX 
ADD EAX, 1877070439 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
ADD DIL, 38 # instrumentation
CWDE  
SBB CX, 75 
MOVSX DX, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
MUL SI 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
CMP CX, BX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 122 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 103 # instrumentation
XCHG BL, CL 
CMOVNLE RBX, RAX 
CMP SIL, -113 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 2 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
