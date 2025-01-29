.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 50 # instrumentation
MOV SIL, BL 
ADC RCX, RCX 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 117 
ADC CL, -16 
ADC EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RCX] 
CMOVNL RBX, RDX 
XOR CL, CL 
XOR EBX, -8 
XOR AL, AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
ADD SIL, 86 # instrumentation
SETB CL 
TEST AX, 3396 
XOR DL, -90 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -113 
XOR AL, -112 
SETNP CL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], SIL 
XADD DI, SI 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
SBB BX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
MOV DL, DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
TEST EAX, 615708078 
ADD SI, DX 
ADC BX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 110 
ADC AX, 19120 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -94 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
XCHG DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
TEST AX, -18172 
IMUL CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
