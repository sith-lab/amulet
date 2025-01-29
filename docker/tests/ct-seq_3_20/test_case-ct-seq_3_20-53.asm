.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
NEG CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 114 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -106 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
CMC  
XCHG BL, DIL 
ADD SIL, 80 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], CX 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDX] 
CMP DI, 9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
