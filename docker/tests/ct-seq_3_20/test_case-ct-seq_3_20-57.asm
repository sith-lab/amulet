.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
CMOVBE SI, DI 
SBB EBX, -117 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
XCHG AL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 14 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 57 
AND RAX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -31 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDI 
ADD RAX, -897710848 
NEG EDX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -4 # instrumentation
CMOVO BX, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 87 
SUB BX, -73 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
ADD EAX, 508836202 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
