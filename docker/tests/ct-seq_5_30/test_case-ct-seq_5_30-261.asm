.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC CL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
ADD DIL, 51 # instrumentation
CBW  
MOV RAX, RCX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -14 
AND RAX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
JO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
SBB ESI, -110 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], SI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDX] 
ADD DIL, -65 # instrumentation
SBB EAX, ECX 
MOVSX RDX, DI 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
SUB SI, DI 
CMP RAX, 1400470799 
STD  
LEA EDI, qword ptr [RSI + RDI] 
ADD EAX, 737950574 
SUB DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -41 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
ADC ESI, EDI 
CMOVNP SI, DI 
CMOVNP EDI, ESI 
CMP BL, -71 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
