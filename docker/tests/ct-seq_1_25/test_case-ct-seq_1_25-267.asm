.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
INC DI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -40 
CMOVBE RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -113 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -118 
ADC DL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
SBB DIL, 91 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 7 
MUL EBX 
ADD SIL, -67 # instrumentation
CMOVZ EDI, ESI 
SUB EAX, 140822298 
CMOVS DI, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 51 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
