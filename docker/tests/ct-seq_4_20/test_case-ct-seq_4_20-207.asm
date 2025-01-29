.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 94 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 23 # instrumentation
CMOVP ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -38 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
INC CL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -20 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
