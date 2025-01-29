.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -15 # instrumentation
ADC AX, 21108 
STC  
ADC AX, DX 
MOV RAX, -3022589946274051441 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -36 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 125 # instrumentation
CMOVL RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -24 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MUL DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -26 
XCHG ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
ADD AL, -127 
CMOVNB DI, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
CMOVBE EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
CMOVS RBX, RBX 
CMOVB RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 43 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
NEG SI 
ADD BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
