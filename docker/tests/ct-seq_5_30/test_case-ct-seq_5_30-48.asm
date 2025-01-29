.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
CMOVNZ RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
CMOVNB RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
ADC AX, -27862 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RAX 
CMOVP EAX, ECX 
INC BL 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 119 
CMOVNB SI, CX 
MOVSX DI, AL 
IMUL RSI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
SUB RAX, 1020100311 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
SUB DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
MUL DL 
ADD SIL, -127 # instrumentation
CMOVO SI, AX 
CMOVNP RDI, RBX 
NEG SIL 
CMOVS RCX, RDI 
SUB DI, 44 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
CMP DL, 107 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 109 # instrumentation
SBB AL, 34 
SBB RBX, 80 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
