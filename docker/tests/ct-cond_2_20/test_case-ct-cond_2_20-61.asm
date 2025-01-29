.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -77 # instrumentation
ADC EAX, ECX 
CMOVNO DI, SI 
ADC RDI, 14 
OR DX, 1 # instrumentation
CMOVNB RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
SBB CL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 64 
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
CMP AX, 10779 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
MOV BL, 52 
DEC RAX 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -75 
MOV AL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
