.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -64 
NEG EBX 
SBB EAX, -1427660382 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EBX 
IMUL SI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 70 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB CL, BL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDX] 
ADD DIL, -86 # instrumentation
ADC EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 109 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 23 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 3 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RSI] 
ADD RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
