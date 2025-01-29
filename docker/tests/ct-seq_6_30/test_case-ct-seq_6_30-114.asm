.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -72 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 127 
JNS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -97 
CMOVNS BX, BX 
CMOVNB CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 81 # instrumentation
SBB RDX, RCX 
XCHG EDX, ECX 
CLD  
CMOVNB RBX, RDX 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
ADC RAX, 40 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
ADD DIL, -85 # instrumentation
CMOVP RDI, RCX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DL, AL 
CMP RSI, 118 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
SUB AX, 18611 
ADD RCX, 40 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
CMOVNO RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 75 # instrumentation
CMOVNZ SI, CX 
CMOVNP EAX, EBX 
SUB DX, -61 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
