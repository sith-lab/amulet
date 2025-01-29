.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -118 # instrumentation
CMOVNB RDI, RBX 
SETNB CL 
CMOVNZ ECX, EBX 
CMOVL RAX, RCX 
SUB AL, BL 
NOT RDI 
CMP SIL, DL 
MOVSX ECX, CL 
CMPXCHG EBX, EDX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
CMP SI, DI 
SETNZ DL 
TEST AX, 11001 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -4 # instrumentation
ADC EAX, -97009880 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
CLD  
AND ESI, EBX 
ADC BL, 51 
MOV EBX, 1854508328 
CMOVLE BX, AX 
IMUL SI 
ADD DIL, 92 # instrumentation
SETBE BL 
MOV SI, DX 
SETLE AL 
CMOVS EDI, EDI 
NOT CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDX] 
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
XOR AX, -14384 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -17157 
XOR DL, -65 
CMPXCHG ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
