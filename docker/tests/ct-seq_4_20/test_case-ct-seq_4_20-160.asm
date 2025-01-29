.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
SUB RAX, 628048297 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 89 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -17 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
CMP AX, -11400 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -128 # instrumentation
ADC AX, -5272 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -32 
CMOVNLE CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
CMP AL, -86 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
