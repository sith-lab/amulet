.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 1 # instrumentation
CMOVL CX, CX 
CMOVNLE EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ECX 
ADC BL, BL 
CMOVP RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RDX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDX] 
IMUL RDX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDI] 
MUL EDX 
MOVSX EDI, DL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
CMP ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
ADC AX, -25756 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
SBB EAX, 2100520047 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -7 
ADD ECX, EDX 
SBB DX, BX 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
IMUL DI, AX, -23 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
MUL RAX 
ADD SIL, 90 # instrumentation
CMOVNBE ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
