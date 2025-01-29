.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
CMOVB ESI, EAX 
ADD EAX, EAX 
CMP ESI, -17 
AND RSI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RSI] 
MOVSX EDX, CL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDI] 
CMP RAX, -1075360861 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], -82 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
