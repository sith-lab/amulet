.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDI] 
SBB ECX, 43 
MOV AL, 84 
CMP AL, -19 
XADD CL, AL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -28363 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
CMPXCHG DL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], SIL 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -16 
AND EBX, 53 
SBB BX, 49 
CMOVBE EBX, EAX 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP RDI, -105 
CMOVL RSI, RDX 
CMPXCHG AL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 2 
SBB CX, CX 
TEST BL, SIL 
SBB EAX, -1778107144 
NEG BL 
CMP EAX, 94 
ADC AL, -80 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -111 # instrumentation
SETP CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND EBX, ECX 
MOVSX RBX, AX 
CMOVL RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
MOV EBX, 347107358 
CMOVP EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RCX 
CMOVNO BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
