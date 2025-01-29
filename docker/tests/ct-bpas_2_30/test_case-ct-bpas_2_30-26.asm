.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDI, RDX 
DEC AX 
SBB RAX, 954161689 
XCHG DX, AX 
CMP RDI, RAX 
CMOVP SI, BX 
CMP RCX, RBX 
SBB AL, 21 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
IMUL RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
MOVSX AX, DL 
IMUL RAX, RSI, 71 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 126 # instrumentation
ADC SIL, DL 
CMOVZ EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 124 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
CMOVNLE ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -60 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 2057546059 
SBB ECX, -95 
NEG EDX 
SUB AX, -1684 
SUB DL, 71 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
