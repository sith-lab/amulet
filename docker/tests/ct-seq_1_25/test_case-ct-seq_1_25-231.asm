.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
LEA RDI, qword ptr [RDX] 
ADD DIL, -123 
SUB EAX, 102885157 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 22 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
BSWAP RDI 
ADD SIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
INC BX 
CMP SI, DX 
CMOVNP EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RBX] 
CMOVB EBX, ESI 
ADD SIL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
ADD ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], -128 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 46 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
