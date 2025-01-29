.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 691107124 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
OR SI, SI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
MOV AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 35 
CMOVP CX, CX 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RBX 
ADD AX, -10925 
XADD AL, BL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 68 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
SETS AL 
SETB DL 
ADC EAX, 94809623 
CMOVNZ RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 53 
CMOVNBE RDI, RAX 
LEA AX, qword ptr [RSI + RDX + 19179] 
AND RCX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RCX] 
CMP ESI, EBX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -70 # instrumentation
CMOVNO EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -75 
AND CX, 110 
XOR RAX, 1322069074 
CLD  
AND RDX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RAX] 
MUL RDX 
ADC DL, DL 
AND EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
