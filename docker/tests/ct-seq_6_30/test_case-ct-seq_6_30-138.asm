.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RDX] 
CMP DIL, -127 
NEG RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD BX, 119 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
SUB AX, -25 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
ADD SIL, -96 # instrumentation
CMOVNP ECX, EDI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -64 # instrumentation
CMOVNP EDI, EBX 
CMP DIL, 43 
JNBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
IMUL CL 
LEA RBX, qword ptr [RDI + RSI] 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX SI, SIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDX] 
CMOVLE RDI, RSI 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 54 # instrumentation
CMOVLE DI, BX 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RAX 
CMOVNLE RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
CMOVS RBX, RSI 
CMP DI, 32 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
