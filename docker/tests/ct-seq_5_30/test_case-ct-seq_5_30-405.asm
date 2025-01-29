.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, -102 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 635542424 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CMOVP RDX, RBX 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 122 # instrumentation
CMOVNP EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
SUB RDX, -41 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -85 # instrumentation
CMOVNB EAX, ECX 
CMOVS RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
ADD DIL, 44 # instrumentation
SBB DL, DL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
ADC DX, BX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -37 
CMOVNL ESI, EDI 
ADD DIL, -127 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
CMOVNLE EAX, ECX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
INC RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -74 
CMOVNO EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
CMP DIL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
CMP EDI, -100 
INC AX 
ADD SI, -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
