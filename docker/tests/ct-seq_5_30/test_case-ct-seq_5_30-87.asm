.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -44 
ADD DIL, 61 # instrumentation
LAHF  
IMUL AX 
ADD DIL, -41 # instrumentation
CMOVBE RDI, RBX 
DEC AL 
JMP .bb_main.1 
.bb_main.1:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 52 
INC DL 
ADC AX, -463 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD AL, AL 
CMOVB EDX, ESI 
MOVZX RDX, BX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -84 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -125 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB CL, AL 
SUB EAX, 2099675884 
CMP SIL, -42 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -68 
CMOVNO EBX, EDX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
SBB CX, -97 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 103 
AND RDI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -90 
CMOVP RBX, RBX 
SBB EAX, 1226910351 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
