.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -2 # instrumentation
ADC EBX, -16 
STC  
IMUL CX, DX, -73 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -54 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -123 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
ADD EDI, ECX 
MOVSX RDI, BX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -33 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 112 
CMOVS ECX, EBX 
ADC RCX, -95 
ADD AX, 25146 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -65 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
