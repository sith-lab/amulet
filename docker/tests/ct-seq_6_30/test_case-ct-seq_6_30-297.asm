.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RBX 
ADD EBX, -101 
CMOVBE DI, AX 
SBB RCX, 83 
JNL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
SUB DL, 38 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
IMUL EBX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RBX] 
ADD SIL, -30 # instrumentation
CMOVBE RBX, RCX 
JMP .bb_main.2 
.bb_main.2:
ADD ESI, EDI 
BSWAP ECX 
ADC BL, 8 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
CWD  
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDX] 
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RCX 
CMOVNS EBX, ESI 
CMOVP SI, BX 
MUL AL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
STC  
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -62 # instrumentation
CMOVNZ ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
