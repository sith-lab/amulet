.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ESI 
DEC BL 
MOV EAX, -979797218 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -24 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
CMOVNO BX, CX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -68 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
ADD DIL, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], CX 
IMUL CX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 63 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
