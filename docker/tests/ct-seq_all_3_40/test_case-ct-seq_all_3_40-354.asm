.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -28 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
CMP RDX, 68 
LEA BX, qword ptr [RAX + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND CX, BX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], DL 
XOR DL, AL 
SUB DL, -81 
SBB ESI, 84 
TEST ESI, -1555017652 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 6 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
SUB ESI, 76 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
LEA EDI, qword ptr [RDI + RCX + 25010] 
XCHG DI, SI 
SBB AL, 101 
AND SIL, -117 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
TEST DX, AX 
MOVZX EDX, CL 
BSWAP ESI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
OR CX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RAX, 580238835 
CMP AL, SIL 
ADD RAX, 163943322 
MOV AL, DL 
XOR DL, SIL 
ADC AX, 28600 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
ADD RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 73 
XOR EAX, 121 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
