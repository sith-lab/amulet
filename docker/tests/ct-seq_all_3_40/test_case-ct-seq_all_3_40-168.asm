.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], DI 
CMP AL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 91 
AND RDI, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], ECX 
ADC RAX, 1505608731 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -103 
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
XCHG DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -77 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], BX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -99 # instrumentation
SETNP DL 
OR SIL, BL 
IMUL CX, AX, -67 
SBB AL, -24 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
MOV RDI, RBX 
DEC DIL 
AND SIL, -94 
CMP AX, -7755 
CMOVNO DX, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 29 # instrumentation
CMOVLE ECX, ECX 
XCHG RCX, RAX 
SUB AL, -81 
MUL EDI 
ADD EAX, -539521694 
BSWAP RAX 
XOR EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
