.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DL, 100 
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -46 
ADD DIL, 122 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
MOV RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
CMOVNO EAX, EDX 
ADC SIL, 35 
CMP BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -93 
AND RAX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RAX] 
SBB AL, -113 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 71 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
ADD DIL, 16 # instrumentation
ADC AL, -81 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
CMP AL, 51 
MOV BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
