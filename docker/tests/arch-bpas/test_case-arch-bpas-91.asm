.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
CMPXCHG BL, AL 
TEST BX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
SETNO AL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -66 # instrumentation
ADC AL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RAX] 
ADD SIL, -76 # instrumentation
CMOVZ RDI, RSI 
MOV DL, BL 
SBB RAX, -945283880 
ADD RAX, 1121411050 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 37 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -5116 
MOVSX RDX, BX 
CMP RAX, 1190512381 
SUB AX, -2769 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EAX 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 123 # instrumentation
SBB ESI, 46 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], CX 
NEG EDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX], 74 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
CMOVNBE RBX, RCX 
SETNL CL 
CMP AL, AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX], 20 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 83 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX EAX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
MOV ECX, EBX 
XOR DIL, -5 
CMOVNZ RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
CMP EBX, -5 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
MOV DL, -41 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -127 
TEST RAX, 2071880879 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
